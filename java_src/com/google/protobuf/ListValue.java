package com.google.protobuf;

import com.google.protobuf.Descriptors;
import com.google.protobuf.GeneratedMessageV3;
import com.google.protobuf.Value;
import com.google.protobuf.a;
import com.google.protobuf.h3;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Objects;
/* loaded from: classes3.dex */
public final class ListValue extends GeneratedMessageV3 implements b1 {
    private static final ListValue DEFAULT_INSTANCE = new ListValue();
    private static final e2<ListValue> PARSER = new a();
    public static final int VALUES_FIELD_NUMBER = 1;
    private static final long serialVersionUID = 0;
    private byte memoizedIsInitialized;
    private List<Value> values_;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public static class a extends c<ListValue> {
        a() {
        }

        @Override // com.google.protobuf.e2
        /* renamed from: G */
        public ListValue m(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
            return new ListValue(pVar, f0Var, null);
        }
    }

    /* loaded from: classes3.dex */
    public static final class b extends GeneratedMessageV3.b<b> implements b1 {

        /* renamed from: e  reason: collision with root package name */
        private int f14775e;

        /* renamed from: f  reason: collision with root package name */
        private List<Value> f14776f;

        /* renamed from: g  reason: collision with root package name */
        private l2<Value, Value.c, o3> f14777g;

        /* synthetic */ b(GeneratedMessageV3.c cVar, a aVar) {
            this(cVar);
        }

        private void b0() {
            if ((this.f14775e & 1) == 0) {
                this.f14776f = new ArrayList(this.f14776f);
                this.f14775e |= 1;
            }
        }

        private l2<Value, Value.c, o3> e0() {
            if (this.f14777g == null) {
                this.f14777g = new l2<>(this.f14776f, (this.f14775e & 1) != 0, H(), O());
                this.f14776f = null;
            }
            return this.f14777g;
        }

        private void g0() {
            if (GeneratedMessageV3.alwaysUseFieldBuilders) {
                e0();
            }
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b
        protected GeneratedMessageV3.e K() {
            return v2.f15307h.d(ListValue.class, b.class);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: W */
        public b L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (b) super.L(fieldDescriptor, obj);
        }

        public b X(Value value) {
            l2<Value, Value.c, o3> l2Var = this.f14777g;
            if (l2Var == null) {
                Objects.requireNonNull(value);
                b0();
                this.f14776f.add(value);
                R();
            } else {
                l2Var.d(value);
            }
            return this;
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: Y */
        public ListValue build() {
            ListValue I = I();
            if (I.isInitialized()) {
                return I;
            }
            throw a.AbstractC0142a.A(I);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: Z */
        public ListValue I() {
            ListValue listValue = new ListValue(this, (a) null);
            int i9 = this.f14775e;
            l2<Value, Value.c, o3> l2Var = this.f14777g;
            if (l2Var == null) {
                if ((i9 & 1) != 0) {
                    this.f14776f = Collections.unmodifiableList(this.f14776f);
                    this.f14775e &= -2;
                }
                listValue.values_ = this.f14776f;
            } else {
                listValue.values_ = l2Var.e();
            }
            Q();
            return listValue;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
        /* renamed from: a0 */
        public b n() {
            return (b) super.n();
        }

        @Override // com.google.protobuf.p1, com.google.protobuf.r1
        /* renamed from: d0 */
        public ListValue getDefaultInstanceForType() {
            return ListValue.getDefaultInstance();
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
        public Descriptors.b getDescriptorForType() {
            return v2.f15306g;
        }

        /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: h0 */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public com.google.protobuf.ListValue.b u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
            /*
                r2 = this;
                r0 = 0
                com.google.protobuf.e2 r1 = com.google.protobuf.ListValue.access$400()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                com.google.protobuf.ListValue r3 = (com.google.protobuf.ListValue) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
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
                com.google.protobuf.ListValue r4 = (com.google.protobuf.ListValue) r4     // Catch: java.lang.Throwable -> L11
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
            throw new UnsupportedOperationException("Method not decompiled: com.google.protobuf.ListValue.b.u(com.google.protobuf.p, com.google.protobuf.f0):com.google.protobuf.ListValue$b");
        }

        public b i0(ListValue listValue) {
            if (listValue == ListValue.getDefaultInstance()) {
                return this;
            }
            if (this.f14777g == null) {
                if (!listValue.values_.isEmpty()) {
                    if (this.f14776f.isEmpty()) {
                        this.f14776f = listValue.values_;
                        this.f14775e &= -2;
                    } else {
                        b0();
                        this.f14776f.addAll(listValue.values_);
                    }
                    R();
                }
            } else if (!listValue.values_.isEmpty()) {
                if (this.f14777g.k()) {
                    this.f14777g.f();
                    this.f14777g = null;
                    this.f14776f = listValue.values_;
                    this.f14775e &= -2;
                    this.f14777g = GeneratedMessageV3.alwaysUseFieldBuilders ? e0() : null;
                } else {
                    this.f14777g.b(listValue.values_);
                }
            }
            z(listValue.unknownFields);
            R();
            return this;
        }

        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: j0 */
        public b v(l1 l1Var) {
            if (l1Var instanceof ListValue) {
                return i0((ListValue) l1Var);
            }
            super.P0(l1Var);
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
        /* renamed from: k0 */
        public final b z(h3 h3Var) {
            return (b) super.z(h3Var);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: l0 */
        public b c(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (b) super.c(fieldDescriptor, obj);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: m0 */
        public final b f1(h3 h3Var) {
            return (b) super.f1(h3Var);
        }

        /* synthetic */ b(a aVar) {
            this();
        }

        private b() {
            this.f14776f = Collections.emptyList();
            g0();
        }

        private b(GeneratedMessageV3.c cVar) {
            super(cVar);
            this.f14776f = Collections.emptyList();
            g0();
        }
    }

    /* synthetic */ ListValue(p pVar, f0 f0Var, a aVar) throws InvalidProtocolBufferException {
        this(pVar, f0Var);
    }

    public static ListValue getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static final Descriptors.b getDescriptor() {
        return v2.f15306g;
    }

    public static b newBuilder() {
        return DEFAULT_INSTANCE.toBuilder();
    }

    public static ListValue parseDelimitedFrom(InputStream inputStream) throws IOException {
        return (ListValue) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
    }

    public static ListValue parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
        return PARSER.l(byteBuffer);
    }

    public static e2<ListValue> parser() {
        return PARSER;
    }

    @Override // com.google.protobuf.a
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof ListValue)) {
            return super.equals(obj);
        }
        ListValue listValue = (ListValue) obj;
        return getValuesList().equals(listValue.getValuesList()) && this.unknownFields.equals(listValue.unknownFields);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public e2<ListValue> getParserForType() {
        return PARSER;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public int getSerializedSize() {
        int i9 = this.memoizedSize;
        if (i9 != -1) {
            return i9;
        }
        int i10 = 0;
        for (int i11 = 0; i11 < this.values_.size(); i11++) {
            i10 += CodedOutputStream.G(1, this.values_.get(i11));
        }
        int serializedSize = i10 + this.unknownFields.getSerializedSize();
        this.memoizedSize = serializedSize;
        return serializedSize;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.r1
    public final h3 getUnknownFields() {
        return this.unknownFields;
    }

    public Value getValues(int i9) {
        return this.values_.get(i9);
    }

    public int getValuesCount() {
        return this.values_.size();
    }

    public List<Value> getValuesList() {
        return this.values_;
    }

    public o3 getValuesOrBuilder(int i9) {
        return this.values_.get(i9);
    }

    public List<? extends o3> getValuesOrBuilderList() {
        return this.values_;
    }

    @Override // com.google.protobuf.a
    public int hashCode() {
        int i9 = this.memoizedHashCode;
        if (i9 != 0) {
            return i9;
        }
        int hashCode = 779 + getDescriptor().hashCode();
        if (getValuesCount() > 0) {
            hashCode = (((hashCode * 37) + 1) * 53) + getValuesList().hashCode();
        }
        int hashCode2 = (hashCode * 29) + this.unknownFields.hashCode();
        this.memoizedHashCode = hashCode2;
        return hashCode2;
    }

    @Override // com.google.protobuf.GeneratedMessageV3
    protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
        return v2.f15307h.d(ListValue.class, b.class);
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
        return new ListValue();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
        for (int i9 = 0; i9 < this.values_.size(); i9++) {
            codedOutputStream.L0(1, this.values_.get(i9));
        }
        this.unknownFields.writeTo(codedOutputStream);
    }

    /* synthetic */ ListValue(GeneratedMessageV3.b bVar, a aVar) {
        this(bVar);
    }

    public static b newBuilder(ListValue listValue) {
        return DEFAULT_INSTANCE.toBuilder().i0(listValue);
    }

    public static ListValue parseFrom(ByteBuffer byteBuffer, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.f(byteBuffer, f0Var);
    }

    private ListValue(GeneratedMessageV3.b<?> bVar) {
        super(bVar);
        this.memoizedIsInitialized = (byte) -1;
    }

    public static ListValue parseDelimitedFrom(InputStream inputStream, f0 f0Var) throws IOException {
        return (ListValue) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
    }

    public static ListValue parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
        return PARSER.c(byteString);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.p1, com.google.protobuf.r1
    public ListValue getDefaultInstanceForType() {
        return DEFAULT_INSTANCE;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public b toBuilder() {
        return this == DEFAULT_INSTANCE ? new b((a) null) : new b((a) null).i0(this);
    }

    public static ListValue parseFrom(ByteString byteString, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.b(byteString, f0Var);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public b newBuilderForType() {
        return newBuilder();
    }

    private ListValue() {
        this.memoizedIsInitialized = (byte) -1;
        this.values_ = Collections.emptyList();
    }

    public static ListValue parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
        return PARSER.a(bArr);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.protobuf.GeneratedMessageV3
    public b newBuilderForType(GeneratedMessageV3.c cVar) {
        return new b(cVar, null);
    }

    public static ListValue parseFrom(byte[] bArr, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.g(bArr, f0Var);
    }

    public static ListValue parseFrom(InputStream inputStream) throws IOException {
        return (ListValue) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private ListValue(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
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
                                this.values_ = new ArrayList();
                                z11 |= true;
                            }
                            this.values_.add(pVar.B(Value.parser(), f0Var));
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
                    this.values_ = Collections.unmodifiableList(this.values_);
                }
                this.unknownFields = h10.build();
                makeExtensionsImmutable();
            }
        }
    }

    public static ListValue parseFrom(InputStream inputStream, f0 f0Var) throws IOException {
        return (ListValue) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
    }

    public static ListValue parseFrom(p pVar) throws IOException {
        return (ListValue) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
    }

    public static ListValue parseFrom(p pVar, f0 f0Var) throws IOException {
        return (ListValue) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
    }
}
