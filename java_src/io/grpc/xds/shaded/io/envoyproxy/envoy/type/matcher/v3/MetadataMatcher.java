package io.grpc.xds.shaded.io.envoyproxy.envoy.type.matcher.v3;

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
import com.google.protobuf.q2;
import com.google.protobuf.r1;
import com.google.protobuf.u0;
import io.grpc.xds.shaded.io.envoyproxy.envoy.type.matcher.v3.ValueMatcher;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Objects;
/* loaded from: classes6.dex */
public final class MetadataMatcher extends GeneratedMessageV3 implements io.grpc.xds.shaded.io.envoyproxy.envoy.type.matcher.v3.d {
    public static final int FILTER_FIELD_NUMBER = 1;
    public static final int PATH_FIELD_NUMBER = 2;
    public static final int VALUE_FIELD_NUMBER = 3;
    private static final long serialVersionUID = 0;
    private volatile Object filter_;
    private byte memoizedIsInitialized;
    private List<PathSegment> path_;
    private ValueMatcher value_;
    private static final MetadataMatcher DEFAULT_INSTANCE = new MetadataMatcher();
    private static final e2<MetadataMatcher> PARSER = new a();

    /* loaded from: classes6.dex */
    public static final class PathSegment extends GeneratedMessageV3 implements d {
        public static final int KEY_FIELD_NUMBER = 1;
        private static final long serialVersionUID = 0;
        private byte memoizedIsInitialized;
        private int segmentCase_;
        private Object segment_;
        private static final PathSegment DEFAULT_INSTANCE = new PathSegment();
        private static final e2<PathSegment> PARSER = new a();

        /* loaded from: classes6.dex */
        public enum SegmentCase implements u0.c {
            KEY(1),
            SEGMENT_NOT_SET(0);
            
            private final int value;

            SegmentCase(int i9) {
                this.value = i9;
            }

            public static SegmentCase forNumber(int i9) {
                if (i9 != 0) {
                    if (i9 != 1) {
                        return null;
                    }
                    return KEY;
                }
                return SEGMENT_NOT_SET;
            }

            @Override // com.google.protobuf.u0.c
            public int getNumber() {
                return this.value;
            }

            @Deprecated
            public static SegmentCase valueOf(int i9) {
                return forNumber(i9);
            }
        }

        /* loaded from: classes6.dex */
        class a extends com.google.protobuf.c<PathSegment> {
            a() {
            }

            @Override // com.google.protobuf.e2
            /* renamed from: G */
            public PathSegment m(com.google.protobuf.p pVar, f0 f0Var) throws InvalidProtocolBufferException {
                return new PathSegment(pVar, f0Var, null);
            }
        }

        /* loaded from: classes6.dex */
        public static final class b extends GeneratedMessageV3.b<b> implements d {

            /* renamed from: e  reason: collision with root package name */
            private int f50349e;

            /* renamed from: f  reason: collision with root package name */
            private Object f50350f;

            /* synthetic */ b(GeneratedMessageV3.c cVar, a aVar) {
                this(cVar);
            }

            private void b0() {
                boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b
            protected GeneratedMessageV3.e K() {
                return e.f50400d.d(PathSegment.class, b.class);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
            /* renamed from: W */
            public b L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                return (b) super.L(fieldDescriptor, obj);
            }

            @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
            /* renamed from: X */
            public PathSegment build() {
                PathSegment I = I();
                if (I.isInitialized()) {
                    return I;
                }
                throw a.AbstractC0142a.A(I);
            }

            @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
            /* renamed from: Y */
            public PathSegment I() {
                PathSegment pathSegment = new PathSegment(this, (a) null);
                if (this.f50349e == 1) {
                    pathSegment.segment_ = this.f50350f;
                }
                pathSegment.segmentCase_ = this.f50349e;
                Q();
                return pathSegment;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
            /* renamed from: Z */
            public b n() {
                return (b) super.n();
            }

            @Override // com.google.protobuf.p1, com.google.protobuf.r1
            /* renamed from: a0 */
            public PathSegment getDefaultInstanceForType() {
                return PathSegment.getDefaultInstance();
            }

            /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
            @Override // com.google.protobuf.a.AbstractC0142a
            /* renamed from: d0 */
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public io.grpc.xds.shaded.io.envoyproxy.envoy.type.matcher.v3.MetadataMatcher.PathSegment.b u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
                /*
                    r2 = this;
                    r0 = 0
                    com.google.protobuf.e2 r1 = io.grpc.xds.shaded.io.envoyproxy.envoy.type.matcher.v3.MetadataMatcher.PathSegment.access$700()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                    java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                    io.grpc.xds.shaded.io.envoyproxy.envoy.type.matcher.v3.MetadataMatcher$PathSegment r3 = (io.grpc.xds.shaded.io.envoyproxy.envoy.type.matcher.v3.MetadataMatcher.PathSegment) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
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
                    io.grpc.xds.shaded.io.envoyproxy.envoy.type.matcher.v3.MetadataMatcher$PathSegment r4 = (io.grpc.xds.shaded.io.envoyproxy.envoy.type.matcher.v3.MetadataMatcher.PathSegment) r4     // Catch: java.lang.Throwable -> L11
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
                throw new UnsupportedOperationException("Method not decompiled: io.grpc.xds.shaded.io.envoyproxy.envoy.type.matcher.v3.MetadataMatcher.PathSegment.b.u(com.google.protobuf.p, com.google.protobuf.f0):io.grpc.xds.shaded.io.envoyproxy.envoy.type.matcher.v3.MetadataMatcher$PathSegment$b");
            }

            @Override // com.google.protobuf.a.AbstractC0142a
            /* renamed from: e0 */
            public b v(l1 l1Var) {
                if (l1Var instanceof PathSegment) {
                    return g0((PathSegment) l1Var);
                }
                super.P0(l1Var);
                return this;
            }

            public b g0(PathSegment pathSegment) {
                if (pathSegment == PathSegment.getDefaultInstance()) {
                    return this;
                }
                if (b.f50351a[pathSegment.getSegmentCase().ordinal()] == 1) {
                    this.f50349e = 1;
                    this.f50350f = pathSegment.segment_;
                    R();
                }
                z(((GeneratedMessageV3) pathSegment).unknownFields);
                R();
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
            public Descriptors.b getDescriptorForType() {
                return e.f50399c;
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
                this.f50349e = 0;
                b0();
            }

            private b(GeneratedMessageV3.c cVar) {
                super(cVar);
                this.f50349e = 0;
                b0();
            }
        }

        /* synthetic */ PathSegment(com.google.protobuf.p pVar, f0 f0Var, a aVar) throws InvalidProtocolBufferException {
            this(pVar, f0Var);
        }

        public static PathSegment getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static final Descriptors.b getDescriptor() {
            return e.f50399c;
        }

        public static b newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static PathSegment parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (PathSegment) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static PathSegment parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.l(byteBuffer);
        }

        public static e2<PathSegment> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.a
        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof PathSegment)) {
                return super.equals(obj);
            }
            PathSegment pathSegment = (PathSegment) obj;
            if (getSegmentCase().equals(pathSegment.getSegmentCase())) {
                return (this.segmentCase_ != 1 || getKey().equals(pathSegment.getKey())) && this.unknownFields.equals(pathSegment.unknownFields);
            }
            return false;
        }

        public String getKey() {
            String str = this.segmentCase_ == 1 ? this.segment_ : "";
            if (str instanceof String) {
                return (String) str;
            }
            String stringUtf8 = ((ByteString) str).toStringUtf8();
            if (this.segmentCase_ == 1) {
                this.segment_ = stringUtf8;
            }
            return stringUtf8;
        }

        public ByteString getKeyBytes() {
            String str = this.segmentCase_ == 1 ? this.segment_ : "";
            if (str instanceof String) {
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) str);
                if (this.segmentCase_ == 1) {
                    this.segment_ = copyFromUtf8;
                }
                return copyFromUtf8;
            }
            return (ByteString) str;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
        public e2<PathSegment> getParserForType() {
            return PARSER;
        }

        public SegmentCase getSegmentCase() {
            return SegmentCase.forNumber(this.segmentCase_);
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
        public int getSerializedSize() {
            int i9 = this.memoizedSize;
            if (i9 != -1) {
                return i9;
            }
            int computeStringSize = (this.segmentCase_ == 1 ? 0 + GeneratedMessageV3.computeStringSize(1, this.segment_) : 0) + this.unknownFields.getSerializedSize();
            this.memoizedSize = computeStringSize;
            return computeStringSize;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.r1
        public final h3 getUnknownFields() {
            return this.unknownFields;
        }

        public boolean hasKey() {
            return this.segmentCase_ == 1;
        }

        @Override // com.google.protobuf.a
        public int hashCode() {
            int i9 = this.memoizedHashCode;
            if (i9 != 0) {
                return i9;
            }
            int hashCode = 779 + getDescriptor().hashCode();
            if (this.segmentCase_ == 1) {
                hashCode = (((hashCode * 37) + 1) * 53) + getKey().hashCode();
            }
            int hashCode2 = (hashCode * 29) + this.unknownFields.hashCode();
            this.memoizedHashCode = hashCode2;
            return hashCode2;
        }

        @Override // com.google.protobuf.GeneratedMessageV3
        protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
            return e.f50400d.d(PathSegment.class, b.class);
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
            return new PathSegment();
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
        public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
            if (this.segmentCase_ == 1) {
                GeneratedMessageV3.writeString(codedOutputStream, 1, this.segment_);
            }
            this.unknownFields.writeTo(codedOutputStream);
        }

        /* synthetic */ PathSegment(GeneratedMessageV3.b bVar, a aVar) {
            this(bVar);
        }

        public static b newBuilder(PathSegment pathSegment) {
            return DEFAULT_INSTANCE.toBuilder().g0(pathSegment);
        }

        public static PathSegment parseFrom(ByteBuffer byteBuffer, f0 f0Var) throws InvalidProtocolBufferException {
            return PARSER.f(byteBuffer, f0Var);
        }

        private PathSegment(GeneratedMessageV3.b<?> bVar) {
            super(bVar);
            this.segmentCase_ = 0;
            this.memoizedIsInitialized = (byte) -1;
        }

        public static PathSegment parseDelimitedFrom(InputStream inputStream, f0 f0Var) throws IOException {
            return (PathSegment) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
        }

        public static PathSegment parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.c(byteString);
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.p1, com.google.protobuf.r1
        public PathSegment getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
        public b toBuilder() {
            return this == DEFAULT_INSTANCE ? new b((a) null) : new b((a) null).g0(this);
        }

        public static PathSegment parseFrom(ByteString byteString, f0 f0Var) throws InvalidProtocolBufferException {
            return PARSER.b(byteString, f0Var);
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
        public b newBuilderForType() {
            return newBuilder();
        }

        public static PathSegment parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.a(bArr);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.protobuf.GeneratedMessageV3
        public b newBuilderForType(GeneratedMessageV3.c cVar) {
            return new b(cVar, null);
        }

        private PathSegment() {
            this.segmentCase_ = 0;
            this.memoizedIsInitialized = (byte) -1;
        }

        public static PathSegment parseFrom(byte[] bArr, f0 f0Var) throws InvalidProtocolBufferException {
            return PARSER.g(bArr, f0Var);
        }

        public static PathSegment parseFrom(InputStream inputStream) throws IOException {
            return (PathSegment) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
        }

        private PathSegment(com.google.protobuf.p pVar, f0 f0Var) throws InvalidProtocolBufferException {
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
                                if (!parseUnknownField(pVar, h10, f0Var, L)) {
                                }
                            } else {
                                String K = pVar.K();
                                this.segmentCase_ = 1;
                                this.segment_ = K;
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

        public static PathSegment parseFrom(InputStream inputStream, f0 f0Var) throws IOException {
            return (PathSegment) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
        }

        public static PathSegment parseFrom(com.google.protobuf.p pVar) throws IOException {
            return (PathSegment) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
        }

        public static PathSegment parseFrom(com.google.protobuf.p pVar, f0 f0Var) throws IOException {
            return (PathSegment) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes6.dex */
    public class a extends com.google.protobuf.c<MetadataMatcher> {
        a() {
        }

        @Override // com.google.protobuf.e2
        /* renamed from: G */
        public MetadataMatcher m(com.google.protobuf.p pVar, f0 f0Var) throws InvalidProtocolBufferException {
            return new MetadataMatcher(pVar, f0Var, null);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes6.dex */
    public static /* synthetic */ class b {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f50351a;

        static {
            int[] iArr = new int[PathSegment.SegmentCase.values().length];
            f50351a = iArr;
            try {
                iArr[PathSegment.SegmentCase.KEY.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f50351a[PathSegment.SegmentCase.SEGMENT_NOT_SET.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    /* loaded from: classes6.dex */
    public static final class c extends GeneratedMessageV3.b<c> implements io.grpc.xds.shaded.io.envoyproxy.envoy.type.matcher.v3.d {

        /* renamed from: e  reason: collision with root package name */
        private int f50352e;

        /* renamed from: f  reason: collision with root package name */
        private Object f50353f;

        /* renamed from: g  reason: collision with root package name */
        private List<PathSegment> f50354g;

        /* renamed from: h  reason: collision with root package name */
        private l2<PathSegment, PathSegment.b, d> f50355h;

        /* renamed from: i  reason: collision with root package name */
        private ValueMatcher f50356i;

        /* renamed from: j  reason: collision with root package name */
        private q2<ValueMatcher, ValueMatcher.c, r> f50357j;

        /* synthetic */ c(GeneratedMessageV3.c cVar, a aVar) {
            this(cVar);
        }

        private void a0() {
            if ((this.f50352e & 1) == 0) {
                this.f50354g = new ArrayList(this.f50354g);
                this.f50352e |= 1;
            }
        }

        private l2<PathSegment, PathSegment.b, d> d0() {
            if (this.f50355h == null) {
                this.f50355h = new l2<>(this.f50354g, (this.f50352e & 1) != 0, H(), O());
                this.f50354g = null;
            }
            return this.f50355h;
        }

        private void e0() {
            if (GeneratedMessageV3.alwaysUseFieldBuilders) {
                d0();
            }
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b
        protected GeneratedMessageV3.e K() {
            return e.f50398b.d(MetadataMatcher.class, c.class);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: W */
        public c L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (c) super.L(fieldDescriptor, obj);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: X */
        public MetadataMatcher build() {
            MetadataMatcher I = I();
            if (I.isInitialized()) {
                return I;
            }
            throw a.AbstractC0142a.A(I);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: Y */
        public MetadataMatcher I() {
            MetadataMatcher metadataMatcher = new MetadataMatcher(this, (a) null);
            metadataMatcher.filter_ = this.f50353f;
            l2<PathSegment, PathSegment.b, d> l2Var = this.f50355h;
            if (l2Var == null) {
                if ((this.f50352e & 1) != 0) {
                    this.f50354g = Collections.unmodifiableList(this.f50354g);
                    this.f50352e &= -2;
                }
                metadataMatcher.path_ = this.f50354g;
            } else {
                metadataMatcher.path_ = l2Var.e();
            }
            q2<ValueMatcher, ValueMatcher.c, r> q2Var = this.f50357j;
            if (q2Var == null) {
                metadataMatcher.value_ = this.f50356i;
            } else {
                metadataMatcher.value_ = q2Var.b();
            }
            Q();
            return metadataMatcher;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
        /* renamed from: Z */
        public c n() {
            return (c) super.n();
        }

        @Override // com.google.protobuf.p1, com.google.protobuf.r1
        /* renamed from: b0 */
        public MetadataMatcher getDefaultInstanceForType() {
            return MetadataMatcher.getDefaultInstance();
        }

        /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: g0 */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public io.grpc.xds.shaded.io.envoyproxy.envoy.type.matcher.v3.MetadataMatcher.c u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
            /*
                r2 = this;
                r0 = 0
                com.google.protobuf.e2 r1 = io.grpc.xds.shaded.io.envoyproxy.envoy.type.matcher.v3.MetadataMatcher.access$1900()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                io.grpc.xds.shaded.io.envoyproxy.envoy.type.matcher.v3.MetadataMatcher r3 = (io.grpc.xds.shaded.io.envoyproxy.envoy.type.matcher.v3.MetadataMatcher) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
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
                io.grpc.xds.shaded.io.envoyproxy.envoy.type.matcher.v3.MetadataMatcher r4 = (io.grpc.xds.shaded.io.envoyproxy.envoy.type.matcher.v3.MetadataMatcher) r4     // Catch: java.lang.Throwable -> L11
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
            throw new UnsupportedOperationException("Method not decompiled: io.grpc.xds.shaded.io.envoyproxy.envoy.type.matcher.v3.MetadataMatcher.c.u(com.google.protobuf.p, com.google.protobuf.f0):io.grpc.xds.shaded.io.envoyproxy.envoy.type.matcher.v3.MetadataMatcher$c");
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
        public Descriptors.b getDescriptorForType() {
            return e.f50397a;
        }

        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: h0 */
        public c v(l1 l1Var) {
            if (l1Var instanceof MetadataMatcher) {
                return i0((MetadataMatcher) l1Var);
            }
            super.P0(l1Var);
            return this;
        }

        public c i0(MetadataMatcher metadataMatcher) {
            if (metadataMatcher == MetadataMatcher.getDefaultInstance()) {
                return this;
            }
            if (!metadataMatcher.getFilter().isEmpty()) {
                this.f50353f = metadataMatcher.filter_;
                R();
            }
            if (this.f50355h == null) {
                if (!metadataMatcher.path_.isEmpty()) {
                    if (this.f50354g.isEmpty()) {
                        this.f50354g = metadataMatcher.path_;
                        this.f50352e &= -2;
                    } else {
                        a0();
                        this.f50354g.addAll(metadataMatcher.path_);
                    }
                    R();
                }
            } else if (!metadataMatcher.path_.isEmpty()) {
                if (this.f50355h.k()) {
                    this.f50355h.f();
                    this.f50355h = null;
                    this.f50354g = metadataMatcher.path_;
                    this.f50352e &= -2;
                    this.f50355h = GeneratedMessageV3.alwaysUseFieldBuilders ? d0() : null;
                } else {
                    this.f50355h.b(metadataMatcher.path_);
                }
            }
            if (metadataMatcher.hasValue()) {
                k0(metadataMatcher.getValue());
            }
            z(((GeneratedMessageV3) metadataMatcher).unknownFields);
            R();
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
        /* renamed from: j0 */
        public final c z(h3 h3Var) {
            return (c) super.z(h3Var);
        }

        public c k0(ValueMatcher valueMatcher) {
            q2<ValueMatcher, ValueMatcher.c, r> q2Var = this.f50357j;
            if (q2Var == null) {
                ValueMatcher valueMatcher2 = this.f50356i;
                if (valueMatcher2 != null) {
                    this.f50356i = ValueMatcher.newBuilder(valueMatcher2).h0(valueMatcher).I();
                } else {
                    this.f50356i = valueMatcher;
                }
                R();
            } else {
                q2Var.e(valueMatcher);
            }
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: l0 */
        public c c(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (c) super.c(fieldDescriptor, obj);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: m0 */
        public final c f1(h3 h3Var) {
            return (c) super.f1(h3Var);
        }

        /* synthetic */ c(a aVar) {
            this();
        }

        private c() {
            this.f50353f = "";
            this.f50354g = Collections.emptyList();
            e0();
        }

        private c(GeneratedMessageV3.c cVar) {
            super(cVar);
            this.f50353f = "";
            this.f50354g = Collections.emptyList();
            e0();
        }
    }

    /* loaded from: classes6.dex */
    public interface d extends r1 {
    }

    /* synthetic */ MetadataMatcher(com.google.protobuf.p pVar, f0 f0Var, a aVar) throws InvalidProtocolBufferException {
        this(pVar, f0Var);
    }

    public static MetadataMatcher getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static final Descriptors.b getDescriptor() {
        return e.f50397a;
    }

    public static c newBuilder() {
        return DEFAULT_INSTANCE.toBuilder();
    }

    public static MetadataMatcher parseDelimitedFrom(InputStream inputStream) throws IOException {
        return (MetadataMatcher) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
    }

    public static MetadataMatcher parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
        return PARSER.l(byteBuffer);
    }

    public static e2<MetadataMatcher> parser() {
        return PARSER;
    }

    @Override // com.google.protobuf.a
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof MetadataMatcher)) {
            return super.equals(obj);
        }
        MetadataMatcher metadataMatcher = (MetadataMatcher) obj;
        if (getFilter().equals(metadataMatcher.getFilter()) && getPathList().equals(metadataMatcher.getPathList()) && hasValue() == metadataMatcher.hasValue()) {
            return (!hasValue() || getValue().equals(metadataMatcher.getValue())) && this.unknownFields.equals(metadataMatcher.unknownFields);
        }
        return false;
    }

    public String getFilter() {
        Object obj = this.filter_;
        if (obj instanceof String) {
            return (String) obj;
        }
        String stringUtf8 = ((ByteString) obj).toStringUtf8();
        this.filter_ = stringUtf8;
        return stringUtf8;
    }

    public ByteString getFilterBytes() {
        Object obj = this.filter_;
        if (obj instanceof String) {
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.filter_ = copyFromUtf8;
            return copyFromUtf8;
        }
        return (ByteString) obj;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public e2<MetadataMatcher> getParserForType() {
        return PARSER;
    }

    public PathSegment getPath(int i9) {
        return this.path_.get(i9);
    }

    public int getPathCount() {
        return this.path_.size();
    }

    public List<PathSegment> getPathList() {
        return this.path_;
    }

    public d getPathOrBuilder(int i9) {
        return this.path_.get(i9);
    }

    public List<? extends d> getPathOrBuilderList() {
        return this.path_;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public int getSerializedSize() {
        int i9 = this.memoizedSize;
        if (i9 != -1) {
            return i9;
        }
        int computeStringSize = !GeneratedMessageV3.isStringEmpty(this.filter_) ? GeneratedMessageV3.computeStringSize(1, this.filter_) + 0 : 0;
        for (int i10 = 0; i10 < this.path_.size(); i10++) {
            computeStringSize += CodedOutputStream.G(2, this.path_.get(i10));
        }
        if (this.value_ != null) {
            computeStringSize += CodedOutputStream.G(3, getValue());
        }
        int serializedSize = computeStringSize + this.unknownFields.getSerializedSize();
        this.memoizedSize = serializedSize;
        return serializedSize;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.r1
    public final h3 getUnknownFields() {
        return this.unknownFields;
    }

    public ValueMatcher getValue() {
        ValueMatcher valueMatcher = this.value_;
        return valueMatcher == null ? ValueMatcher.getDefaultInstance() : valueMatcher;
    }

    public r getValueOrBuilder() {
        return getValue();
    }

    public boolean hasValue() {
        return this.value_ != null;
    }

    @Override // com.google.protobuf.a
    public int hashCode() {
        int i9 = this.memoizedHashCode;
        if (i9 != 0) {
            return i9;
        }
        int hashCode = ((((779 + getDescriptor().hashCode()) * 37) + 1) * 53) + getFilter().hashCode();
        if (getPathCount() > 0) {
            hashCode = (((hashCode * 37) + 2) * 53) + getPathList().hashCode();
        }
        if (hasValue()) {
            hashCode = (((hashCode * 37) + 3) * 53) + getValue().hashCode();
        }
        int hashCode2 = (hashCode * 29) + this.unknownFields.hashCode();
        this.memoizedHashCode = hashCode2;
        return hashCode2;
    }

    @Override // com.google.protobuf.GeneratedMessageV3
    protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
        return e.f50398b.d(MetadataMatcher.class, c.class);
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
        return new MetadataMatcher();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
        if (!GeneratedMessageV3.isStringEmpty(this.filter_)) {
            GeneratedMessageV3.writeString(codedOutputStream, 1, this.filter_);
        }
        for (int i9 = 0; i9 < this.path_.size(); i9++) {
            codedOutputStream.L0(2, this.path_.get(i9));
        }
        if (this.value_ != null) {
            codedOutputStream.L0(3, getValue());
        }
        this.unknownFields.writeTo(codedOutputStream);
    }

    /* synthetic */ MetadataMatcher(GeneratedMessageV3.b bVar, a aVar) {
        this(bVar);
    }

    public static c newBuilder(MetadataMatcher metadataMatcher) {
        return DEFAULT_INSTANCE.toBuilder().i0(metadataMatcher);
    }

    public static MetadataMatcher parseFrom(ByteBuffer byteBuffer, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.f(byteBuffer, f0Var);
    }

    private MetadataMatcher(GeneratedMessageV3.b<?> bVar) {
        super(bVar);
        this.memoizedIsInitialized = (byte) -1;
    }

    public static MetadataMatcher parseDelimitedFrom(InputStream inputStream, f0 f0Var) throws IOException {
        return (MetadataMatcher) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
    }

    public static MetadataMatcher parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
        return PARSER.c(byteString);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.p1, com.google.protobuf.r1
    public MetadataMatcher getDefaultInstanceForType() {
        return DEFAULT_INSTANCE;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public c toBuilder() {
        return this == DEFAULT_INSTANCE ? new c((a) null) : new c((a) null).i0(this);
    }

    public static MetadataMatcher parseFrom(ByteString byteString, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.b(byteString, f0Var);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public c newBuilderForType() {
        return newBuilder();
    }

    private MetadataMatcher() {
        this.memoizedIsInitialized = (byte) -1;
        this.filter_ = "";
        this.path_ = Collections.emptyList();
    }

    public static MetadataMatcher parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
        return PARSER.a(bArr);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.protobuf.GeneratedMessageV3
    public c newBuilderForType(GeneratedMessageV3.c cVar) {
        return new c(cVar, null);
    }

    public static MetadataMatcher parseFrom(byte[] bArr, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.g(bArr, f0Var);
    }

    public static MetadataMatcher parseFrom(InputStream inputStream) throws IOException {
        return (MetadataMatcher) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
    }

    private MetadataMatcher(com.google.protobuf.p pVar, f0 f0Var) throws InvalidProtocolBufferException {
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
                            this.filter_ = pVar.K();
                        } else if (L == 18) {
                            if (!(z11 & true)) {
                                this.path_ = new ArrayList();
                                z11 |= true;
                            }
                            this.path_.add((PathSegment) pVar.B(PathSegment.parser(), f0Var));
                        } else if (L != 26) {
                            if (!parseUnknownField(pVar, h10, f0Var, L)) {
                            }
                        } else {
                            ValueMatcher valueMatcher = this.value_;
                            ValueMatcher.c builder = valueMatcher != null ? valueMatcher.toBuilder() : null;
                            ValueMatcher valueMatcher2 = (ValueMatcher) pVar.B(ValueMatcher.parser(), f0Var);
                            this.value_ = valueMatcher2;
                            if (builder != null) {
                                builder.h0(valueMatcher2);
                                this.value_ = builder.I();
                            }
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
                    this.path_ = Collections.unmodifiableList(this.path_);
                }
                this.unknownFields = h10.build();
                makeExtensionsImmutable();
            }
        }
    }

    public static MetadataMatcher parseFrom(InputStream inputStream, f0 f0Var) throws IOException {
        return (MetadataMatcher) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
    }

    public static MetadataMatcher parseFrom(com.google.protobuf.p pVar) throws IOException {
        return (MetadataMatcher) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
    }

    public static MetadataMatcher parseFrom(com.google.protobuf.p pVar, f0 f0Var) throws IOException {
        return (MetadataMatcher) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
    }
}
