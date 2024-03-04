package io.grpc.xds.shaded.io.envoyproxy.envoy.type.http.v3;

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
import com.google.protobuf.o1;
import com.google.protobuf.p;
import com.google.protobuf.q2;
import com.google.protobuf.r1;
import com.google.protobuf.u0;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Objects;
/* loaded from: classes6.dex */
public final class PathTransformation extends GeneratedMessageV3 implements io.grpc.xds.shaded.io.envoyproxy.envoy.type.http.v3.a {
    public static final int OPERATIONS_FIELD_NUMBER = 1;
    private static final long serialVersionUID = 0;
    private byte memoizedIsInitialized;
    private List<Operation> operations_;
    private static final PathTransformation DEFAULT_INSTANCE = new PathTransformation();
    private static final e2<PathTransformation> PARSER = new a();

    /* loaded from: classes6.dex */
    public static final class Operation extends GeneratedMessageV3 implements d {
        public static final int MERGE_SLASHES_FIELD_NUMBER = 3;
        public static final int NORMALIZE_PATH_RFC_3986_FIELD_NUMBER = 2;
        private static final long serialVersionUID = 0;
        private byte memoizedIsInitialized;
        private int operationSpecifierCase_;
        private Object operationSpecifier_;
        private static final Operation DEFAULT_INSTANCE = new Operation();
        private static final e2<Operation> PARSER = new a();

        /* loaded from: classes6.dex */
        public static final class MergeSlashes extends GeneratedMessageV3 implements c {
            private static final MergeSlashes DEFAULT_INSTANCE = new MergeSlashes();
            private static final e2<MergeSlashes> PARSER = new a();
            private static final long serialVersionUID = 0;
            private byte memoizedIsInitialized;

            /* loaded from: classes6.dex */
            class a extends com.google.protobuf.c<MergeSlashes> {
                a() {
                }

                @Override // com.google.protobuf.e2
                /* renamed from: G */
                public MergeSlashes m(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
                    return new MergeSlashes(pVar, f0Var, null);
                }
            }

            /* loaded from: classes6.dex */
            public static final class b extends GeneratedMessageV3.b<b> implements c {
                /* synthetic */ b(GeneratedMessageV3.c cVar, a aVar) {
                    this(cVar);
                }

                private void b0() {
                    boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
                }

                @Override // com.google.protobuf.GeneratedMessageV3.b
                protected GeneratedMessageV3.e K() {
                    return io.grpc.xds.shaded.io.envoyproxy.envoy.type.http.v3.b.f50257h.d(MergeSlashes.class, b.class);
                }

                @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
                /* renamed from: W */
                public b L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                    return (b) super.L(fieldDescriptor, obj);
                }

                @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
                /* renamed from: X */
                public MergeSlashes build() {
                    MergeSlashes I = I();
                    if (I.isInitialized()) {
                        return I;
                    }
                    throw a.AbstractC0142a.A(I);
                }

                @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
                /* renamed from: Y */
                public MergeSlashes I() {
                    MergeSlashes mergeSlashes = new MergeSlashes(this, (a) null);
                    Q();
                    return mergeSlashes;
                }

                @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
                /* renamed from: Z */
                public b n() {
                    return (b) super.n();
                }

                @Override // com.google.protobuf.p1, com.google.protobuf.r1
                /* renamed from: a0 */
                public MergeSlashes getDefaultInstanceForType() {
                    return MergeSlashes.getDefaultInstance();
                }

                /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
                @Override // com.google.protobuf.a.AbstractC0142a
                /* renamed from: d0 */
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                    To view partially-correct add '--show-bad-code' argument
                */
                public io.grpc.xds.shaded.io.envoyproxy.envoy.type.http.v3.PathTransformation.Operation.MergeSlashes.b u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
                    /*
                        r2 = this;
                        r0 = 0
                        com.google.protobuf.e2 r1 = io.grpc.xds.shaded.io.envoyproxy.envoy.type.http.v3.PathTransformation.Operation.MergeSlashes.access$1200()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                        java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                        io.grpc.xds.shaded.io.envoyproxy.envoy.type.http.v3.PathTransformation$Operation$MergeSlashes r3 = (io.grpc.xds.shaded.io.envoyproxy.envoy.type.http.v3.PathTransformation.Operation.MergeSlashes) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
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
                        io.grpc.xds.shaded.io.envoyproxy.envoy.type.http.v3.PathTransformation$Operation$MergeSlashes r4 = (io.grpc.xds.shaded.io.envoyproxy.envoy.type.http.v3.PathTransformation.Operation.MergeSlashes) r4     // Catch: java.lang.Throwable -> L11
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
                    throw new UnsupportedOperationException("Method not decompiled: io.grpc.xds.shaded.io.envoyproxy.envoy.type.http.v3.PathTransformation.Operation.MergeSlashes.b.u(com.google.protobuf.p, com.google.protobuf.f0):io.grpc.xds.shaded.io.envoyproxy.envoy.type.http.v3.PathTransformation$Operation$MergeSlashes$b");
                }

                @Override // com.google.protobuf.a.AbstractC0142a
                /* renamed from: e0 */
                public b v(l1 l1Var) {
                    if (l1Var instanceof MergeSlashes) {
                        return g0((MergeSlashes) l1Var);
                    }
                    super.P0(l1Var);
                    return this;
                }

                public b g0(MergeSlashes mergeSlashes) {
                    if (mergeSlashes == MergeSlashes.getDefaultInstance()) {
                        return this;
                    }
                    z(((GeneratedMessageV3) mergeSlashes).unknownFields);
                    R();
                    return this;
                }

                @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
                public Descriptors.b getDescriptorForType() {
                    return io.grpc.xds.shaded.io.envoyproxy.envoy.type.http.v3.b.f50256g;
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

            /* synthetic */ MergeSlashes(p pVar, f0 f0Var, a aVar) throws InvalidProtocolBufferException {
                this(pVar, f0Var);
            }

            public static MergeSlashes getDefaultInstance() {
                return DEFAULT_INSTANCE;
            }

            public static final Descriptors.b getDescriptor() {
                return io.grpc.xds.shaded.io.envoyproxy.envoy.type.http.v3.b.f50256g;
            }

            public static b newBuilder() {
                return DEFAULT_INSTANCE.toBuilder();
            }

            public static MergeSlashes parseDelimitedFrom(InputStream inputStream) throws IOException {
                return (MergeSlashes) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
            }

            public static MergeSlashes parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
                return PARSER.l(byteBuffer);
            }

            public static e2<MergeSlashes> parser() {
                return PARSER;
            }

            @Override // com.google.protobuf.a
            public boolean equals(Object obj) {
                if (obj == this) {
                    return true;
                }
                if (obj instanceof MergeSlashes) {
                    return this.unknownFields.equals(((MergeSlashes) obj).unknownFields);
                }
                return super.equals(obj);
            }

            @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
            public e2<MergeSlashes> getParserForType() {
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
                return io.grpc.xds.shaded.io.envoyproxy.envoy.type.http.v3.b.f50257h.d(MergeSlashes.class, b.class);
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
                return new MergeSlashes();
            }

            @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
            public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
                this.unknownFields.writeTo(codedOutputStream);
            }

            /* synthetic */ MergeSlashes(GeneratedMessageV3.b bVar, a aVar) {
                this(bVar);
            }

            public static b newBuilder(MergeSlashes mergeSlashes) {
                return DEFAULT_INSTANCE.toBuilder().g0(mergeSlashes);
            }

            public static MergeSlashes parseFrom(ByteBuffer byteBuffer, f0 f0Var) throws InvalidProtocolBufferException {
                return PARSER.f(byteBuffer, f0Var);
            }

            private MergeSlashes(GeneratedMessageV3.b<?> bVar) {
                super(bVar);
                this.memoizedIsInitialized = (byte) -1;
            }

            public static MergeSlashes parseDelimitedFrom(InputStream inputStream, f0 f0Var) throws IOException {
                return (MergeSlashes) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
            }

            public static MergeSlashes parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
                return PARSER.c(byteString);
            }

            @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.p1, com.google.protobuf.r1
            public MergeSlashes getDefaultInstanceForType() {
                return DEFAULT_INSTANCE;
            }

            @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
            public b toBuilder() {
                return this == DEFAULT_INSTANCE ? new b((a) null) : new b((a) null).g0(this);
            }

            public static MergeSlashes parseFrom(ByteString byteString, f0 f0Var) throws InvalidProtocolBufferException {
                return PARSER.b(byteString, f0Var);
            }

            @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
            public b newBuilderForType() {
                return newBuilder();
            }

            private MergeSlashes() {
                this.memoizedIsInitialized = (byte) -1;
            }

            public static MergeSlashes parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
                return PARSER.a(bArr);
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.google.protobuf.GeneratedMessageV3
            public b newBuilderForType(GeneratedMessageV3.c cVar) {
                return new b(cVar, null);
            }

            public static MergeSlashes parseFrom(byte[] bArr, f0 f0Var) throws InvalidProtocolBufferException {
                return PARSER.g(bArr, f0Var);
            }

            private MergeSlashes(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
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

            public static MergeSlashes parseFrom(InputStream inputStream) throws IOException {
                return (MergeSlashes) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
            }

            public static MergeSlashes parseFrom(InputStream inputStream, f0 f0Var) throws IOException {
                return (MergeSlashes) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
            }

            public static MergeSlashes parseFrom(p pVar) throws IOException {
                return (MergeSlashes) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
            }

            public static MergeSlashes parseFrom(p pVar, f0 f0Var) throws IOException {
                return (MergeSlashes) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
            }
        }

        /* loaded from: classes6.dex */
        public static final class NormalizePathRFC3986 extends GeneratedMessageV3 implements d {
            private static final NormalizePathRFC3986 DEFAULT_INSTANCE = new NormalizePathRFC3986();
            private static final e2<NormalizePathRFC3986> PARSER = new a();
            private static final long serialVersionUID = 0;
            private byte memoizedIsInitialized;

            /* loaded from: classes6.dex */
            class a extends com.google.protobuf.c<NormalizePathRFC3986> {
                a() {
                }

                @Override // com.google.protobuf.e2
                /* renamed from: G */
                public NormalizePathRFC3986 m(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
                    return new NormalizePathRFC3986(pVar, f0Var, null);
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
                    return io.grpc.xds.shaded.io.envoyproxy.envoy.type.http.v3.b.f50255f.d(NormalizePathRFC3986.class, b.class);
                }

                @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
                /* renamed from: W */
                public b L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                    return (b) super.L(fieldDescriptor, obj);
                }

                @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
                /* renamed from: X */
                public NormalizePathRFC3986 build() {
                    NormalizePathRFC3986 I = I();
                    if (I.isInitialized()) {
                        return I;
                    }
                    throw a.AbstractC0142a.A(I);
                }

                @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
                /* renamed from: Y */
                public NormalizePathRFC3986 I() {
                    NormalizePathRFC3986 normalizePathRFC3986 = new NormalizePathRFC3986(this, (a) null);
                    Q();
                    return normalizePathRFC3986;
                }

                @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
                /* renamed from: Z */
                public b n() {
                    return (b) super.n();
                }

                @Override // com.google.protobuf.p1, com.google.protobuf.r1
                /* renamed from: a0 */
                public NormalizePathRFC3986 getDefaultInstanceForType() {
                    return NormalizePathRFC3986.getDefaultInstance();
                }

                /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
                @Override // com.google.protobuf.a.AbstractC0142a
                /* renamed from: d0 */
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                    To view partially-correct add '--show-bad-code' argument
                */
                public io.grpc.xds.shaded.io.envoyproxy.envoy.type.http.v3.PathTransformation.Operation.NormalizePathRFC3986.b u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
                    /*
                        r2 = this;
                        r0 = 0
                        com.google.protobuf.e2 r1 = io.grpc.xds.shaded.io.envoyproxy.envoy.type.http.v3.PathTransformation.Operation.NormalizePathRFC3986.access$500()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                        java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                        io.grpc.xds.shaded.io.envoyproxy.envoy.type.http.v3.PathTransformation$Operation$NormalizePathRFC3986 r3 = (io.grpc.xds.shaded.io.envoyproxy.envoy.type.http.v3.PathTransformation.Operation.NormalizePathRFC3986) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
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
                        io.grpc.xds.shaded.io.envoyproxy.envoy.type.http.v3.PathTransformation$Operation$NormalizePathRFC3986 r4 = (io.grpc.xds.shaded.io.envoyproxy.envoy.type.http.v3.PathTransformation.Operation.NormalizePathRFC3986) r4     // Catch: java.lang.Throwable -> L11
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
                    throw new UnsupportedOperationException("Method not decompiled: io.grpc.xds.shaded.io.envoyproxy.envoy.type.http.v3.PathTransformation.Operation.NormalizePathRFC3986.b.u(com.google.protobuf.p, com.google.protobuf.f0):io.grpc.xds.shaded.io.envoyproxy.envoy.type.http.v3.PathTransformation$Operation$NormalizePathRFC3986$b");
                }

                @Override // com.google.protobuf.a.AbstractC0142a
                /* renamed from: e0 */
                public b v(l1 l1Var) {
                    if (l1Var instanceof NormalizePathRFC3986) {
                        return g0((NormalizePathRFC3986) l1Var);
                    }
                    super.P0(l1Var);
                    return this;
                }

                public b g0(NormalizePathRFC3986 normalizePathRFC3986) {
                    if (normalizePathRFC3986 == NormalizePathRFC3986.getDefaultInstance()) {
                        return this;
                    }
                    z(((GeneratedMessageV3) normalizePathRFC3986).unknownFields);
                    R();
                    return this;
                }

                @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
                public Descriptors.b getDescriptorForType() {
                    return io.grpc.xds.shaded.io.envoyproxy.envoy.type.http.v3.b.f50254e;
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

            /* synthetic */ NormalizePathRFC3986(p pVar, f0 f0Var, a aVar) throws InvalidProtocolBufferException {
                this(pVar, f0Var);
            }

            public static NormalizePathRFC3986 getDefaultInstance() {
                return DEFAULT_INSTANCE;
            }

            public static final Descriptors.b getDescriptor() {
                return io.grpc.xds.shaded.io.envoyproxy.envoy.type.http.v3.b.f50254e;
            }

            public static b newBuilder() {
                return DEFAULT_INSTANCE.toBuilder();
            }

            public static NormalizePathRFC3986 parseDelimitedFrom(InputStream inputStream) throws IOException {
                return (NormalizePathRFC3986) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
            }

            public static NormalizePathRFC3986 parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
                return PARSER.l(byteBuffer);
            }

            public static e2<NormalizePathRFC3986> parser() {
                return PARSER;
            }

            @Override // com.google.protobuf.a
            public boolean equals(Object obj) {
                if (obj == this) {
                    return true;
                }
                if (obj instanceof NormalizePathRFC3986) {
                    return this.unknownFields.equals(((NormalizePathRFC3986) obj).unknownFields);
                }
                return super.equals(obj);
            }

            @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
            public e2<NormalizePathRFC3986> getParserForType() {
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
                return io.grpc.xds.shaded.io.envoyproxy.envoy.type.http.v3.b.f50255f.d(NormalizePathRFC3986.class, b.class);
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
                return new NormalizePathRFC3986();
            }

            @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
            public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
                this.unknownFields.writeTo(codedOutputStream);
            }

            /* synthetic */ NormalizePathRFC3986(GeneratedMessageV3.b bVar, a aVar) {
                this(bVar);
            }

            public static b newBuilder(NormalizePathRFC3986 normalizePathRFC3986) {
                return DEFAULT_INSTANCE.toBuilder().g0(normalizePathRFC3986);
            }

            public static NormalizePathRFC3986 parseFrom(ByteBuffer byteBuffer, f0 f0Var) throws InvalidProtocolBufferException {
                return PARSER.f(byteBuffer, f0Var);
            }

            private NormalizePathRFC3986(GeneratedMessageV3.b<?> bVar) {
                super(bVar);
                this.memoizedIsInitialized = (byte) -1;
            }

            public static NormalizePathRFC3986 parseDelimitedFrom(InputStream inputStream, f0 f0Var) throws IOException {
                return (NormalizePathRFC3986) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
            }

            public static NormalizePathRFC3986 parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
                return PARSER.c(byteString);
            }

            @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.p1, com.google.protobuf.r1
            public NormalizePathRFC3986 getDefaultInstanceForType() {
                return DEFAULT_INSTANCE;
            }

            @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
            public b toBuilder() {
                return this == DEFAULT_INSTANCE ? new b((a) null) : new b((a) null).g0(this);
            }

            public static NormalizePathRFC3986 parseFrom(ByteString byteString, f0 f0Var) throws InvalidProtocolBufferException {
                return PARSER.b(byteString, f0Var);
            }

            @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
            public b newBuilderForType() {
                return newBuilder();
            }

            private NormalizePathRFC3986() {
                this.memoizedIsInitialized = (byte) -1;
            }

            public static NormalizePathRFC3986 parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
                return PARSER.a(bArr);
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.google.protobuf.GeneratedMessageV3
            public b newBuilderForType(GeneratedMessageV3.c cVar) {
                return new b(cVar, null);
            }

            public static NormalizePathRFC3986 parseFrom(byte[] bArr, f0 f0Var) throws InvalidProtocolBufferException {
                return PARSER.g(bArr, f0Var);
            }

            private NormalizePathRFC3986(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
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

            public static NormalizePathRFC3986 parseFrom(InputStream inputStream) throws IOException {
                return (NormalizePathRFC3986) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
            }

            public static NormalizePathRFC3986 parseFrom(InputStream inputStream, f0 f0Var) throws IOException {
                return (NormalizePathRFC3986) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
            }

            public static NormalizePathRFC3986 parseFrom(p pVar) throws IOException {
                return (NormalizePathRFC3986) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
            }

            public static NormalizePathRFC3986 parseFrom(p pVar, f0 f0Var) throws IOException {
                return (NormalizePathRFC3986) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
            }
        }

        /* loaded from: classes6.dex */
        public enum OperationSpecifierCase implements u0.c {
            NORMALIZE_PATH_RFC_3986(2),
            MERGE_SLASHES(3),
            OPERATIONSPECIFIER_NOT_SET(0);
            
            private final int value;

            OperationSpecifierCase(int i9) {
                this.value = i9;
            }

            public static OperationSpecifierCase forNumber(int i9) {
                if (i9 != 0) {
                    if (i9 != 2) {
                        if (i9 != 3) {
                            return null;
                        }
                        return MERGE_SLASHES;
                    }
                    return NORMALIZE_PATH_RFC_3986;
                }
                return OPERATIONSPECIFIER_NOT_SET;
            }

            @Override // com.google.protobuf.u0.c
            public int getNumber() {
                return this.value;
            }

            @Deprecated
            public static OperationSpecifierCase valueOf(int i9) {
                return forNumber(i9);
            }
        }

        /* loaded from: classes6.dex */
        class a extends com.google.protobuf.c<Operation> {
            a() {
            }

            @Override // com.google.protobuf.e2
            /* renamed from: G */
            public Operation m(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
                return new Operation(pVar, f0Var, null);
            }
        }

        /* loaded from: classes6.dex */
        public static final class b extends GeneratedMessageV3.b<b> implements d {

            /* renamed from: e  reason: collision with root package name */
            private int f50242e;

            /* renamed from: f  reason: collision with root package name */
            private Object f50243f;

            /* renamed from: g  reason: collision with root package name */
            private q2<NormalizePathRFC3986, NormalizePathRFC3986.b, d> f50244g;

            /* renamed from: h  reason: collision with root package name */
            private q2<MergeSlashes, MergeSlashes.b, c> f50245h;

            /* synthetic */ b(GeneratedMessageV3.c cVar, a aVar) {
                this(cVar);
            }

            private void b0() {
                boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b
            protected GeneratedMessageV3.e K() {
                return io.grpc.xds.shaded.io.envoyproxy.envoy.type.http.v3.b.f50253d.d(Operation.class, b.class);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
            /* renamed from: W */
            public b L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                return (b) super.L(fieldDescriptor, obj);
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
                if (this.f50242e == 2) {
                    q2<NormalizePathRFC3986, NormalizePathRFC3986.b, d> q2Var = this.f50244g;
                    if (q2Var == null) {
                        operation.operationSpecifier_ = this.f50243f;
                    } else {
                        operation.operationSpecifier_ = q2Var.b();
                    }
                }
                if (this.f50242e == 3) {
                    q2<MergeSlashes, MergeSlashes.b, c> q2Var2 = this.f50245h;
                    if (q2Var2 == null) {
                        operation.operationSpecifier_ = this.f50243f;
                    } else {
                        operation.operationSpecifier_ = q2Var2.b();
                    }
                }
                operation.operationSpecifierCase_ = this.f50242e;
                Q();
                return operation;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
            /* renamed from: Z */
            public b n() {
                return (b) super.n();
            }

            @Override // com.google.protobuf.p1, com.google.protobuf.r1
            /* renamed from: a0 */
            public Operation getDefaultInstanceForType() {
                return Operation.getDefaultInstance();
            }

            /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
            @Override // com.google.protobuf.a.AbstractC0142a
            /* renamed from: d0 */
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public io.grpc.xds.shaded.io.envoyproxy.envoy.type.http.v3.PathTransformation.Operation.b u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
                /*
                    r2 = this;
                    r0 = 0
                    com.google.protobuf.e2 r1 = io.grpc.xds.shaded.io.envoyproxy.envoy.type.http.v3.PathTransformation.Operation.access$2100()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                    java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                    io.grpc.xds.shaded.io.envoyproxy.envoy.type.http.v3.PathTransformation$Operation r3 = (io.grpc.xds.shaded.io.envoyproxy.envoy.type.http.v3.PathTransformation.Operation) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
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
                    io.grpc.xds.shaded.io.envoyproxy.envoy.type.http.v3.PathTransformation$Operation r4 = (io.grpc.xds.shaded.io.envoyproxy.envoy.type.http.v3.PathTransformation.Operation) r4     // Catch: java.lang.Throwable -> L11
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
                throw new UnsupportedOperationException("Method not decompiled: io.grpc.xds.shaded.io.envoyproxy.envoy.type.http.v3.PathTransformation.Operation.b.u(com.google.protobuf.p, com.google.protobuf.f0):io.grpc.xds.shaded.io.envoyproxy.envoy.type.http.v3.PathTransformation$Operation$b");
            }

            @Override // com.google.protobuf.a.AbstractC0142a
            /* renamed from: e0 */
            public b v(l1 l1Var) {
                if (l1Var instanceof Operation) {
                    return g0((Operation) l1Var);
                }
                super.P0(l1Var);
                return this;
            }

            public b g0(Operation operation) {
                if (operation == Operation.getDefaultInstance()) {
                    return this;
                }
                int i9 = b.f50246a[operation.getOperationSpecifierCase().ordinal()];
                if (i9 == 1) {
                    i0(operation.getNormalizePathRfc3986());
                } else if (i9 == 2) {
                    h0(operation.getMergeSlashes());
                }
                z(((GeneratedMessageV3) operation).unknownFields);
                R();
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
            public Descriptors.b getDescriptorForType() {
                return io.grpc.xds.shaded.io.envoyproxy.envoy.type.http.v3.b.f50252c;
            }

            public b h0(MergeSlashes mergeSlashes) {
                q2<MergeSlashes, MergeSlashes.b, c> q2Var = this.f50245h;
                if (q2Var == null) {
                    if (this.f50242e == 3 && this.f50243f != MergeSlashes.getDefaultInstance()) {
                        this.f50243f = MergeSlashes.newBuilder((MergeSlashes) this.f50243f).g0(mergeSlashes).I();
                    } else {
                        this.f50243f = mergeSlashes;
                    }
                    R();
                } else {
                    if (this.f50242e == 3) {
                        q2Var.e(mergeSlashes);
                    }
                    this.f50245h.g(mergeSlashes);
                }
                this.f50242e = 3;
                return this;
            }

            public b i0(NormalizePathRFC3986 normalizePathRFC3986) {
                q2<NormalizePathRFC3986, NormalizePathRFC3986.b, d> q2Var = this.f50244g;
                if (q2Var == null) {
                    if (this.f50242e == 2 && this.f50243f != NormalizePathRFC3986.getDefaultInstance()) {
                        this.f50243f = NormalizePathRFC3986.newBuilder((NormalizePathRFC3986) this.f50243f).g0(normalizePathRFC3986).I();
                    } else {
                        this.f50243f = normalizePathRFC3986;
                    }
                    R();
                } else {
                    if (this.f50242e == 2) {
                        q2Var.e(normalizePathRFC3986);
                    }
                    this.f50244g.g(normalizePathRFC3986);
                }
                this.f50242e = 2;
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
                this.f50242e = 0;
                b0();
            }

            private b(GeneratedMessageV3.c cVar) {
                super(cVar);
                this.f50242e = 0;
                b0();
            }
        }

        /* loaded from: classes6.dex */
        public interface c extends r1 {
        }

        /* loaded from: classes6.dex */
        public interface d extends r1 {
        }

        /* synthetic */ Operation(p pVar, f0 f0Var, a aVar) throws InvalidProtocolBufferException {
            this(pVar, f0Var);
        }

        public static Operation getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static final Descriptors.b getDescriptor() {
            return io.grpc.xds.shaded.io.envoyproxy.envoy.type.http.v3.b.f50252c;
        }

        public static b newBuilder() {
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
            if (getOperationSpecifierCase().equals(operation.getOperationSpecifierCase())) {
                int i9 = this.operationSpecifierCase_;
                if (i9 != 2) {
                    if (i9 == 3 && !getMergeSlashes().equals(operation.getMergeSlashes())) {
                        return false;
                    }
                } else if (!getNormalizePathRfc3986().equals(operation.getNormalizePathRfc3986())) {
                    return false;
                }
                return this.unknownFields.equals(operation.unknownFields);
            }
            return false;
        }

        public MergeSlashes getMergeSlashes() {
            if (this.operationSpecifierCase_ == 3) {
                return (MergeSlashes) this.operationSpecifier_;
            }
            return MergeSlashes.getDefaultInstance();
        }

        public c getMergeSlashesOrBuilder() {
            if (this.operationSpecifierCase_ == 3) {
                return (MergeSlashes) this.operationSpecifier_;
            }
            return MergeSlashes.getDefaultInstance();
        }

        public NormalizePathRFC3986 getNormalizePathRfc3986() {
            if (this.operationSpecifierCase_ == 2) {
                return (NormalizePathRFC3986) this.operationSpecifier_;
            }
            return NormalizePathRFC3986.getDefaultInstance();
        }

        public d getNormalizePathRfc3986OrBuilder() {
            if (this.operationSpecifierCase_ == 2) {
                return (NormalizePathRFC3986) this.operationSpecifier_;
            }
            return NormalizePathRFC3986.getDefaultInstance();
        }

        public OperationSpecifierCase getOperationSpecifierCase() {
            return OperationSpecifierCase.forNumber(this.operationSpecifierCase_);
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
        public e2<Operation> getParserForType() {
            return PARSER;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
        public int getSerializedSize() {
            int i9 = this.memoizedSize;
            if (i9 != -1) {
                return i9;
            }
            int G = this.operationSpecifierCase_ == 2 ? 0 + CodedOutputStream.G(2, (NormalizePathRFC3986) this.operationSpecifier_) : 0;
            if (this.operationSpecifierCase_ == 3) {
                G += CodedOutputStream.G(3, (MergeSlashes) this.operationSpecifier_);
            }
            int serializedSize = G + this.unknownFields.getSerializedSize();
            this.memoizedSize = serializedSize;
            return serializedSize;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.r1
        public final h3 getUnknownFields() {
            return this.unknownFields;
        }

        public boolean hasMergeSlashes() {
            return this.operationSpecifierCase_ == 3;
        }

        public boolean hasNormalizePathRfc3986() {
            return this.operationSpecifierCase_ == 2;
        }

        @Override // com.google.protobuf.a
        public int hashCode() {
            int i9;
            int hashCode;
            int i10 = this.memoizedHashCode;
            if (i10 != 0) {
                return i10;
            }
            int hashCode2 = 779 + getDescriptor().hashCode();
            int i11 = this.operationSpecifierCase_;
            if (i11 == 2) {
                i9 = ((hashCode2 * 37) + 2) * 53;
                hashCode = getNormalizePathRfc3986().hashCode();
            } else {
                if (i11 == 3) {
                    i9 = ((hashCode2 * 37) + 3) * 53;
                    hashCode = getMergeSlashes().hashCode();
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
            return io.grpc.xds.shaded.io.envoyproxy.envoy.type.http.v3.b.f50253d.d(Operation.class, b.class);
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
            if (this.operationSpecifierCase_ == 2) {
                codedOutputStream.L0(2, (NormalizePathRFC3986) this.operationSpecifier_);
            }
            if (this.operationSpecifierCase_ == 3) {
                codedOutputStream.L0(3, (MergeSlashes) this.operationSpecifier_);
            }
            this.unknownFields.writeTo(codedOutputStream);
        }

        /* synthetic */ Operation(GeneratedMessageV3.b bVar, a aVar) {
            this(bVar);
        }

        public static b newBuilder(Operation operation) {
            return DEFAULT_INSTANCE.toBuilder().g0(operation);
        }

        public static Operation parseFrom(ByteBuffer byteBuffer, f0 f0Var) throws InvalidProtocolBufferException {
            return PARSER.f(byteBuffer, f0Var);
        }

        private Operation(GeneratedMessageV3.b<?> bVar) {
            super(bVar);
            this.operationSpecifierCase_ = 0;
            this.memoizedIsInitialized = (byte) -1;
        }

        public static Operation parseDelimitedFrom(InputStream inputStream, f0 f0Var) throws IOException {
            return (Operation) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
        }

        public static Operation parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.c(byteString);
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.p1, com.google.protobuf.r1
        public Operation getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
        public b toBuilder() {
            return this == DEFAULT_INSTANCE ? new b((a) null) : new b((a) null).g0(this);
        }

        public static Operation parseFrom(ByteString byteString, f0 f0Var) throws InvalidProtocolBufferException {
            return PARSER.b(byteString, f0Var);
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
        public b newBuilderForType() {
            return newBuilder();
        }

        public static Operation parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.a(bArr);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.protobuf.GeneratedMessageV3
        public b newBuilderForType(GeneratedMessageV3.c cVar) {
            return new b(cVar, null);
        }

        private Operation() {
            this.operationSpecifierCase_ = 0;
            this.memoizedIsInitialized = (byte) -1;
        }

        public static Operation parseFrom(byte[] bArr, f0 f0Var) throws InvalidProtocolBufferException {
            return PARSER.g(bArr, f0Var);
        }

        public static Operation parseFrom(InputStream inputStream) throws IOException {
            return (Operation) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
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
                                if (L == 18) {
                                    NormalizePathRFC3986.b builder = this.operationSpecifierCase_ == 2 ? ((NormalizePathRFC3986) this.operationSpecifier_).toBuilder() : null;
                                    o1 B = pVar.B(NormalizePathRFC3986.parser(), f0Var);
                                    this.operationSpecifier_ = B;
                                    if (builder != null) {
                                        builder.g0((NormalizePathRFC3986) B);
                                        this.operationSpecifier_ = builder.I();
                                    }
                                    this.operationSpecifierCase_ = 2;
                                } else if (L != 26) {
                                    if (!parseUnknownField(pVar, h10, f0Var, L)) {
                                    }
                                } else {
                                    MergeSlashes.b builder2 = this.operationSpecifierCase_ == 3 ? ((MergeSlashes) this.operationSpecifier_).toBuilder() : null;
                                    o1 B2 = pVar.B(MergeSlashes.parser(), f0Var);
                                    this.operationSpecifier_ = B2;
                                    if (builder2 != null) {
                                        builder2.g0((MergeSlashes) B2);
                                        this.operationSpecifier_ = builder2.I();
                                    }
                                    this.operationSpecifierCase_ = 3;
                                }
                            }
                            z10 = true;
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

        public static Operation parseFrom(InputStream inputStream, f0 f0Var) throws IOException {
            return (Operation) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
        }

        public static Operation parseFrom(p pVar) throws IOException {
            return (Operation) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
        }

        public static Operation parseFrom(p pVar, f0 f0Var) throws IOException {
            return (Operation) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes6.dex */
    public class a extends com.google.protobuf.c<PathTransformation> {
        a() {
        }

        @Override // com.google.protobuf.e2
        /* renamed from: G */
        public PathTransformation m(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
            return new PathTransformation(pVar, f0Var, null);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes6.dex */
    public static /* synthetic */ class b {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f50246a;

        static {
            int[] iArr = new int[Operation.OperationSpecifierCase.values().length];
            f50246a = iArr;
            try {
                iArr[Operation.OperationSpecifierCase.NORMALIZE_PATH_RFC_3986.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f50246a[Operation.OperationSpecifierCase.MERGE_SLASHES.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f50246a[Operation.OperationSpecifierCase.OPERATIONSPECIFIER_NOT_SET.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    /* loaded from: classes6.dex */
    public static final class c extends GeneratedMessageV3.b<c> implements io.grpc.xds.shaded.io.envoyproxy.envoy.type.http.v3.a {

        /* renamed from: e  reason: collision with root package name */
        private int f50247e;

        /* renamed from: f  reason: collision with root package name */
        private List<Operation> f50248f;

        /* renamed from: g  reason: collision with root package name */
        private l2<Operation, Operation.b, d> f50249g;

        /* synthetic */ c(GeneratedMessageV3.c cVar, a aVar) {
            this(cVar);
        }

        private void a0() {
            if ((this.f50247e & 1) == 0) {
                this.f50248f = new ArrayList(this.f50248f);
                this.f50247e |= 1;
            }
        }

        private l2<Operation, Operation.b, d> d0() {
            if (this.f50249g == null) {
                this.f50249g = new l2<>(this.f50248f, (this.f50247e & 1) != 0, H(), O());
                this.f50248f = null;
            }
            return this.f50249g;
        }

        private void e0() {
            if (GeneratedMessageV3.alwaysUseFieldBuilders) {
                d0();
            }
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b
        protected GeneratedMessageV3.e K() {
            return io.grpc.xds.shaded.io.envoyproxy.envoy.type.http.v3.b.f50251b.d(PathTransformation.class, c.class);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: W */
        public c L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (c) super.L(fieldDescriptor, obj);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: X */
        public PathTransformation build() {
            PathTransformation I = I();
            if (I.isInitialized()) {
                return I;
            }
            throw a.AbstractC0142a.A(I);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: Y */
        public PathTransformation I() {
            PathTransformation pathTransformation = new PathTransformation(this, (a) null);
            int i9 = this.f50247e;
            l2<Operation, Operation.b, d> l2Var = this.f50249g;
            if (l2Var == null) {
                if ((i9 & 1) != 0) {
                    this.f50248f = Collections.unmodifiableList(this.f50248f);
                    this.f50247e &= -2;
                }
                pathTransformation.operations_ = this.f50248f;
            } else {
                pathTransformation.operations_ = l2Var.e();
            }
            Q();
            return pathTransformation;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
        /* renamed from: Z */
        public c n() {
            return (c) super.n();
        }

        @Override // com.google.protobuf.p1, com.google.protobuf.r1
        /* renamed from: b0 */
        public PathTransformation getDefaultInstanceForType() {
            return PathTransformation.getDefaultInstance();
        }

        /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: g0 */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public io.grpc.xds.shaded.io.envoyproxy.envoy.type.http.v3.PathTransformation.c u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
            /*
                r2 = this;
                r0 = 0
                com.google.protobuf.e2 r1 = io.grpc.xds.shaded.io.envoyproxy.envoy.type.http.v3.PathTransformation.access$3000()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                io.grpc.xds.shaded.io.envoyproxy.envoy.type.http.v3.PathTransformation r3 = (io.grpc.xds.shaded.io.envoyproxy.envoy.type.http.v3.PathTransformation) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
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
                io.grpc.xds.shaded.io.envoyproxy.envoy.type.http.v3.PathTransformation r4 = (io.grpc.xds.shaded.io.envoyproxy.envoy.type.http.v3.PathTransformation) r4     // Catch: java.lang.Throwable -> L11
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
            throw new UnsupportedOperationException("Method not decompiled: io.grpc.xds.shaded.io.envoyproxy.envoy.type.http.v3.PathTransformation.c.u(com.google.protobuf.p, com.google.protobuf.f0):io.grpc.xds.shaded.io.envoyproxy.envoy.type.http.v3.PathTransformation$c");
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
        public Descriptors.b getDescriptorForType() {
            return io.grpc.xds.shaded.io.envoyproxy.envoy.type.http.v3.b.f50250a;
        }

        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: h0 */
        public c v(l1 l1Var) {
            if (l1Var instanceof PathTransformation) {
                return i0((PathTransformation) l1Var);
            }
            super.P0(l1Var);
            return this;
        }

        public c i0(PathTransformation pathTransformation) {
            if (pathTransformation == PathTransformation.getDefaultInstance()) {
                return this;
            }
            if (this.f50249g == null) {
                if (!pathTransformation.operations_.isEmpty()) {
                    if (this.f50248f.isEmpty()) {
                        this.f50248f = pathTransformation.operations_;
                        this.f50247e &= -2;
                    } else {
                        a0();
                        this.f50248f.addAll(pathTransformation.operations_);
                    }
                    R();
                }
            } else if (!pathTransformation.operations_.isEmpty()) {
                if (this.f50249g.k()) {
                    this.f50249g.f();
                    this.f50249g = null;
                    this.f50248f = pathTransformation.operations_;
                    this.f50247e &= -2;
                    this.f50249g = GeneratedMessageV3.alwaysUseFieldBuilders ? d0() : null;
                } else {
                    this.f50249g.b(pathTransformation.operations_);
                }
            }
            z(((GeneratedMessageV3) pathTransformation).unknownFields);
            R();
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

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: l0 */
        public final c f1(h3 h3Var) {
            return (c) super.f1(h3Var);
        }

        /* synthetic */ c(a aVar) {
            this();
        }

        private c() {
            this.f50248f = Collections.emptyList();
            e0();
        }

        private c(GeneratedMessageV3.c cVar) {
            super(cVar);
            this.f50248f = Collections.emptyList();
            e0();
        }
    }

    /* loaded from: classes6.dex */
    public interface d extends r1 {
    }

    /* synthetic */ PathTransformation(p pVar, f0 f0Var, a aVar) throws InvalidProtocolBufferException {
        this(pVar, f0Var);
    }

    public static PathTransformation getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static final Descriptors.b getDescriptor() {
        return io.grpc.xds.shaded.io.envoyproxy.envoy.type.http.v3.b.f50250a;
    }

    public static c newBuilder() {
        return DEFAULT_INSTANCE.toBuilder();
    }

    public static PathTransformation parseDelimitedFrom(InputStream inputStream) throws IOException {
        return (PathTransformation) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
    }

    public static PathTransformation parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
        return PARSER.l(byteBuffer);
    }

    public static e2<PathTransformation> parser() {
        return PARSER;
    }

    @Override // com.google.protobuf.a
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof PathTransformation)) {
            return super.equals(obj);
        }
        PathTransformation pathTransformation = (PathTransformation) obj;
        return getOperationsList().equals(pathTransformation.getOperationsList()) && this.unknownFields.equals(pathTransformation.unknownFields);
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

    public d getOperationsOrBuilder(int i9) {
        return this.operations_.get(i9);
    }

    public List<? extends d> getOperationsOrBuilderList() {
        return this.operations_;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public e2<PathTransformation> getParserForType() {
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
        int hashCode2 = (hashCode * 29) + this.unknownFields.hashCode();
        this.memoizedHashCode = hashCode2;
        return hashCode2;
    }

    @Override // com.google.protobuf.GeneratedMessageV3
    protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
        return io.grpc.xds.shaded.io.envoyproxy.envoy.type.http.v3.b.f50251b.d(PathTransformation.class, c.class);
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
        return new PathTransformation();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
        for (int i9 = 0; i9 < this.operations_.size(); i9++) {
            codedOutputStream.L0(1, this.operations_.get(i9));
        }
        this.unknownFields.writeTo(codedOutputStream);
    }

    /* synthetic */ PathTransformation(GeneratedMessageV3.b bVar, a aVar) {
        this(bVar);
    }

    public static c newBuilder(PathTransformation pathTransformation) {
        return DEFAULT_INSTANCE.toBuilder().i0(pathTransformation);
    }

    public static PathTransformation parseFrom(ByteBuffer byteBuffer, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.f(byteBuffer, f0Var);
    }

    private PathTransformation(GeneratedMessageV3.b<?> bVar) {
        super(bVar);
        this.memoizedIsInitialized = (byte) -1;
    }

    public static PathTransformation parseDelimitedFrom(InputStream inputStream, f0 f0Var) throws IOException {
        return (PathTransformation) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
    }

    public static PathTransformation parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
        return PARSER.c(byteString);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.p1, com.google.protobuf.r1
    public PathTransformation getDefaultInstanceForType() {
        return DEFAULT_INSTANCE;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public c toBuilder() {
        return this == DEFAULT_INSTANCE ? new c((a) null) : new c((a) null).i0(this);
    }

    public static PathTransformation parseFrom(ByteString byteString, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.b(byteString, f0Var);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public c newBuilderForType() {
        return newBuilder();
    }

    private PathTransformation() {
        this.memoizedIsInitialized = (byte) -1;
        this.operations_ = Collections.emptyList();
    }

    public static PathTransformation parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
        return PARSER.a(bArr);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.protobuf.GeneratedMessageV3
    public c newBuilderForType(GeneratedMessageV3.c cVar) {
        return new c(cVar, null);
    }

    public static PathTransformation parseFrom(byte[] bArr, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.g(bArr, f0Var);
    }

    public static PathTransformation parseFrom(InputStream inputStream) throws IOException {
        return (PathTransformation) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
    }

    private PathTransformation(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
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
                                this.operations_ = new ArrayList();
                                z11 |= true;
                            }
                            this.operations_.add((Operation) pVar.B(Operation.parser(), f0Var));
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

    public static PathTransformation parseFrom(InputStream inputStream, f0 f0Var) throws IOException {
        return (PathTransformation) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
    }

    public static PathTransformation parseFrom(p pVar) throws IOException {
        return (PathTransformation) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
    }

    public static PathTransformation parseFrom(p pVar, f0 f0Var) throws IOException {
        return (PathTransformation) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
    }
}
