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
public final class StructMatcher extends GeneratedMessageV3 implements p {
    private static final StructMatcher DEFAULT_INSTANCE = new StructMatcher();
    private static final e2<StructMatcher> PARSER = new a();
    public static final int PATH_FIELD_NUMBER = 2;
    public static final int VALUE_FIELD_NUMBER = 3;
    private static final long serialVersionUID = 0;
    private byte memoizedIsInitialized;
    private List<PathSegment> path_;
    private ValueMatcher value_;

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
            private int f50382e;

            /* renamed from: f  reason: collision with root package name */
            private Object f50383f;

            /* synthetic */ b(GeneratedMessageV3.c cVar, a aVar) {
                this(cVar);
            }

            private void b0() {
                boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b
            protected GeneratedMessageV3.e K() {
                return q.f50426d.d(PathSegment.class, b.class);
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
                if (this.f50382e == 1) {
                    pathSegment.segment_ = this.f50383f;
                }
                pathSegment.segmentCase_ = this.f50382e;
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
            public io.grpc.xds.shaded.io.envoyproxy.envoy.type.matcher.v3.StructMatcher.PathSegment.b u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
                /*
                    r2 = this;
                    r0 = 0
                    com.google.protobuf.e2 r1 = io.grpc.xds.shaded.io.envoyproxy.envoy.type.matcher.v3.StructMatcher.PathSegment.access$700()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                    java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                    io.grpc.xds.shaded.io.envoyproxy.envoy.type.matcher.v3.StructMatcher$PathSegment r3 = (io.grpc.xds.shaded.io.envoyproxy.envoy.type.matcher.v3.StructMatcher.PathSegment) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
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
                    io.grpc.xds.shaded.io.envoyproxy.envoy.type.matcher.v3.StructMatcher$PathSegment r4 = (io.grpc.xds.shaded.io.envoyproxy.envoy.type.matcher.v3.StructMatcher.PathSegment) r4     // Catch: java.lang.Throwable -> L11
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
                throw new UnsupportedOperationException("Method not decompiled: io.grpc.xds.shaded.io.envoyproxy.envoy.type.matcher.v3.StructMatcher.PathSegment.b.u(com.google.protobuf.p, com.google.protobuf.f0):io.grpc.xds.shaded.io.envoyproxy.envoy.type.matcher.v3.StructMatcher$PathSegment$b");
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
                if (b.f50384a[pathSegment.getSegmentCase().ordinal()] == 1) {
                    this.f50382e = 1;
                    this.f50383f = pathSegment.segment_;
                    R();
                }
                z(((GeneratedMessageV3) pathSegment).unknownFields);
                R();
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
            public Descriptors.b getDescriptorForType() {
                return q.f50425c;
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
                this.f50382e = 0;
                b0();
            }

            private b(GeneratedMessageV3.c cVar) {
                super(cVar);
                this.f50382e = 0;
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
            return q.f50425c;
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
            return q.f50426d.d(PathSegment.class, b.class);
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
    public class a extends com.google.protobuf.c<StructMatcher> {
        a() {
        }

        @Override // com.google.protobuf.e2
        /* renamed from: G */
        public StructMatcher m(com.google.protobuf.p pVar, f0 f0Var) throws InvalidProtocolBufferException {
            return new StructMatcher(pVar, f0Var, null);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes6.dex */
    public static /* synthetic */ class b {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f50384a;

        static {
            int[] iArr = new int[PathSegment.SegmentCase.values().length];
            f50384a = iArr;
            try {
                iArr[PathSegment.SegmentCase.KEY.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f50384a[PathSegment.SegmentCase.SEGMENT_NOT_SET.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    /* loaded from: classes6.dex */
    public static final class c extends GeneratedMessageV3.b<c> implements p {

        /* renamed from: e  reason: collision with root package name */
        private int f50385e;

        /* renamed from: f  reason: collision with root package name */
        private List<PathSegment> f50386f;

        /* renamed from: g  reason: collision with root package name */
        private l2<PathSegment, PathSegment.b, d> f50387g;

        /* renamed from: h  reason: collision with root package name */
        private ValueMatcher f50388h;

        /* renamed from: i  reason: collision with root package name */
        private q2<ValueMatcher, ValueMatcher.c, r> f50389i;

        /* synthetic */ c(GeneratedMessageV3.c cVar, a aVar) {
            this(cVar);
        }

        private void a0() {
            if ((this.f50385e & 1) == 0) {
                this.f50386f = new ArrayList(this.f50386f);
                this.f50385e |= 1;
            }
        }

        private l2<PathSegment, PathSegment.b, d> d0() {
            if (this.f50387g == null) {
                this.f50387g = new l2<>(this.f50386f, (this.f50385e & 1) != 0, H(), O());
                this.f50386f = null;
            }
            return this.f50387g;
        }

        private void e0() {
            if (GeneratedMessageV3.alwaysUseFieldBuilders) {
                d0();
            }
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b
        protected GeneratedMessageV3.e K() {
            return q.f50424b.d(StructMatcher.class, c.class);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: W */
        public c L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (c) super.L(fieldDescriptor, obj);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: X */
        public StructMatcher build() {
            StructMatcher I = I();
            if (I.isInitialized()) {
                return I;
            }
            throw a.AbstractC0142a.A(I);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: Y */
        public StructMatcher I() {
            StructMatcher structMatcher = new StructMatcher(this, (a) null);
            int i9 = this.f50385e;
            l2<PathSegment, PathSegment.b, d> l2Var = this.f50387g;
            if (l2Var == null) {
                if ((i9 & 1) != 0) {
                    this.f50386f = Collections.unmodifiableList(this.f50386f);
                    this.f50385e &= -2;
                }
                structMatcher.path_ = this.f50386f;
            } else {
                structMatcher.path_ = l2Var.e();
            }
            q2<ValueMatcher, ValueMatcher.c, r> q2Var = this.f50389i;
            if (q2Var == null) {
                structMatcher.value_ = this.f50388h;
            } else {
                structMatcher.value_ = q2Var.b();
            }
            Q();
            return structMatcher;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
        /* renamed from: Z */
        public c n() {
            return (c) super.n();
        }

        @Override // com.google.protobuf.p1, com.google.protobuf.r1
        /* renamed from: b0 */
        public StructMatcher getDefaultInstanceForType() {
            return StructMatcher.getDefaultInstance();
        }

        /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: g0 */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public io.grpc.xds.shaded.io.envoyproxy.envoy.type.matcher.v3.StructMatcher.c u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
            /*
                r2 = this;
                r0 = 0
                com.google.protobuf.e2 r1 = io.grpc.xds.shaded.io.envoyproxy.envoy.type.matcher.v3.StructMatcher.access$1800()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                io.grpc.xds.shaded.io.envoyproxy.envoy.type.matcher.v3.StructMatcher r3 = (io.grpc.xds.shaded.io.envoyproxy.envoy.type.matcher.v3.StructMatcher) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
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
                io.grpc.xds.shaded.io.envoyproxy.envoy.type.matcher.v3.StructMatcher r4 = (io.grpc.xds.shaded.io.envoyproxy.envoy.type.matcher.v3.StructMatcher) r4     // Catch: java.lang.Throwable -> L11
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
            throw new UnsupportedOperationException("Method not decompiled: io.grpc.xds.shaded.io.envoyproxy.envoy.type.matcher.v3.StructMatcher.c.u(com.google.protobuf.p, com.google.protobuf.f0):io.grpc.xds.shaded.io.envoyproxy.envoy.type.matcher.v3.StructMatcher$c");
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
        public Descriptors.b getDescriptorForType() {
            return q.f50423a;
        }

        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: h0 */
        public c v(l1 l1Var) {
            if (l1Var instanceof StructMatcher) {
                return i0((StructMatcher) l1Var);
            }
            super.P0(l1Var);
            return this;
        }

        public c i0(StructMatcher structMatcher) {
            if (structMatcher == StructMatcher.getDefaultInstance()) {
                return this;
            }
            if (this.f50387g == null) {
                if (!structMatcher.path_.isEmpty()) {
                    if (this.f50386f.isEmpty()) {
                        this.f50386f = structMatcher.path_;
                        this.f50385e &= -2;
                    } else {
                        a0();
                        this.f50386f.addAll(structMatcher.path_);
                    }
                    R();
                }
            } else if (!structMatcher.path_.isEmpty()) {
                if (this.f50387g.k()) {
                    this.f50387g.f();
                    this.f50387g = null;
                    this.f50386f = structMatcher.path_;
                    this.f50385e &= -2;
                    this.f50387g = GeneratedMessageV3.alwaysUseFieldBuilders ? d0() : null;
                } else {
                    this.f50387g.b(structMatcher.path_);
                }
            }
            if (structMatcher.hasValue()) {
                k0(structMatcher.getValue());
            }
            z(((GeneratedMessageV3) structMatcher).unknownFields);
            R();
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
        /* renamed from: j0 */
        public final c z(h3 h3Var) {
            return (c) super.z(h3Var);
        }

        public c k0(ValueMatcher valueMatcher) {
            q2<ValueMatcher, ValueMatcher.c, r> q2Var = this.f50389i;
            if (q2Var == null) {
                ValueMatcher valueMatcher2 = this.f50388h;
                if (valueMatcher2 != null) {
                    this.f50388h = ValueMatcher.newBuilder(valueMatcher2).h0(valueMatcher).I();
                } else {
                    this.f50388h = valueMatcher;
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
            this.f50386f = Collections.emptyList();
            e0();
        }

        private c(GeneratedMessageV3.c cVar) {
            super(cVar);
            this.f50386f = Collections.emptyList();
            e0();
        }
    }

    /* loaded from: classes6.dex */
    public interface d extends r1 {
    }

    /* synthetic */ StructMatcher(com.google.protobuf.p pVar, f0 f0Var, a aVar) throws InvalidProtocolBufferException {
        this(pVar, f0Var);
    }

    public static StructMatcher getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static final Descriptors.b getDescriptor() {
        return q.f50423a;
    }

    public static c newBuilder() {
        return DEFAULT_INSTANCE.toBuilder();
    }

    public static StructMatcher parseDelimitedFrom(InputStream inputStream) throws IOException {
        return (StructMatcher) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
    }

    public static StructMatcher parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
        return PARSER.l(byteBuffer);
    }

    public static e2<StructMatcher> parser() {
        return PARSER;
    }

    @Override // com.google.protobuf.a
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof StructMatcher)) {
            return super.equals(obj);
        }
        StructMatcher structMatcher = (StructMatcher) obj;
        if (getPathList().equals(structMatcher.getPathList()) && hasValue() == structMatcher.hasValue()) {
            return (!hasValue() || getValue().equals(structMatcher.getValue())) && this.unknownFields.equals(structMatcher.unknownFields);
        }
        return false;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public e2<StructMatcher> getParserForType() {
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
        int i10 = 0;
        for (int i11 = 0; i11 < this.path_.size(); i11++) {
            i10 += CodedOutputStream.G(2, this.path_.get(i11));
        }
        if (this.value_ != null) {
            i10 += CodedOutputStream.G(3, getValue());
        }
        int serializedSize = i10 + this.unknownFields.getSerializedSize();
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
        int hashCode = 779 + getDescriptor().hashCode();
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
        return q.f50424b.d(StructMatcher.class, c.class);
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
        return new StructMatcher();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
        for (int i9 = 0; i9 < this.path_.size(); i9++) {
            codedOutputStream.L0(2, this.path_.get(i9));
        }
        if (this.value_ != null) {
            codedOutputStream.L0(3, getValue());
        }
        this.unknownFields.writeTo(codedOutputStream);
    }

    /* synthetic */ StructMatcher(GeneratedMessageV3.b bVar, a aVar) {
        this(bVar);
    }

    public static c newBuilder(StructMatcher structMatcher) {
        return DEFAULT_INSTANCE.toBuilder().i0(structMatcher);
    }

    public static StructMatcher parseFrom(ByteBuffer byteBuffer, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.f(byteBuffer, f0Var);
    }

    private StructMatcher(GeneratedMessageV3.b<?> bVar) {
        super(bVar);
        this.memoizedIsInitialized = (byte) -1;
    }

    public static StructMatcher parseDelimitedFrom(InputStream inputStream, f0 f0Var) throws IOException {
        return (StructMatcher) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
    }

    public static StructMatcher parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
        return PARSER.c(byteString);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.p1, com.google.protobuf.r1
    public StructMatcher getDefaultInstanceForType() {
        return DEFAULT_INSTANCE;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public c toBuilder() {
        return this == DEFAULT_INSTANCE ? new c((a) null) : new c((a) null).i0(this);
    }

    public static StructMatcher parseFrom(ByteString byteString, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.b(byteString, f0Var);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public c newBuilderForType() {
        return newBuilder();
    }

    private StructMatcher() {
        this.memoizedIsInitialized = (byte) -1;
        this.path_ = Collections.emptyList();
    }

    public static StructMatcher parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
        return PARSER.a(bArr);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.protobuf.GeneratedMessageV3
    public c newBuilderForType(GeneratedMessageV3.c cVar) {
        return new c(cVar, null);
    }

    public static StructMatcher parseFrom(byte[] bArr, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.g(bArr, f0Var);
    }

    public static StructMatcher parseFrom(InputStream inputStream) throws IOException {
        return (StructMatcher) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
    }

    private StructMatcher(com.google.protobuf.p pVar, f0 f0Var) throws InvalidProtocolBufferException {
        this();
        Objects.requireNonNull(f0Var);
        h3.b h10 = h3.h();
        boolean z10 = false;
        boolean z11 = false;
        while (!z10) {
            try {
                try {
                    try {
                        int L = pVar.L();
                        if (L != 0) {
                            if (L == 18) {
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
                    }
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

    public static StructMatcher parseFrom(InputStream inputStream, f0 f0Var) throws IOException {
        return (StructMatcher) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
    }

    public static StructMatcher parseFrom(com.google.protobuf.p pVar) throws IOException {
        return (StructMatcher) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
    }

    public static StructMatcher parseFrom(com.google.protobuf.p pVar, f0 f0Var) throws IOException {
        return (StructMatcher) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
    }
}
