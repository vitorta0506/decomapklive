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
import io.grpc.xds.shaded.io.envoyproxy.envoy.type.matcher.v3.StringMatcher;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Objects;
/* loaded from: classes6.dex */
public final class ListStringMatcher extends GeneratedMessageV3 implements c {
    private static final ListStringMatcher DEFAULT_INSTANCE = new ListStringMatcher();
    private static final e2<ListStringMatcher> PARSER = new a();
    public static final int PATTERNS_FIELD_NUMBER = 1;
    private static final long serialVersionUID = 0;
    private byte memoizedIsInitialized;
    private List<StringMatcher> patterns_;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes6.dex */
    public class a extends com.google.protobuf.c<ListStringMatcher> {
        a() {
        }

        @Override // com.google.protobuf.e2
        /* renamed from: G */
        public ListStringMatcher m(com.google.protobuf.p pVar, f0 f0Var) throws InvalidProtocolBufferException {
            return new ListStringMatcher(pVar, f0Var, null);
        }
    }

    /* loaded from: classes6.dex */
    public static final class b extends GeneratedMessageV3.b<b> implements c {

        /* renamed from: e  reason: collision with root package name */
        private int f50346e;

        /* renamed from: f  reason: collision with root package name */
        private List<StringMatcher> f50347f;

        /* renamed from: g  reason: collision with root package name */
        private l2<StringMatcher, StringMatcher.c, n> f50348g;

        /* synthetic */ b(GeneratedMessageV3.c cVar, a aVar) {
            this(cVar);
        }

        private void a0() {
            if ((this.f50346e & 1) == 0) {
                this.f50347f = new ArrayList(this.f50347f);
                this.f50346e |= 1;
            }
        }

        private l2<StringMatcher, StringMatcher.c, n> d0() {
            if (this.f50348g == null) {
                this.f50348g = new l2<>(this.f50347f, (this.f50346e & 1) != 0, H(), O());
                this.f50347f = null;
            }
            return this.f50348g;
        }

        private void e0() {
            if (GeneratedMessageV3.alwaysUseFieldBuilders) {
                d0();
            }
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b
        protected GeneratedMessageV3.e K() {
            return o.f50421d.d(ListStringMatcher.class, b.class);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: W */
        public b L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (b) super.L(fieldDescriptor, obj);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: X */
        public ListStringMatcher build() {
            ListStringMatcher I = I();
            if (I.isInitialized()) {
                return I;
            }
            throw a.AbstractC0142a.A(I);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: Y */
        public ListStringMatcher I() {
            ListStringMatcher listStringMatcher = new ListStringMatcher(this, (a) null);
            int i9 = this.f50346e;
            l2<StringMatcher, StringMatcher.c, n> l2Var = this.f50348g;
            if (l2Var == null) {
                if ((i9 & 1) != 0) {
                    this.f50347f = Collections.unmodifiableList(this.f50347f);
                    this.f50346e &= -2;
                }
                listStringMatcher.patterns_ = this.f50347f;
            } else {
                listStringMatcher.patterns_ = l2Var.e();
            }
            Q();
            return listStringMatcher;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
        /* renamed from: Z */
        public b n() {
            return (b) super.n();
        }

        @Override // com.google.protobuf.p1, com.google.protobuf.r1
        /* renamed from: b0 */
        public ListStringMatcher getDefaultInstanceForType() {
            return ListStringMatcher.getDefaultInstance();
        }

        /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: g0 */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public io.grpc.xds.shaded.io.envoyproxy.envoy.type.matcher.v3.ListStringMatcher.b u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
            /*
                r2 = this;
                r0 = 0
                com.google.protobuf.e2 r1 = io.grpc.xds.shaded.io.envoyproxy.envoy.type.matcher.v3.ListStringMatcher.access$700()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                io.grpc.xds.shaded.io.envoyproxy.envoy.type.matcher.v3.ListStringMatcher r3 = (io.grpc.xds.shaded.io.envoyproxy.envoy.type.matcher.v3.ListStringMatcher) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
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
                io.grpc.xds.shaded.io.envoyproxy.envoy.type.matcher.v3.ListStringMatcher r4 = (io.grpc.xds.shaded.io.envoyproxy.envoy.type.matcher.v3.ListStringMatcher) r4     // Catch: java.lang.Throwable -> L11
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
            throw new UnsupportedOperationException("Method not decompiled: io.grpc.xds.shaded.io.envoyproxy.envoy.type.matcher.v3.ListStringMatcher.b.u(com.google.protobuf.p, com.google.protobuf.f0):io.grpc.xds.shaded.io.envoyproxy.envoy.type.matcher.v3.ListStringMatcher$b");
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
        public Descriptors.b getDescriptorForType() {
            return o.f50420c;
        }

        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: h0 */
        public b v(l1 l1Var) {
            if (l1Var instanceof ListStringMatcher) {
                return i0((ListStringMatcher) l1Var);
            }
            super.P0(l1Var);
            return this;
        }

        public b i0(ListStringMatcher listStringMatcher) {
            if (listStringMatcher == ListStringMatcher.getDefaultInstance()) {
                return this;
            }
            if (this.f50348g == null) {
                if (!listStringMatcher.patterns_.isEmpty()) {
                    if (this.f50347f.isEmpty()) {
                        this.f50347f = listStringMatcher.patterns_;
                        this.f50346e &= -2;
                    } else {
                        a0();
                        this.f50347f.addAll(listStringMatcher.patterns_);
                    }
                    R();
                }
            } else if (!listStringMatcher.patterns_.isEmpty()) {
                if (this.f50348g.k()) {
                    this.f50348g.f();
                    this.f50348g = null;
                    this.f50347f = listStringMatcher.patterns_;
                    this.f50346e &= -2;
                    this.f50348g = GeneratedMessageV3.alwaysUseFieldBuilders ? d0() : null;
                } else {
                    this.f50348g.b(listStringMatcher.patterns_);
                }
            }
            z(((GeneratedMessageV3) listStringMatcher).unknownFields);
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
            this.f50347f = Collections.emptyList();
            e0();
        }

        private b(GeneratedMessageV3.c cVar) {
            super(cVar);
            this.f50347f = Collections.emptyList();
            e0();
        }
    }

    /* synthetic */ ListStringMatcher(com.google.protobuf.p pVar, f0 f0Var, a aVar) throws InvalidProtocolBufferException {
        this(pVar, f0Var);
    }

    public static ListStringMatcher getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static final Descriptors.b getDescriptor() {
        return o.f50420c;
    }

    public static b newBuilder() {
        return DEFAULT_INSTANCE.toBuilder();
    }

    public static ListStringMatcher parseDelimitedFrom(InputStream inputStream) throws IOException {
        return (ListStringMatcher) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
    }

    public static ListStringMatcher parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
        return PARSER.l(byteBuffer);
    }

    public static e2<ListStringMatcher> parser() {
        return PARSER;
    }

    @Override // com.google.protobuf.a
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof ListStringMatcher)) {
            return super.equals(obj);
        }
        ListStringMatcher listStringMatcher = (ListStringMatcher) obj;
        return getPatternsList().equals(listStringMatcher.getPatternsList()) && this.unknownFields.equals(listStringMatcher.unknownFields);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public e2<ListStringMatcher> getParserForType() {
        return PARSER;
    }

    public StringMatcher getPatterns(int i9) {
        return this.patterns_.get(i9);
    }

    public int getPatternsCount() {
        return this.patterns_.size();
    }

    public List<StringMatcher> getPatternsList() {
        return this.patterns_;
    }

    public n getPatternsOrBuilder(int i9) {
        return this.patterns_.get(i9);
    }

    public List<? extends n> getPatternsOrBuilderList() {
        return this.patterns_;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public int getSerializedSize() {
        int i9 = this.memoizedSize;
        if (i9 != -1) {
            return i9;
        }
        int i10 = 0;
        for (int i11 = 0; i11 < this.patterns_.size(); i11++) {
            i10 += CodedOutputStream.G(1, this.patterns_.get(i11));
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
        if (getPatternsCount() > 0) {
            hashCode = (((hashCode * 37) + 1) * 53) + getPatternsList().hashCode();
        }
        int hashCode2 = (hashCode * 29) + this.unknownFields.hashCode();
        this.memoizedHashCode = hashCode2;
        return hashCode2;
    }

    @Override // com.google.protobuf.GeneratedMessageV3
    protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
        return o.f50421d.d(ListStringMatcher.class, b.class);
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
        return new ListStringMatcher();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
        for (int i9 = 0; i9 < this.patterns_.size(); i9++) {
            codedOutputStream.L0(1, this.patterns_.get(i9));
        }
        this.unknownFields.writeTo(codedOutputStream);
    }

    /* synthetic */ ListStringMatcher(GeneratedMessageV3.b bVar, a aVar) {
        this(bVar);
    }

    public static b newBuilder(ListStringMatcher listStringMatcher) {
        return DEFAULT_INSTANCE.toBuilder().i0(listStringMatcher);
    }

    public static ListStringMatcher parseFrom(ByteBuffer byteBuffer, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.f(byteBuffer, f0Var);
    }

    private ListStringMatcher(GeneratedMessageV3.b<?> bVar) {
        super(bVar);
        this.memoizedIsInitialized = (byte) -1;
    }

    public static ListStringMatcher parseDelimitedFrom(InputStream inputStream, f0 f0Var) throws IOException {
        return (ListStringMatcher) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
    }

    public static ListStringMatcher parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
        return PARSER.c(byteString);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.p1, com.google.protobuf.r1
    public ListStringMatcher getDefaultInstanceForType() {
        return DEFAULT_INSTANCE;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public b toBuilder() {
        return this == DEFAULT_INSTANCE ? new b((a) null) : new b((a) null).i0(this);
    }

    public static ListStringMatcher parseFrom(ByteString byteString, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.b(byteString, f0Var);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public b newBuilderForType() {
        return newBuilder();
    }

    private ListStringMatcher() {
        this.memoizedIsInitialized = (byte) -1;
        this.patterns_ = Collections.emptyList();
    }

    public static ListStringMatcher parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
        return PARSER.a(bArr);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.protobuf.GeneratedMessageV3
    public b newBuilderForType(GeneratedMessageV3.c cVar) {
        return new b(cVar, null);
    }

    public static ListStringMatcher parseFrom(byte[] bArr, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.g(bArr, f0Var);
    }

    public static ListStringMatcher parseFrom(InputStream inputStream) throws IOException {
        return (ListStringMatcher) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
    }

    private ListStringMatcher(com.google.protobuf.p pVar, f0 f0Var) throws InvalidProtocolBufferException {
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
                                this.patterns_ = new ArrayList();
                                z11 |= true;
                            }
                            this.patterns_.add((StringMatcher) pVar.B(StringMatcher.parser(), f0Var));
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
                    this.patterns_ = Collections.unmodifiableList(this.patterns_);
                }
                this.unknownFields = h10.build();
                makeExtensionsImmutable();
            }
        }
    }

    public static ListStringMatcher parseFrom(InputStream inputStream, f0 f0Var) throws IOException {
        return (ListStringMatcher) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
    }

    public static ListStringMatcher parseFrom(com.google.protobuf.p pVar) throws IOException {
        return (ListStringMatcher) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
    }

    public static ListStringMatcher parseFrom(com.google.protobuf.p pVar, f0 f0Var) throws IOException {
        return (ListStringMatcher) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
    }
}
