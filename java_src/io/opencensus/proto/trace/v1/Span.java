package io.opencensus.proto.trace.v1;

import com.google.protobuf.BoolValue;
import com.google.protobuf.ByteString;
import com.google.protobuf.CodedOutputStream;
import com.google.protobuf.Descriptors;
import com.google.protobuf.GeneratedMessageV3;
import com.google.protobuf.InvalidProtocolBufferException;
import com.google.protobuf.Timestamp;
import com.google.protobuf.UInt32Value;
import com.google.protobuf.WireFormat;
import com.google.protobuf.a;
import com.google.protobuf.e1;
import com.google.protobuf.e2;
import com.google.protobuf.e3;
import com.google.protobuf.f0;
import com.google.protobuf.g1;
import com.google.protobuf.h2;
import com.google.protobuf.h3;
import com.google.protobuf.l;
import com.google.protobuf.l1;
import com.google.protobuf.l2;
import com.google.protobuf.o1;
import com.google.protobuf.p;
import com.google.protobuf.q2;
import com.google.protobuf.r1;
import com.google.protobuf.u0;
import com.google.protobuf.z2;
import io.opencensus.proto.resource.v1.Resource;
import io.opencensus.proto.trace.v1.StackTrace;
import io.opencensus.proto.trace.v1.Status;
import io.opencensus.proto.trace.v1.TruncatableString;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Map;
import java.util.Objects;
/* loaded from: classes7.dex */
public final class Span extends GeneratedMessageV3 implements io.opencensus.proto.trace.v1.e {
    public static final int ATTRIBUTES_FIELD_NUMBER = 7;
    public static final int CHILD_SPAN_COUNT_FIELD_NUMBER = 13;
    public static final int END_TIME_FIELD_NUMBER = 6;
    public static final int KIND_FIELD_NUMBER = 14;
    public static final int LINKS_FIELD_NUMBER = 10;
    public static final int NAME_FIELD_NUMBER = 4;
    public static final int PARENT_SPAN_ID_FIELD_NUMBER = 3;
    public static final int RESOURCE_FIELD_NUMBER = 16;
    public static final int SAME_PROCESS_AS_PARENT_SPAN_FIELD_NUMBER = 12;
    public static final int SPAN_ID_FIELD_NUMBER = 2;
    public static final int STACK_TRACE_FIELD_NUMBER = 8;
    public static final int START_TIME_FIELD_NUMBER = 5;
    public static final int STATUS_FIELD_NUMBER = 11;
    public static final int TIME_EVENTS_FIELD_NUMBER = 9;
    public static final int TRACESTATE_FIELD_NUMBER = 15;
    public static final int TRACE_ID_FIELD_NUMBER = 1;
    private static final long serialVersionUID = 0;
    private Attributes attributes_;
    private UInt32Value childSpanCount_;
    private Timestamp endTime_;
    private int kind_;
    private Links links_;
    private byte memoizedIsInitialized;
    private TruncatableString name_;
    private ByteString parentSpanId_;
    private Resource resource_;
    private BoolValue sameProcessAsParentSpan_;
    private ByteString spanId_;
    private StackTrace stackTrace_;
    private Timestamp startTime_;
    private Status status_;
    private TimeEvents timeEvents_;
    private ByteString traceId_;
    private Tracestate tracestate_;
    private static final Span DEFAULT_INSTANCE = new Span();
    private static final e2<Span> PARSER = new a();

    /* loaded from: classes7.dex */
    public static final class Attributes extends GeneratedMessageV3 implements c {
        public static final int ATTRIBUTE_MAP_FIELD_NUMBER = 1;
        public static final int DROPPED_ATTRIBUTES_COUNT_FIELD_NUMBER = 2;
        private static final long serialVersionUID = 0;
        private g1<String, AttributeValue> attributeMap_;
        private int bitField0_;
        private int droppedAttributesCount_;
        private byte memoizedIsInitialized;
        private static final Attributes DEFAULT_INSTANCE = new Attributes();
        private static final e2<Attributes> PARSER = new a();

        /* loaded from: classes7.dex */
        static class a extends com.google.protobuf.c<Attributes> {
            a() {
            }

            @Override // com.google.protobuf.e2
            /* renamed from: G */
            public Attributes m(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
                return new Attributes(pVar, f0Var, null);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* loaded from: classes7.dex */
        public static final class b {

            /* renamed from: a  reason: collision with root package name */
            static final e1<String, AttributeValue> f51129a = e1.k(j.f51238i, WireFormat.FieldType.STRING, "", WireFormat.FieldType.MESSAGE, AttributeValue.getDefaultInstance());
        }

        /* loaded from: classes7.dex */
        public static final class c extends GeneratedMessageV3.b<c> implements c {

            /* renamed from: e  reason: collision with root package name */
            private g1<String, AttributeValue> f51130e;

            /* renamed from: f  reason: collision with root package name */
            private int f51131f;

            /* synthetic */ c(GeneratedMessageV3.c cVar, a aVar) {
                this(cVar);
            }

            private g1<String, AttributeValue> b0() {
                g1<String, AttributeValue> g1Var = this.f51130e;
                return g1Var == null ? g1.g(b.f51129a) : g1Var;
            }

            private g1<String, AttributeValue> d0() {
                R();
                if (this.f51130e == null) {
                    this.f51130e = g1.p(b.f51129a);
                }
                if (!this.f51130e.m()) {
                    this.f51130e = this.f51130e.f();
                }
                return this.f51130e;
            }

            private void e0() {
                boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b
            protected GeneratedMessageV3.e K() {
                return j.f51237h.d(Attributes.class, c.class);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b
            protected g1 M(int i9) {
                if (i9 == 1) {
                    return b0();
                }
                throw new RuntimeException("Invalid map field number: " + i9);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b
            protected g1 N(int i9) {
                if (i9 == 1) {
                    return d0();
                }
                throw new RuntimeException("Invalid map field number: " + i9);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
            /* renamed from: W */
            public c L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                return (c) super.L(fieldDescriptor, obj);
            }

            @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
            /* renamed from: X */
            public Attributes build() {
                Attributes I = I();
                if (I.isInitialized()) {
                    return I;
                }
                throw a.AbstractC0142a.A(I);
            }

            @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
            /* renamed from: Y */
            public Attributes I() {
                Attributes attributes = new Attributes(this, (a) null);
                attributes.attributeMap_ = b0();
                attributes.attributeMap_.n();
                attributes.droppedAttributesCount_ = this.f51131f;
                attributes.bitField0_ = 0;
                Q();
                return attributes;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
            /* renamed from: Z */
            public c n() {
                return (c) super.n();
            }

            @Override // com.google.protobuf.p1, com.google.protobuf.r1
            /* renamed from: a0 */
            public Attributes getDefaultInstanceForType() {
                return Attributes.getDefaultInstance();
            }

            /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
            @Override // com.google.protobuf.a.AbstractC0142a
            /* renamed from: g0 */
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public io.opencensus.proto.trace.v1.Span.Attributes.c u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
                /*
                    r2 = this;
                    r0 = 0
                    com.google.protobuf.e2 r1 = io.opencensus.proto.trace.v1.Span.Attributes.access$2900()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                    java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                    io.opencensus.proto.trace.v1.Span$Attributes r3 = (io.opencensus.proto.trace.v1.Span.Attributes) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
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
                    io.opencensus.proto.trace.v1.Span$Attributes r4 = (io.opencensus.proto.trace.v1.Span.Attributes) r4     // Catch: java.lang.Throwable -> L11
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
                throw new UnsupportedOperationException("Method not decompiled: io.opencensus.proto.trace.v1.Span.Attributes.c.u(com.google.protobuf.p, com.google.protobuf.f0):io.opencensus.proto.trace.v1.Span$Attributes$c");
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
            public Descriptors.b getDescriptorForType() {
                return j.f51236g;
            }

            @Override // com.google.protobuf.a.AbstractC0142a
            /* renamed from: h0 */
            public c v(l1 l1Var) {
                if (l1Var instanceof Attributes) {
                    return i0((Attributes) l1Var);
                }
                super.P0(l1Var);
                return this;
            }

            public c i0(Attributes attributes) {
                if (attributes == Attributes.getDefaultInstance()) {
                    return this;
                }
                d0().o(attributes.internalGetAttributeMap());
                if (attributes.getDroppedAttributesCount() != 0) {
                    k0(attributes.getDroppedAttributesCount());
                }
                z(((GeneratedMessageV3) attributes).unknownFields);
                R();
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
            /* renamed from: j0 */
            public final c z(h3 h3Var) {
                return (c) super.z(h3Var);
            }

            public c k0(int i9) {
                this.f51131f = i9;
                R();
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
                return (c) super.V(h3Var);
            }

            /* synthetic */ c(a aVar) {
                this();
            }

            private c() {
                e0();
            }

            private c(GeneratedMessageV3.c cVar) {
                super(cVar);
                e0();
            }
        }

        /* synthetic */ Attributes(p pVar, f0 f0Var, a aVar) throws InvalidProtocolBufferException {
            this(pVar, f0Var);
        }

        public static Attributes getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static final Descriptors.b getDescriptor() {
            return j.f51236g;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public g1<String, AttributeValue> internalGetAttributeMap() {
            g1<String, AttributeValue> g1Var = this.attributeMap_;
            return g1Var == null ? g1.g(b.f51129a) : g1Var;
        }

        public static c newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static Attributes parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (Attributes) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static Attributes parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.l(byteBuffer);
        }

        public static e2<Attributes> parser() {
            return PARSER;
        }

        public boolean containsAttributeMap(String str) {
            Objects.requireNonNull(str);
            return internalGetAttributeMap().i().containsKey(str);
        }

        @Override // com.google.protobuf.a
        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof Attributes)) {
                return super.equals(obj);
            }
            Attributes attributes = (Attributes) obj;
            return ((internalGetAttributeMap().equals(attributes.internalGetAttributeMap())) && getDroppedAttributesCount() == attributes.getDroppedAttributesCount()) && this.unknownFields.equals(attributes.unknownFields);
        }

        @Deprecated
        public Map<String, AttributeValue> getAttributeMap() {
            return getAttributeMapMap();
        }

        public int getAttributeMapCount() {
            return internalGetAttributeMap().i().size();
        }

        public Map<String, AttributeValue> getAttributeMapMap() {
            return internalGetAttributeMap().i();
        }

        public AttributeValue getAttributeMapOrDefault(String str, AttributeValue attributeValue) {
            Objects.requireNonNull(str);
            Map<String, AttributeValue> i9 = internalGetAttributeMap().i();
            return i9.containsKey(str) ? i9.get(str) : attributeValue;
        }

        public AttributeValue getAttributeMapOrThrow(String str) {
            Objects.requireNonNull(str);
            Map<String, AttributeValue> i9 = internalGetAttributeMap().i();
            if (i9.containsKey(str)) {
                return i9.get(str);
            }
            throw new IllegalArgumentException();
        }

        public int getDroppedAttributesCount() {
            return this.droppedAttributesCount_;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
        public e2<Attributes> getParserForType() {
            return PARSER;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
        public int getSerializedSize() {
            int i9 = this.memoizedSize;
            if (i9 != -1) {
                return i9;
            }
            int i10 = 0;
            for (Map.Entry<String, AttributeValue> entry : internalGetAttributeMap().i().entrySet()) {
                i10 += CodedOutputStream.G(1, b.f51129a.newBuilderForType().N(entry.getKey()).P(entry.getValue()).build());
            }
            int i11 = this.droppedAttributesCount_;
            if (i11 != 0) {
                i10 += CodedOutputStream.x(2, i11);
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
            if (!internalGetAttributeMap().i().isEmpty()) {
                hashCode = (((hashCode * 37) + 1) * 53) + internalGetAttributeMap().hashCode();
            }
            int droppedAttributesCount = (((((hashCode * 37) + 2) * 53) + getDroppedAttributesCount()) * 29) + this.unknownFields.hashCode();
            this.memoizedHashCode = droppedAttributesCount;
            return droppedAttributesCount;
        }

        @Override // com.google.protobuf.GeneratedMessageV3
        protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
            return j.f51237h.d(Attributes.class, c.class);
        }

        @Override // com.google.protobuf.GeneratedMessageV3
        protected g1 internalGetMapField(int i9) {
            if (i9 == 1) {
                return internalGetAttributeMap();
            }
            throw new RuntimeException("Invalid map field number: " + i9);
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

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
        public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
            GeneratedMessageV3.serializeStringMapTo(codedOutputStream, internalGetAttributeMap(), b.f51129a, 1);
            int i9 = this.droppedAttributesCount_;
            if (i9 != 0) {
                codedOutputStream.H0(2, i9);
            }
            this.unknownFields.writeTo(codedOutputStream);
        }

        /* synthetic */ Attributes(GeneratedMessageV3.b bVar, a aVar) {
            this(bVar);
        }

        public static c newBuilder(Attributes attributes) {
            return DEFAULT_INSTANCE.toBuilder().i0(attributes);
        }

        public static Attributes parseFrom(ByteBuffer byteBuffer, f0 f0Var) throws InvalidProtocolBufferException {
            return PARSER.f(byteBuffer, f0Var);
        }

        private Attributes(GeneratedMessageV3.b<?> bVar) {
            super(bVar);
            this.memoizedIsInitialized = (byte) -1;
        }

        public static Attributes parseDelimitedFrom(InputStream inputStream, f0 f0Var) throws IOException {
            return (Attributes) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
        }

        public static Attributes parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.c(byteString);
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.p1, com.google.protobuf.r1
        public Attributes getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
        public c toBuilder() {
            return this == DEFAULT_INSTANCE ? new c((a) null) : new c((a) null).i0(this);
        }

        public static Attributes parseFrom(ByteString byteString, f0 f0Var) throws InvalidProtocolBufferException {
            return PARSER.b(byteString, f0Var);
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
        public c newBuilderForType() {
            return newBuilder();
        }

        private Attributes() {
            this.memoizedIsInitialized = (byte) -1;
            this.droppedAttributesCount_ = 0;
        }

        public static Attributes parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.a(bArr);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.protobuf.GeneratedMessageV3
        public c newBuilderForType(GeneratedMessageV3.c cVar) {
            return new c(cVar, null);
        }

        public static Attributes parseFrom(byte[] bArr, f0 f0Var) throws InvalidProtocolBufferException {
            return PARSER.g(bArr, f0Var);
        }

        public static Attributes parseFrom(InputStream inputStream) throws IOException {
            return (Attributes) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
        }

        /* JADX WARN: Type inference failed for: r3v8, types: [java.lang.Object] */
        /* JADX WARN: Type inference failed for: r5v2, types: [java.lang.Object] */
        private Attributes(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
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
                                    this.attributeMap_ = g1.p(b.f51129a);
                                    z11 |= true;
                                }
                                e1 e1Var = (e1) pVar.B(b.f51129a.getParserForType(), f0Var);
                                this.attributeMap_.l().put(e1Var.f(), e1Var.h());
                            } else if (L != 16) {
                                if (!parseUnknownFieldProto3(pVar, h10, f0Var, L)) {
                                }
                            } else {
                                this.droppedAttributesCount_ = pVar.z();
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

        public static Attributes parseFrom(InputStream inputStream, f0 f0Var) throws IOException {
            return (Attributes) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
        }

        public static Attributes parseFrom(p pVar) throws IOException {
            return (Attributes) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
        }

        public static Attributes parseFrom(p pVar, f0 f0Var) throws IOException {
            return (Attributes) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
        }
    }

    /* loaded from: classes7.dex */
    public static final class Link extends GeneratedMessageV3 implements e {
        public static final int ATTRIBUTES_FIELD_NUMBER = 4;
        private static final Link DEFAULT_INSTANCE = new Link();
        private static final e2<Link> PARSER = new a();
        public static final int SPAN_ID_FIELD_NUMBER = 2;
        public static final int TRACE_ID_FIELD_NUMBER = 1;
        public static final int TYPE_FIELD_NUMBER = 3;
        private static final long serialVersionUID = 0;
        private Attributes attributes_;
        private byte memoizedIsInitialized;
        private ByteString spanId_;
        private ByteString traceId_;
        private int type_;

        /* loaded from: classes7.dex */
        public enum Type implements h2 {
            TYPE_UNSPECIFIED(0),
            CHILD_LINKED_SPAN(1),
            PARENT_LINKED_SPAN(2),
            UNRECOGNIZED(-1);
            
            public static final int CHILD_LINKED_SPAN_VALUE = 1;
            public static final int PARENT_LINKED_SPAN_VALUE = 2;
            public static final int TYPE_UNSPECIFIED_VALUE = 0;
            private final int value;
            private static final u0.d<Type> internalValueMap = new a();
            private static final Type[] VALUES = values();

            /* loaded from: classes7.dex */
            static class a implements u0.d<Type> {
                a() {
                }

                @Override // com.google.protobuf.u0.d
                /* renamed from: b */
                public Type a(int i9) {
                    return Type.forNumber(i9);
                }
            }

            Type(int i9) {
                this.value = i9;
            }

            public static Type forNumber(int i9) {
                if (i9 != 0) {
                    if (i9 != 1) {
                        if (i9 != 2) {
                            return null;
                        }
                        return PARENT_LINKED_SPAN;
                    }
                    return CHILD_LINKED_SPAN;
                }
                return TYPE_UNSPECIFIED;
            }

            public static final Descriptors.d getDescriptor() {
                return Link.getDescriptor().k().get(0);
            }

            public static u0.d<Type> internalGetValueMap() {
                return internalValueMap;
            }

            public final Descriptors.d getDescriptorForType() {
                return getDescriptor();
            }

            @Override // com.google.protobuf.u0.c
            public final int getNumber() {
                if (this != UNRECOGNIZED) {
                    return this.value;
                }
                throw new IllegalArgumentException("Can't get the number of an unknown enum value.");
            }

            public final Descriptors.e getValueDescriptor() {
                return getDescriptor().k().get(ordinal());
            }

            @Deprecated
            public static Type valueOf(int i9) {
                return forNumber(i9);
            }

            public static Type valueOf(Descriptors.e eVar) {
                if (eVar.h() == getDescriptor()) {
                    if (eVar.g() == -1) {
                        return UNRECOGNIZED;
                    }
                    return VALUES[eVar.g()];
                }
                throw new IllegalArgumentException("EnumValueDescriptor is not for this type.");
            }
        }

        /* loaded from: classes7.dex */
        static class a extends com.google.protobuf.c<Link> {
            a() {
            }

            @Override // com.google.protobuf.e2
            /* renamed from: G */
            public Link m(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
                return new Link(pVar, f0Var, null);
            }
        }

        /* loaded from: classes7.dex */
        public static final class b extends GeneratedMessageV3.b<b> implements e {

            /* renamed from: e  reason: collision with root package name */
            private ByteString f51132e;

            /* renamed from: f  reason: collision with root package name */
            private ByteString f51133f;

            /* renamed from: g  reason: collision with root package name */
            private int f51134g;

            /* renamed from: h  reason: collision with root package name */
            private Attributes f51135h;

            /* renamed from: i  reason: collision with root package name */
            private q2<Attributes, Attributes.c, c> f51136i;

            /* synthetic */ b(GeneratedMessageV3.c cVar, a aVar) {
                this(cVar);
            }

            private void b0() {
                boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b
            protected GeneratedMessageV3.e K() {
                return j.f51249t.d(Link.class, b.class);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
            /* renamed from: W */
            public b L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                return (b) super.L(fieldDescriptor, obj);
            }

            @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
            /* renamed from: X */
            public Link build() {
                Link I = I();
                if (I.isInitialized()) {
                    return I;
                }
                throw a.AbstractC0142a.A(I);
            }

            @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
            /* renamed from: Y */
            public Link I() {
                Link link = new Link(this, (a) null);
                link.traceId_ = this.f51132e;
                link.spanId_ = this.f51133f;
                link.type_ = this.f51134g;
                q2<Attributes, Attributes.c, c> q2Var = this.f51136i;
                if (q2Var == null) {
                    link.attributes_ = this.f51135h;
                } else {
                    link.attributes_ = q2Var.b();
                }
                Q();
                return link;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
            /* renamed from: Z */
            public b n() {
                return (b) super.n();
            }

            @Override // com.google.protobuf.p1, com.google.protobuf.r1
            /* renamed from: a0 */
            public Link getDefaultInstanceForType() {
                return Link.getDefaultInstance();
            }

            public b d0(Attributes attributes) {
                q2<Attributes, Attributes.c, c> q2Var = this.f51136i;
                if (q2Var == null) {
                    Attributes attributes2 = this.f51135h;
                    if (attributes2 != null) {
                        this.f51135h = Attributes.newBuilder(attributes2).i0(attributes).I();
                    } else {
                        this.f51135h = attributes;
                    }
                    R();
                } else {
                    q2Var.e(attributes);
                }
                return this;
            }

            /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
            @Override // com.google.protobuf.a.AbstractC0142a
            /* renamed from: e0 */
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public io.opencensus.proto.trace.v1.Span.Link.b u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
                /*
                    r2 = this;
                    r0 = 0
                    com.google.protobuf.e2 r1 = io.opencensus.proto.trace.v1.Span.Link.access$8200()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                    java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                    io.opencensus.proto.trace.v1.Span$Link r3 = (io.opencensus.proto.trace.v1.Span.Link) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
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
                    io.opencensus.proto.trace.v1.Span$Link r4 = (io.opencensus.proto.trace.v1.Span.Link) r4     // Catch: java.lang.Throwable -> L11
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
                throw new UnsupportedOperationException("Method not decompiled: io.opencensus.proto.trace.v1.Span.Link.b.u(com.google.protobuf.p, com.google.protobuf.f0):io.opencensus.proto.trace.v1.Span$Link$b");
            }

            @Override // com.google.protobuf.a.AbstractC0142a
            /* renamed from: g0 */
            public b v(l1 l1Var) {
                if (l1Var instanceof Link) {
                    return h0((Link) l1Var);
                }
                super.P0(l1Var);
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
            public Descriptors.b getDescriptorForType() {
                return j.f51248s;
            }

            public b h0(Link link) {
                if (link == Link.getDefaultInstance()) {
                    return this;
                }
                ByteString traceId = link.getTraceId();
                ByteString byteString = ByteString.EMPTY;
                if (traceId != byteString) {
                    l0(link.getTraceId());
                }
                if (link.getSpanId() != byteString) {
                    k0(link.getSpanId());
                }
                if (link.type_ != 0) {
                    m0(link.getTypeValue());
                }
                if (link.hasAttributes()) {
                    d0(link.getAttributes());
                }
                z(((GeneratedMessageV3) link).unknownFields);
                R();
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
            /* renamed from: i0 */
            public final b z(h3 h3Var) {
                return (b) super.z(h3Var);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
            /* renamed from: j0 */
            public b c(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                return (b) super.c(fieldDescriptor, obj);
            }

            public b k0(ByteString byteString) {
                Objects.requireNonNull(byteString);
                this.f51133f = byteString;
                R();
                return this;
            }

            public b l0(ByteString byteString) {
                Objects.requireNonNull(byteString);
                this.f51132e = byteString;
                R();
                return this;
            }

            public b m0(int i9) {
                this.f51134g = i9;
                R();
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
            /* renamed from: n0 */
            public final b f1(h3 h3Var) {
                return (b) super.V(h3Var);
            }

            /* synthetic */ b(a aVar) {
                this();
            }

            private b() {
                ByteString byteString = ByteString.EMPTY;
                this.f51132e = byteString;
                this.f51133f = byteString;
                this.f51134g = 0;
                this.f51135h = null;
                b0();
            }

            private b(GeneratedMessageV3.c cVar) {
                super(cVar);
                ByteString byteString = ByteString.EMPTY;
                this.f51132e = byteString;
                this.f51133f = byteString;
                this.f51134g = 0;
                this.f51135h = null;
                b0();
            }
        }

        /* synthetic */ Link(p pVar, f0 f0Var, a aVar) throws InvalidProtocolBufferException {
            this(pVar, f0Var);
        }

        public static Link getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static final Descriptors.b getDescriptor() {
            return j.f51248s;
        }

        public static b newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static Link parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (Link) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static Link parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.l(byteBuffer);
        }

        public static e2<Link> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.a
        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof Link)) {
                return super.equals(obj);
            }
            Link link = (Link) obj;
            boolean z10 = (((getTraceId().equals(link.getTraceId())) && getSpanId().equals(link.getSpanId())) && this.type_ == link.type_) && hasAttributes() == link.hasAttributes();
            if (hasAttributes()) {
                z10 = z10 && getAttributes().equals(link.getAttributes());
            }
            return z10 && this.unknownFields.equals(link.unknownFields);
        }

        public Attributes getAttributes() {
            Attributes attributes = this.attributes_;
            return attributes == null ? Attributes.getDefaultInstance() : attributes;
        }

        public c getAttributesOrBuilder() {
            return getAttributes();
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
        public e2<Link> getParserForType() {
            return PARSER;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
        public int getSerializedSize() {
            int i9 = this.memoizedSize;
            if (i9 != -1) {
                return i9;
            }
            int h10 = this.traceId_.isEmpty() ? 0 : 0 + CodedOutputStream.h(1, this.traceId_);
            if (!this.spanId_.isEmpty()) {
                h10 += CodedOutputStream.h(2, this.spanId_);
            }
            if (this.type_ != Type.TYPE_UNSPECIFIED.getNumber()) {
                h10 += CodedOutputStream.l(3, this.type_);
            }
            if (this.attributes_ != null) {
                h10 += CodedOutputStream.G(4, getAttributes());
            }
            int serializedSize = h10 + this.unknownFields.getSerializedSize();
            this.memoizedSize = serializedSize;
            return serializedSize;
        }

        public ByteString getSpanId() {
            return this.spanId_;
        }

        public ByteString getTraceId() {
            return this.traceId_;
        }

        public Type getType() {
            Type valueOf = Type.valueOf(this.type_);
            return valueOf == null ? Type.UNRECOGNIZED : valueOf;
        }

        public int getTypeValue() {
            return this.type_;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.r1
        public final h3 getUnknownFields() {
            return this.unknownFields;
        }

        public boolean hasAttributes() {
            return this.attributes_ != null;
        }

        @Override // com.google.protobuf.a
        public int hashCode() {
            int i9 = this.memoizedHashCode;
            if (i9 != 0) {
                return i9;
            }
            int hashCode = ((((((((((((779 + getDescriptor().hashCode()) * 37) + 1) * 53) + getTraceId().hashCode()) * 37) + 2) * 53) + getSpanId().hashCode()) * 37) + 3) * 53) + this.type_;
            if (hasAttributes()) {
                hashCode = (((hashCode * 37) + 4) * 53) + getAttributes().hashCode();
            }
            int hashCode2 = (hashCode * 29) + this.unknownFields.hashCode();
            this.memoizedHashCode = hashCode2;
            return hashCode2;
        }

        @Override // com.google.protobuf.GeneratedMessageV3
        protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
            return j.f51249t.d(Link.class, b.class);
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

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
        public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
            if (!this.traceId_.isEmpty()) {
                codedOutputStream.r0(1, this.traceId_);
            }
            if (!this.spanId_.isEmpty()) {
                codedOutputStream.r0(2, this.spanId_);
            }
            if (this.type_ != Type.TYPE_UNSPECIFIED.getNumber()) {
                codedOutputStream.v0(3, this.type_);
            }
            if (this.attributes_ != null) {
                codedOutputStream.L0(4, getAttributes());
            }
            this.unknownFields.writeTo(codedOutputStream);
        }

        /* synthetic */ Link(GeneratedMessageV3.b bVar, a aVar) {
            this(bVar);
        }

        public static b newBuilder(Link link) {
            return DEFAULT_INSTANCE.toBuilder().h0(link);
        }

        public static Link parseFrom(ByteBuffer byteBuffer, f0 f0Var) throws InvalidProtocolBufferException {
            return PARSER.f(byteBuffer, f0Var);
        }

        private Link(GeneratedMessageV3.b<?> bVar) {
            super(bVar);
            this.memoizedIsInitialized = (byte) -1;
        }

        public static Link parseDelimitedFrom(InputStream inputStream, f0 f0Var) throws IOException {
            return (Link) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
        }

        public static Link parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.c(byteString);
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.p1, com.google.protobuf.r1
        public Link getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
        public b toBuilder() {
            return this == DEFAULT_INSTANCE ? new b((a) null) : new b((a) null).h0(this);
        }

        public static Link parseFrom(ByteString byteString, f0 f0Var) throws InvalidProtocolBufferException {
            return PARSER.b(byteString, f0Var);
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
        public b newBuilderForType() {
            return newBuilder();
        }

        private Link() {
            this.memoizedIsInitialized = (byte) -1;
            ByteString byteString = ByteString.EMPTY;
            this.traceId_ = byteString;
            this.spanId_ = byteString;
            this.type_ = 0;
        }

        public static Link parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.a(bArr);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.protobuf.GeneratedMessageV3
        public b newBuilderForType(GeneratedMessageV3.c cVar) {
            return new b(cVar, null);
        }

        public static Link parseFrom(byte[] bArr, f0 f0Var) throws InvalidProtocolBufferException {
            return PARSER.g(bArr, f0Var);
        }

        public static Link parseFrom(InputStream inputStream) throws IOException {
            return (Link) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
        }

        public static Link parseFrom(InputStream inputStream, f0 f0Var) throws IOException {
            return (Link) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
        }

        private Link(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
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
                                if (L == 10) {
                                    this.traceId_ = pVar.s();
                                } else if (L == 18) {
                                    this.spanId_ = pVar.s();
                                } else if (L == 24) {
                                    this.type_ = pVar.u();
                                } else if (L != 34) {
                                    if (!parseUnknownFieldProto3(pVar, h10, f0Var, L)) {
                                    }
                                } else {
                                    Attributes attributes = this.attributes_;
                                    Attributes.c builder = attributes != null ? attributes.toBuilder() : null;
                                    Attributes attributes2 = (Attributes) pVar.B(Attributes.parser(), f0Var);
                                    this.attributes_ = attributes2;
                                    if (builder != null) {
                                        builder.i0(attributes2);
                                        this.attributes_ = builder.I();
                                    }
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

        public static Link parseFrom(p pVar) throws IOException {
            return (Link) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
        }

        public static Link parseFrom(p pVar, f0 f0Var) throws IOException {
            return (Link) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
        }
    }

    /* loaded from: classes7.dex */
    public static final class Links extends GeneratedMessageV3 implements f {
        public static final int DROPPED_LINKS_COUNT_FIELD_NUMBER = 2;
        public static final int LINK_FIELD_NUMBER = 1;
        private static final long serialVersionUID = 0;
        private int bitField0_;
        private int droppedLinksCount_;
        private List<Link> link_;
        private byte memoizedIsInitialized;
        private static final Links DEFAULT_INSTANCE = new Links();
        private static final e2<Links> PARSER = new a();

        /* loaded from: classes7.dex */
        static class a extends com.google.protobuf.c<Links> {
            a() {
            }

            @Override // com.google.protobuf.e2
            /* renamed from: G */
            public Links m(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
                return new Links(pVar, f0Var, null);
            }
        }

        /* loaded from: classes7.dex */
        public static final class b extends GeneratedMessageV3.b<b> implements f {

            /* renamed from: e  reason: collision with root package name */
            private int f51137e;

            /* renamed from: f  reason: collision with root package name */
            private List<Link> f51138f;

            /* renamed from: g  reason: collision with root package name */
            private l2<Link, Link.b, e> f51139g;

            /* renamed from: h  reason: collision with root package name */
            private int f51140h;

            /* synthetic */ b(GeneratedMessageV3.c cVar, a aVar) {
                this(cVar);
            }

            private void a0() {
                if ((this.f51137e & 1) != 1) {
                    this.f51138f = new ArrayList(this.f51138f);
                    this.f51137e |= 1;
                }
            }

            private l2<Link, Link.b, e> d0() {
                if (this.f51139g == null) {
                    this.f51139g = new l2<>(this.f51138f, (this.f51137e & 1) == 1, H(), O());
                    this.f51138f = null;
                }
                return this.f51139g;
            }

            private void e0() {
                if (GeneratedMessageV3.alwaysUseFieldBuilders) {
                    d0();
                }
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b
            protected GeneratedMessageV3.e K() {
                return j.f51251v.d(Links.class, b.class);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
            /* renamed from: W */
            public b L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                return (b) super.L(fieldDescriptor, obj);
            }

            @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
            /* renamed from: X */
            public Links build() {
                Links I = I();
                if (I.isInitialized()) {
                    return I;
                }
                throw a.AbstractC0142a.A(I);
            }

            @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
            /* renamed from: Y */
            public Links I() {
                Links links = new Links(this, (a) null);
                int i9 = this.f51137e;
                l2<Link, Link.b, e> l2Var = this.f51139g;
                if (l2Var == null) {
                    if ((i9 & 1) == 1) {
                        this.f51138f = Collections.unmodifiableList(this.f51138f);
                        this.f51137e &= -2;
                    }
                    links.link_ = this.f51138f;
                } else {
                    links.link_ = l2Var.e();
                }
                links.droppedLinksCount_ = this.f51140h;
                links.bitField0_ = 0;
                Q();
                return links;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
            /* renamed from: Z */
            public b n() {
                return (b) super.n();
            }

            @Override // com.google.protobuf.p1, com.google.protobuf.r1
            /* renamed from: b0 */
            public Links getDefaultInstanceForType() {
                return Links.getDefaultInstance();
            }

            /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
            @Override // com.google.protobuf.a.AbstractC0142a
            /* renamed from: g0 */
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public io.opencensus.proto.trace.v1.Span.Links.b u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
                /*
                    r2 = this;
                    r0 = 0
                    com.google.protobuf.e2 r1 = io.opencensus.proto.trace.v1.Span.Links.access$9300()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                    java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                    io.opencensus.proto.trace.v1.Span$Links r3 = (io.opencensus.proto.trace.v1.Span.Links) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
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
                    io.opencensus.proto.trace.v1.Span$Links r4 = (io.opencensus.proto.trace.v1.Span.Links) r4     // Catch: java.lang.Throwable -> L11
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
                throw new UnsupportedOperationException("Method not decompiled: io.opencensus.proto.trace.v1.Span.Links.b.u(com.google.protobuf.p, com.google.protobuf.f0):io.opencensus.proto.trace.v1.Span$Links$b");
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
            public Descriptors.b getDescriptorForType() {
                return j.f51250u;
            }

            @Override // com.google.protobuf.a.AbstractC0142a
            /* renamed from: h0 */
            public b v(l1 l1Var) {
                if (l1Var instanceof Links) {
                    return i0((Links) l1Var);
                }
                super.P0(l1Var);
                return this;
            }

            public b i0(Links links) {
                if (links == Links.getDefaultInstance()) {
                    return this;
                }
                if (this.f51139g == null) {
                    if (!links.link_.isEmpty()) {
                        if (this.f51138f.isEmpty()) {
                            this.f51138f = links.link_;
                            this.f51137e &= -2;
                        } else {
                            a0();
                            this.f51138f.addAll(links.link_);
                        }
                        R();
                    }
                } else if (!links.link_.isEmpty()) {
                    if (this.f51139g.k()) {
                        this.f51139g.f();
                        this.f51139g = null;
                        this.f51138f = links.link_;
                        this.f51137e &= -2;
                        this.f51139g = GeneratedMessageV3.alwaysUseFieldBuilders ? d0() : null;
                    } else {
                        this.f51139g.b(links.link_);
                    }
                }
                if (links.getDroppedLinksCount() != 0) {
                    k0(links.getDroppedLinksCount());
                }
                z(((GeneratedMessageV3) links).unknownFields);
                R();
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
            /* renamed from: j0 */
            public final b z(h3 h3Var) {
                return (b) super.z(h3Var);
            }

            public b k0(int i9) {
                this.f51140h = i9;
                R();
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
            /* renamed from: l0 */
            public b c(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                return (b) super.c(fieldDescriptor, obj);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
            /* renamed from: m0 */
            public final b f1(h3 h3Var) {
                return (b) super.V(h3Var);
            }

            /* synthetic */ b(a aVar) {
                this();
            }

            private b() {
                this.f51138f = Collections.emptyList();
                e0();
            }

            private b(GeneratedMessageV3.c cVar) {
                super(cVar);
                this.f51138f = Collections.emptyList();
                e0();
            }
        }

        /* synthetic */ Links(p pVar, f0 f0Var, a aVar) throws InvalidProtocolBufferException {
            this(pVar, f0Var);
        }

        public static Links getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static final Descriptors.b getDescriptor() {
            return j.f51250u;
        }

        public static b newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static Links parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (Links) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static Links parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.l(byteBuffer);
        }

        public static e2<Links> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.a
        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof Links)) {
                return super.equals(obj);
            }
            Links links = (Links) obj;
            return ((getLinkList().equals(links.getLinkList())) && getDroppedLinksCount() == links.getDroppedLinksCount()) && this.unknownFields.equals(links.unknownFields);
        }

        public int getDroppedLinksCount() {
            return this.droppedLinksCount_;
        }

        public Link getLink(int i9) {
            return this.link_.get(i9);
        }

        public int getLinkCount() {
            return this.link_.size();
        }

        public List<Link> getLinkList() {
            return this.link_;
        }

        public e getLinkOrBuilder(int i9) {
            return this.link_.get(i9);
        }

        public List<? extends e> getLinkOrBuilderList() {
            return this.link_;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
        public e2<Links> getParserForType() {
            return PARSER;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
        public int getSerializedSize() {
            int i9 = this.memoizedSize;
            if (i9 != -1) {
                return i9;
            }
            int i10 = 0;
            for (int i11 = 0; i11 < this.link_.size(); i11++) {
                i10 += CodedOutputStream.G(1, this.link_.get(i11));
            }
            int i12 = this.droppedLinksCount_;
            if (i12 != 0) {
                i10 += CodedOutputStream.x(2, i12);
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
            if (getLinkCount() > 0) {
                hashCode = (((hashCode * 37) + 1) * 53) + getLinkList().hashCode();
            }
            int droppedLinksCount = (((((hashCode * 37) + 2) * 53) + getDroppedLinksCount()) * 29) + this.unknownFields.hashCode();
            this.memoizedHashCode = droppedLinksCount;
            return droppedLinksCount;
        }

        @Override // com.google.protobuf.GeneratedMessageV3
        protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
            return j.f51251v.d(Links.class, b.class);
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

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
        public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
            for (int i9 = 0; i9 < this.link_.size(); i9++) {
                codedOutputStream.L0(1, this.link_.get(i9));
            }
            int i10 = this.droppedLinksCount_;
            if (i10 != 0) {
                codedOutputStream.H0(2, i10);
            }
            this.unknownFields.writeTo(codedOutputStream);
        }

        /* synthetic */ Links(GeneratedMessageV3.b bVar, a aVar) {
            this(bVar);
        }

        public static b newBuilder(Links links) {
            return DEFAULT_INSTANCE.toBuilder().i0(links);
        }

        public static Links parseFrom(ByteBuffer byteBuffer, f0 f0Var) throws InvalidProtocolBufferException {
            return PARSER.f(byteBuffer, f0Var);
        }

        private Links(GeneratedMessageV3.b<?> bVar) {
            super(bVar);
            this.memoizedIsInitialized = (byte) -1;
        }

        public static Links parseDelimitedFrom(InputStream inputStream, f0 f0Var) throws IOException {
            return (Links) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
        }

        public static Links parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.c(byteString);
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.p1, com.google.protobuf.r1
        public Links getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
        public b toBuilder() {
            return this == DEFAULT_INSTANCE ? new b((a) null) : new b((a) null).i0(this);
        }

        public static Links parseFrom(ByteString byteString, f0 f0Var) throws InvalidProtocolBufferException {
            return PARSER.b(byteString, f0Var);
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
        public b newBuilderForType() {
            return newBuilder();
        }

        private Links() {
            this.memoizedIsInitialized = (byte) -1;
            this.link_ = Collections.emptyList();
            this.droppedLinksCount_ = 0;
        }

        public static Links parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.a(bArr);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.protobuf.GeneratedMessageV3
        public b newBuilderForType(GeneratedMessageV3.c cVar) {
            return new b(cVar, null);
        }

        public static Links parseFrom(byte[] bArr, f0 f0Var) throws InvalidProtocolBufferException {
            return PARSER.g(bArr, f0Var);
        }

        public static Links parseFrom(InputStream inputStream) throws IOException {
            return (Links) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
        }

        /* JADX WARN: Multi-variable type inference failed */
        private Links(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
            this();
            Objects.requireNonNull(f0Var);
            h3.b h10 = h3.h();
            boolean z10 = false;
            boolean z11 = false;
            while (true) {
                if (z10) {
                    break;
                }
                try {
                    try {
                        int L = pVar.L();
                        if (L != 0) {
                            if (L == 10) {
                                if (!(z11 & true)) {
                                    this.link_ = new ArrayList();
                                    z11 |= true;
                                }
                                this.link_.add(pVar.B(Link.parser(), f0Var));
                            } else if (L != 16) {
                                if (!parseUnknownFieldProto3(pVar, h10, f0Var, L)) {
                                }
                            } else {
                                this.droppedLinksCount_ = pVar.z();
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
                        this.link_ = Collections.unmodifiableList(this.link_);
                    }
                    this.unknownFields = h10.build();
                    makeExtensionsImmutable();
                }
            }
        }

        public static Links parseFrom(InputStream inputStream, f0 f0Var) throws IOException {
            return (Links) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
        }

        public static Links parseFrom(p pVar) throws IOException {
            return (Links) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
        }

        public static Links parseFrom(p pVar, f0 f0Var) throws IOException {
            return (Links) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
        }
    }

    /* loaded from: classes7.dex */
    public enum SpanKind implements h2 {
        SPAN_KIND_UNSPECIFIED(0),
        SERVER(1),
        CLIENT(2),
        UNRECOGNIZED(-1);
        
        public static final int CLIENT_VALUE = 2;
        public static final int SERVER_VALUE = 1;
        public static final int SPAN_KIND_UNSPECIFIED_VALUE = 0;
        private final int value;
        private static final u0.d<SpanKind> internalValueMap = new a();
        private static final SpanKind[] VALUES = values();

        /* loaded from: classes7.dex */
        static class a implements u0.d<SpanKind> {
            a() {
            }

            @Override // com.google.protobuf.u0.d
            /* renamed from: b */
            public SpanKind a(int i9) {
                return SpanKind.forNumber(i9);
            }
        }

        SpanKind(int i9) {
            this.value = i9;
        }

        public static SpanKind forNumber(int i9) {
            if (i9 != 0) {
                if (i9 != 1) {
                    if (i9 != 2) {
                        return null;
                    }
                    return CLIENT;
                }
                return SERVER;
            }
            return SPAN_KIND_UNSPECIFIED;
        }

        public static final Descriptors.d getDescriptor() {
            return Span.getDescriptor().k().get(0);
        }

        public static u0.d<SpanKind> internalGetValueMap() {
            return internalValueMap;
        }

        public final Descriptors.d getDescriptorForType() {
            return getDescriptor();
        }

        @Override // com.google.protobuf.u0.c
        public final int getNumber() {
            if (this != UNRECOGNIZED) {
                return this.value;
            }
            throw new IllegalArgumentException("Can't get the number of an unknown enum value.");
        }

        public final Descriptors.e getValueDescriptor() {
            return getDescriptor().k().get(ordinal());
        }

        @Deprecated
        public static SpanKind valueOf(int i9) {
            return forNumber(i9);
        }

        public static SpanKind valueOf(Descriptors.e eVar) {
            if (eVar.h() == getDescriptor()) {
                if (eVar.g() == -1) {
                    return UNRECOGNIZED;
                }
                return VALUES[eVar.g()];
            }
            throw new IllegalArgumentException("EnumValueDescriptor is not for this type.");
        }
    }

    /* loaded from: classes7.dex */
    public static final class TimeEvent extends GeneratedMessageV3 implements g {
        public static final int ANNOTATION_FIELD_NUMBER = 2;
        public static final int MESSAGE_EVENT_FIELD_NUMBER = 3;
        public static final int TIME_FIELD_NUMBER = 1;
        private static final long serialVersionUID = 0;
        private byte memoizedIsInitialized;
        private Timestamp time_;
        private int valueCase_;
        private Object value_;
        private static final TimeEvent DEFAULT_INSTANCE = new TimeEvent();
        private static final e2<TimeEvent> PARSER = new a();

        /* loaded from: classes7.dex */
        public static final class Annotation extends GeneratedMessageV3 implements b {
            public static final int ATTRIBUTES_FIELD_NUMBER = 2;
            public static final int DESCRIPTION_FIELD_NUMBER = 1;
            private static final long serialVersionUID = 0;
            private Attributes attributes_;
            private TruncatableString description_;
            private byte memoizedIsInitialized;
            private static final Annotation DEFAULT_INSTANCE = new Annotation();
            private static final e2<Annotation> PARSER = new a();

            /* loaded from: classes7.dex */
            static class a extends com.google.protobuf.c<Annotation> {
                a() {
                }

                @Override // com.google.protobuf.e2
                /* renamed from: G */
                public Annotation m(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
                    return new Annotation(pVar, f0Var, null);
                }
            }

            /* loaded from: classes7.dex */
            public static final class b extends GeneratedMessageV3.b<b> implements b {

                /* renamed from: e  reason: collision with root package name */
                private TruncatableString f51141e;

                /* renamed from: f  reason: collision with root package name */
                private q2<TruncatableString, TruncatableString.b, k> f51142f;

                /* renamed from: g  reason: collision with root package name */
                private Attributes f51143g;

                /* renamed from: h  reason: collision with root package name */
                private q2<Attributes, Attributes.c, c> f51144h;

                /* synthetic */ b(GeneratedMessageV3.c cVar, a aVar) {
                    this(cVar);
                }

                private void b0() {
                    boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
                }

                @Override // com.google.protobuf.GeneratedMessageV3.b
                protected GeneratedMessageV3.e K() {
                    return j.f51243n.d(Annotation.class, b.class);
                }

                @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
                /* renamed from: W */
                public b L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                    return (b) super.L(fieldDescriptor, obj);
                }

                @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
                /* renamed from: X */
                public Annotation build() {
                    Annotation I = I();
                    if (I.isInitialized()) {
                        return I;
                    }
                    throw a.AbstractC0142a.A(I);
                }

                @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
                /* renamed from: Y */
                public Annotation I() {
                    Annotation annotation = new Annotation(this, (a) null);
                    q2<TruncatableString, TruncatableString.b, k> q2Var = this.f51142f;
                    if (q2Var == null) {
                        annotation.description_ = this.f51141e;
                    } else {
                        annotation.description_ = q2Var.b();
                    }
                    q2<Attributes, Attributes.c, c> q2Var2 = this.f51144h;
                    if (q2Var2 == null) {
                        annotation.attributes_ = this.f51143g;
                    } else {
                        annotation.attributes_ = q2Var2.b();
                    }
                    Q();
                    return annotation;
                }

                @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
                /* renamed from: Z */
                public b n() {
                    return (b) super.n();
                }

                @Override // com.google.protobuf.p1, com.google.protobuf.r1
                /* renamed from: a0 */
                public Annotation getDefaultInstanceForType() {
                    return Annotation.getDefaultInstance();
                }

                public b d0(Attributes attributes) {
                    q2<Attributes, Attributes.c, c> q2Var = this.f51144h;
                    if (q2Var == null) {
                        Attributes attributes2 = this.f51143g;
                        if (attributes2 != null) {
                            this.f51143g = Attributes.newBuilder(attributes2).i0(attributes).I();
                        } else {
                            this.f51143g = attributes;
                        }
                        R();
                    } else {
                        q2Var.e(attributes);
                    }
                    return this;
                }

                public b e0(TruncatableString truncatableString) {
                    q2<TruncatableString, TruncatableString.b, k> q2Var = this.f51142f;
                    if (q2Var == null) {
                        TruncatableString truncatableString2 = this.f51141e;
                        if (truncatableString2 != null) {
                            this.f51141e = TruncatableString.newBuilder(truncatableString2).g0(truncatableString).I();
                        } else {
                            this.f51141e = truncatableString;
                        }
                        R();
                    } else {
                        q2Var.e(truncatableString);
                    }
                    return this;
                }

                /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
                @Override // com.google.protobuf.a.AbstractC0142a
                /* renamed from: g0 */
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                    To view partially-correct add '--show-bad-code' argument
                */
                public io.opencensus.proto.trace.v1.Span.TimeEvent.Annotation.b u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
                    /*
                        r2 = this;
                        r0 = 0
                        com.google.protobuf.e2 r1 = io.opencensus.proto.trace.v1.Span.TimeEvent.Annotation.access$3800()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                        java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                        io.opencensus.proto.trace.v1.Span$TimeEvent$Annotation r3 = (io.opencensus.proto.trace.v1.Span.TimeEvent.Annotation) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
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
                        io.opencensus.proto.trace.v1.Span$TimeEvent$Annotation r4 = (io.opencensus.proto.trace.v1.Span.TimeEvent.Annotation) r4     // Catch: java.lang.Throwable -> L11
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
                    throw new UnsupportedOperationException("Method not decompiled: io.opencensus.proto.trace.v1.Span.TimeEvent.Annotation.b.u(com.google.protobuf.p, com.google.protobuf.f0):io.opencensus.proto.trace.v1.Span$TimeEvent$Annotation$b");
                }

                @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
                public Descriptors.b getDescriptorForType() {
                    return j.f51242m;
                }

                @Override // com.google.protobuf.a.AbstractC0142a
                /* renamed from: h0 */
                public b v(l1 l1Var) {
                    if (l1Var instanceof Annotation) {
                        return i0((Annotation) l1Var);
                    }
                    super.P0(l1Var);
                    return this;
                }

                public b i0(Annotation annotation) {
                    if (annotation == Annotation.getDefaultInstance()) {
                        return this;
                    }
                    if (annotation.hasDescription()) {
                        e0(annotation.getDescription());
                    }
                    if (annotation.hasAttributes()) {
                        d0(annotation.getAttributes());
                    }
                    z(((GeneratedMessageV3) annotation).unknownFields);
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
                    return (b) super.V(h3Var);
                }

                /* synthetic */ b(a aVar) {
                    this();
                }

                private b() {
                    this.f51141e = null;
                    this.f51143g = null;
                    b0();
                }

                private b(GeneratedMessageV3.c cVar) {
                    super(cVar);
                    this.f51141e = null;
                    this.f51143g = null;
                    b0();
                }
            }

            /* synthetic */ Annotation(p pVar, f0 f0Var, a aVar) throws InvalidProtocolBufferException {
                this(pVar, f0Var);
            }

            public static Annotation getDefaultInstance() {
                return DEFAULT_INSTANCE;
            }

            public static final Descriptors.b getDescriptor() {
                return j.f51242m;
            }

            public static b newBuilder() {
                return DEFAULT_INSTANCE.toBuilder();
            }

            public static Annotation parseDelimitedFrom(InputStream inputStream) throws IOException {
                return (Annotation) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
            }

            public static Annotation parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
                return PARSER.l(byteBuffer);
            }

            public static e2<Annotation> parser() {
                return PARSER;
            }

            @Override // com.google.protobuf.a
            public boolean equals(Object obj) {
                if (obj == this) {
                    return true;
                }
                if (!(obj instanceof Annotation)) {
                    return super.equals(obj);
                }
                Annotation annotation = (Annotation) obj;
                boolean z10 = hasDescription() == annotation.hasDescription();
                if (hasDescription()) {
                    z10 = z10 && getDescription().equals(annotation.getDescription());
                }
                boolean z11 = z10 && hasAttributes() == annotation.hasAttributes();
                if (hasAttributes()) {
                    z11 = z11 && getAttributes().equals(annotation.getAttributes());
                }
                return z11 && this.unknownFields.equals(annotation.unknownFields);
            }

            public Attributes getAttributes() {
                Attributes attributes = this.attributes_;
                return attributes == null ? Attributes.getDefaultInstance() : attributes;
            }

            public c getAttributesOrBuilder() {
                return getAttributes();
            }

            public TruncatableString getDescription() {
                TruncatableString truncatableString = this.description_;
                return truncatableString == null ? TruncatableString.getDefaultInstance() : truncatableString;
            }

            public k getDescriptionOrBuilder() {
                return getDescription();
            }

            @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
            public e2<Annotation> getParserForType() {
                return PARSER;
            }

            @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
            public int getSerializedSize() {
                int i9 = this.memoizedSize;
                if (i9 != -1) {
                    return i9;
                }
                int G = this.description_ != null ? 0 + CodedOutputStream.G(1, getDescription()) : 0;
                if (this.attributes_ != null) {
                    G += CodedOutputStream.G(2, getAttributes());
                }
                int serializedSize = G + this.unknownFields.getSerializedSize();
                this.memoizedSize = serializedSize;
                return serializedSize;
            }

            @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.r1
            public final h3 getUnknownFields() {
                return this.unknownFields;
            }

            public boolean hasAttributes() {
                return this.attributes_ != null;
            }

            public boolean hasDescription() {
                return this.description_ != null;
            }

            @Override // com.google.protobuf.a
            public int hashCode() {
                int i9 = this.memoizedHashCode;
                if (i9 != 0) {
                    return i9;
                }
                int hashCode = 779 + getDescriptor().hashCode();
                if (hasDescription()) {
                    hashCode = (((hashCode * 37) + 1) * 53) + getDescription().hashCode();
                }
                if (hasAttributes()) {
                    hashCode = (((hashCode * 37) + 2) * 53) + getAttributes().hashCode();
                }
                int hashCode2 = (hashCode * 29) + this.unknownFields.hashCode();
                this.memoizedHashCode = hashCode2;
                return hashCode2;
            }

            @Override // com.google.protobuf.GeneratedMessageV3
            protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
                return j.f51243n.d(Annotation.class, b.class);
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

            @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
            public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
                if (this.description_ != null) {
                    codedOutputStream.L0(1, getDescription());
                }
                if (this.attributes_ != null) {
                    codedOutputStream.L0(2, getAttributes());
                }
                this.unknownFields.writeTo(codedOutputStream);
            }

            /* synthetic */ Annotation(GeneratedMessageV3.b bVar, a aVar) {
                this(bVar);
            }

            public static b newBuilder(Annotation annotation) {
                return DEFAULT_INSTANCE.toBuilder().i0(annotation);
            }

            public static Annotation parseFrom(ByteBuffer byteBuffer, f0 f0Var) throws InvalidProtocolBufferException {
                return PARSER.f(byteBuffer, f0Var);
            }

            private Annotation(GeneratedMessageV3.b<?> bVar) {
                super(bVar);
                this.memoizedIsInitialized = (byte) -1;
            }

            public static Annotation parseDelimitedFrom(InputStream inputStream, f0 f0Var) throws IOException {
                return (Annotation) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
            }

            public static Annotation parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
                return PARSER.c(byteString);
            }

            @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.p1, com.google.protobuf.r1
            public Annotation getDefaultInstanceForType() {
                return DEFAULT_INSTANCE;
            }

            @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
            public b toBuilder() {
                return this == DEFAULT_INSTANCE ? new b((a) null) : new b((a) null).i0(this);
            }

            public static Annotation parseFrom(ByteString byteString, f0 f0Var) throws InvalidProtocolBufferException {
                return PARSER.b(byteString, f0Var);
            }

            @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
            public b newBuilderForType() {
                return newBuilder();
            }

            private Annotation() {
                this.memoizedIsInitialized = (byte) -1;
            }

            public static Annotation parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
                return PARSER.a(bArr);
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.google.protobuf.GeneratedMessageV3
            public b newBuilderForType(GeneratedMessageV3.c cVar) {
                return new b(cVar, null);
            }

            public static Annotation parseFrom(byte[] bArr, f0 f0Var) throws InvalidProtocolBufferException {
                return PARSER.g(bArr, f0Var);
            }

            private Annotation(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
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
                                    TruncatableString truncatableString = this.description_;
                                    TruncatableString.b builder = truncatableString != null ? truncatableString.toBuilder() : null;
                                    TruncatableString truncatableString2 = (TruncatableString) pVar.B(TruncatableString.parser(), f0Var);
                                    this.description_ = truncatableString2;
                                    if (builder != null) {
                                        builder.g0(truncatableString2);
                                        this.description_ = builder.I();
                                    }
                                } else if (L != 18) {
                                    if (!parseUnknownFieldProto3(pVar, h10, f0Var, L)) {
                                    }
                                } else {
                                    Attributes attributes = this.attributes_;
                                    Attributes.c builder2 = attributes != null ? attributes.toBuilder() : null;
                                    Attributes attributes2 = (Attributes) pVar.B(Attributes.parser(), f0Var);
                                    this.attributes_ = attributes2;
                                    if (builder2 != null) {
                                        builder2.i0(attributes2);
                                        this.attributes_ = builder2.I();
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
                        this.unknownFields = h10.build();
                        makeExtensionsImmutable();
                    }
                }
            }

            public static Annotation parseFrom(InputStream inputStream) throws IOException {
                return (Annotation) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
            }

            public static Annotation parseFrom(InputStream inputStream, f0 f0Var) throws IOException {
                return (Annotation) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
            }

            public static Annotation parseFrom(p pVar) throws IOException {
                return (Annotation) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
            }

            public static Annotation parseFrom(p pVar, f0 f0Var) throws IOException {
                return (Annotation) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
            }
        }

        /* loaded from: classes7.dex */
        public static final class MessageEvent extends GeneratedMessageV3 implements d {
            public static final int COMPRESSED_SIZE_FIELD_NUMBER = 4;
            public static final int ID_FIELD_NUMBER = 2;
            public static final int TYPE_FIELD_NUMBER = 1;
            public static final int UNCOMPRESSED_SIZE_FIELD_NUMBER = 3;
            private static final long serialVersionUID = 0;
            private long compressedSize_;
            private long id_;
            private byte memoizedIsInitialized;
            private int type_;
            private long uncompressedSize_;
            private static final MessageEvent DEFAULT_INSTANCE = new MessageEvent();
            private static final e2<MessageEvent> PARSER = new a();

            /* loaded from: classes7.dex */
            public enum Type implements h2 {
                TYPE_UNSPECIFIED(0),
                SENT(1),
                RECEIVED(2),
                UNRECOGNIZED(-1);
                
                public static final int RECEIVED_VALUE = 2;
                public static final int SENT_VALUE = 1;
                public static final int TYPE_UNSPECIFIED_VALUE = 0;
                private final int value;
                private static final u0.d<Type> internalValueMap = new a();
                private static final Type[] VALUES = values();

                /* loaded from: classes7.dex */
                static class a implements u0.d<Type> {
                    a() {
                    }

                    @Override // com.google.protobuf.u0.d
                    /* renamed from: b */
                    public Type a(int i9) {
                        return Type.forNumber(i9);
                    }
                }

                Type(int i9) {
                    this.value = i9;
                }

                public static Type forNumber(int i9) {
                    if (i9 != 0) {
                        if (i9 != 1) {
                            if (i9 != 2) {
                                return null;
                            }
                            return RECEIVED;
                        }
                        return SENT;
                    }
                    return TYPE_UNSPECIFIED;
                }

                public static final Descriptors.d getDescriptor() {
                    return MessageEvent.getDescriptor().k().get(0);
                }

                public static u0.d<Type> internalGetValueMap() {
                    return internalValueMap;
                }

                public final Descriptors.d getDescriptorForType() {
                    return getDescriptor();
                }

                @Override // com.google.protobuf.u0.c
                public final int getNumber() {
                    if (this != UNRECOGNIZED) {
                        return this.value;
                    }
                    throw new IllegalArgumentException("Can't get the number of an unknown enum value.");
                }

                public final Descriptors.e getValueDescriptor() {
                    return getDescriptor().k().get(ordinal());
                }

                @Deprecated
                public static Type valueOf(int i9) {
                    return forNumber(i9);
                }

                public static Type valueOf(Descriptors.e eVar) {
                    if (eVar.h() == getDescriptor()) {
                        if (eVar.g() == -1) {
                            return UNRECOGNIZED;
                        }
                        return VALUES[eVar.g()];
                    }
                    throw new IllegalArgumentException("EnumValueDescriptor is not for this type.");
                }
            }

            /* loaded from: classes7.dex */
            static class a extends com.google.protobuf.c<MessageEvent> {
                a() {
                }

                @Override // com.google.protobuf.e2
                /* renamed from: G */
                public MessageEvent m(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
                    return new MessageEvent(pVar, f0Var, null);
                }
            }

            /* loaded from: classes7.dex */
            public static final class b extends GeneratedMessageV3.b<b> implements d {

                /* renamed from: e  reason: collision with root package name */
                private int f51145e;

                /* renamed from: f  reason: collision with root package name */
                private long f51146f;

                /* renamed from: g  reason: collision with root package name */
                private long f51147g;

                /* renamed from: h  reason: collision with root package name */
                private long f51148h;

                /* synthetic */ b(GeneratedMessageV3.c cVar, a aVar) {
                    this(cVar);
                }

                private void b0() {
                    boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
                }

                @Override // com.google.protobuf.GeneratedMessageV3.b
                protected GeneratedMessageV3.e K() {
                    return j.f51245p.d(MessageEvent.class, b.class);
                }

                @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
                /* renamed from: W */
                public b L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                    return (b) super.L(fieldDescriptor, obj);
                }

                @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
                /* renamed from: X */
                public MessageEvent build() {
                    MessageEvent I = I();
                    if (I.isInitialized()) {
                        return I;
                    }
                    throw a.AbstractC0142a.A(I);
                }

                @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
                /* renamed from: Y */
                public MessageEvent I() {
                    MessageEvent messageEvent = new MessageEvent(this, (a) null);
                    messageEvent.type_ = this.f51145e;
                    messageEvent.id_ = this.f51146f;
                    messageEvent.uncompressedSize_ = this.f51147g;
                    messageEvent.compressedSize_ = this.f51148h;
                    Q();
                    return messageEvent;
                }

                @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
                /* renamed from: Z */
                public b n() {
                    return (b) super.n();
                }

                @Override // com.google.protobuf.p1, com.google.protobuf.r1
                /* renamed from: a0 */
                public MessageEvent getDefaultInstanceForType() {
                    return MessageEvent.getDefaultInstance();
                }

                /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
                @Override // com.google.protobuf.a.AbstractC0142a
                /* renamed from: d0 */
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                    To view partially-correct add '--show-bad-code' argument
                */
                public io.opencensus.proto.trace.v1.Span.TimeEvent.MessageEvent.b u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
                    /*
                        r2 = this;
                        r0 = 0
                        com.google.protobuf.e2 r1 = io.opencensus.proto.trace.v1.Span.TimeEvent.MessageEvent.access$4900()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                        java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                        io.opencensus.proto.trace.v1.Span$TimeEvent$MessageEvent r3 = (io.opencensus.proto.trace.v1.Span.TimeEvent.MessageEvent) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
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
                        io.opencensus.proto.trace.v1.Span$TimeEvent$MessageEvent r4 = (io.opencensus.proto.trace.v1.Span.TimeEvent.MessageEvent) r4     // Catch: java.lang.Throwable -> L11
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
                    throw new UnsupportedOperationException("Method not decompiled: io.opencensus.proto.trace.v1.Span.TimeEvent.MessageEvent.b.u(com.google.protobuf.p, com.google.protobuf.f0):io.opencensus.proto.trace.v1.Span$TimeEvent$MessageEvent$b");
                }

                @Override // com.google.protobuf.a.AbstractC0142a
                /* renamed from: e0 */
                public b v(l1 l1Var) {
                    if (l1Var instanceof MessageEvent) {
                        return g0((MessageEvent) l1Var);
                    }
                    super.P0(l1Var);
                    return this;
                }

                public b g0(MessageEvent messageEvent) {
                    if (messageEvent == MessageEvent.getDefaultInstance()) {
                        return this;
                    }
                    if (messageEvent.type_ != 0) {
                        l0(messageEvent.getTypeValue());
                    }
                    if (messageEvent.getId() != 0) {
                        k0(messageEvent.getId());
                    }
                    if (messageEvent.getUncompressedSize() != 0) {
                        m0(messageEvent.getUncompressedSize());
                    }
                    if (messageEvent.getCompressedSize() != 0) {
                        i0(messageEvent.getCompressedSize());
                    }
                    z(((GeneratedMessageV3) messageEvent).unknownFields);
                    R();
                    return this;
                }

                @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
                public Descriptors.b getDescriptorForType() {
                    return j.f51244o;
                }

                @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
                /* renamed from: h0 */
                public final b z(h3 h3Var) {
                    return (b) super.z(h3Var);
                }

                public b i0(long j10) {
                    this.f51148h = j10;
                    R();
                    return this;
                }

                @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
                /* renamed from: j0 */
                public b c(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                    return (b) super.c(fieldDescriptor, obj);
                }

                public b k0(long j10) {
                    this.f51146f = j10;
                    R();
                    return this;
                }

                public b l0(int i9) {
                    this.f51145e = i9;
                    R();
                    return this;
                }

                public b m0(long j10) {
                    this.f51147g = j10;
                    R();
                    return this;
                }

                @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
                /* renamed from: n0 */
                public final b f1(h3 h3Var) {
                    return (b) super.V(h3Var);
                }

                /* synthetic */ b(a aVar) {
                    this();
                }

                private b() {
                    this.f51145e = 0;
                    b0();
                }

                private b(GeneratedMessageV3.c cVar) {
                    super(cVar);
                    this.f51145e = 0;
                    b0();
                }
            }

            /* synthetic */ MessageEvent(p pVar, f0 f0Var, a aVar) throws InvalidProtocolBufferException {
                this(pVar, f0Var);
            }

            public static MessageEvent getDefaultInstance() {
                return DEFAULT_INSTANCE;
            }

            public static final Descriptors.b getDescriptor() {
                return j.f51244o;
            }

            public static b newBuilder() {
                return DEFAULT_INSTANCE.toBuilder();
            }

            public static MessageEvent parseDelimitedFrom(InputStream inputStream) throws IOException {
                return (MessageEvent) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
            }

            public static MessageEvent parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
                return PARSER.l(byteBuffer);
            }

            public static e2<MessageEvent> parser() {
                return PARSER;
            }

            @Override // com.google.protobuf.a
            public boolean equals(Object obj) {
                if (obj == this) {
                    return true;
                }
                if (!(obj instanceof MessageEvent)) {
                    return super.equals(obj);
                }
                MessageEvent messageEvent = (MessageEvent) obj;
                return ((((this.type_ == messageEvent.type_) && (getId() > messageEvent.getId() ? 1 : (getId() == messageEvent.getId() ? 0 : -1)) == 0) && (getUncompressedSize() > messageEvent.getUncompressedSize() ? 1 : (getUncompressedSize() == messageEvent.getUncompressedSize() ? 0 : -1)) == 0) && (getCompressedSize() > messageEvent.getCompressedSize() ? 1 : (getCompressedSize() == messageEvent.getCompressedSize() ? 0 : -1)) == 0) && this.unknownFields.equals(messageEvent.unknownFields);
            }

            public long getCompressedSize() {
                return this.compressedSize_;
            }

            public long getId() {
                return this.id_;
            }

            @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
            public e2<MessageEvent> getParserForType() {
                return PARSER;
            }

            @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
            public int getSerializedSize() {
                int i9 = this.memoizedSize;
                if (i9 != -1) {
                    return i9;
                }
                int l10 = this.type_ != Type.TYPE_UNSPECIFIED.getNumber() ? 0 + CodedOutputStream.l(1, this.type_) : 0;
                long j10 = this.id_;
                if (j10 != 0) {
                    l10 += CodedOutputStream.a0(2, j10);
                }
                long j11 = this.uncompressedSize_;
                if (j11 != 0) {
                    l10 += CodedOutputStream.a0(3, j11);
                }
                long j12 = this.compressedSize_;
                if (j12 != 0) {
                    l10 += CodedOutputStream.a0(4, j12);
                }
                int serializedSize = l10 + this.unknownFields.getSerializedSize();
                this.memoizedSize = serializedSize;
                return serializedSize;
            }

            public Type getType() {
                Type valueOf = Type.valueOf(this.type_);
                return valueOf == null ? Type.UNRECOGNIZED : valueOf;
            }

            public int getTypeValue() {
                return this.type_;
            }

            public long getUncompressedSize() {
                return this.uncompressedSize_;
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
                int hashCode = ((((((((((((((((((779 + getDescriptor().hashCode()) * 37) + 1) * 53) + this.type_) * 37) + 2) * 53) + u0.i(getId())) * 37) + 3) * 53) + u0.i(getUncompressedSize())) * 37) + 4) * 53) + u0.i(getCompressedSize())) * 29) + this.unknownFields.hashCode();
                this.memoizedHashCode = hashCode;
                return hashCode;
            }

            @Override // com.google.protobuf.GeneratedMessageV3
            protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
                return j.f51245p.d(MessageEvent.class, b.class);
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

            @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
            public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
                if (this.type_ != Type.TYPE_UNSPECIFIED.getNumber()) {
                    codedOutputStream.v0(1, this.type_);
                }
                long j10 = this.id_;
                if (j10 != 0) {
                    codedOutputStream.e1(2, j10);
                }
                long j11 = this.uncompressedSize_;
                if (j11 != 0) {
                    codedOutputStream.e1(3, j11);
                }
                long j12 = this.compressedSize_;
                if (j12 != 0) {
                    codedOutputStream.e1(4, j12);
                }
                this.unknownFields.writeTo(codedOutputStream);
            }

            /* synthetic */ MessageEvent(GeneratedMessageV3.b bVar, a aVar) {
                this(bVar);
            }

            public static b newBuilder(MessageEvent messageEvent) {
                return DEFAULT_INSTANCE.toBuilder().g0(messageEvent);
            }

            public static MessageEvent parseFrom(ByteBuffer byteBuffer, f0 f0Var) throws InvalidProtocolBufferException {
                return PARSER.f(byteBuffer, f0Var);
            }

            private MessageEvent(GeneratedMessageV3.b<?> bVar) {
                super(bVar);
                this.memoizedIsInitialized = (byte) -1;
            }

            public static MessageEvent parseDelimitedFrom(InputStream inputStream, f0 f0Var) throws IOException {
                return (MessageEvent) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
            }

            public static MessageEvent parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
                return PARSER.c(byteString);
            }

            @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.p1, com.google.protobuf.r1
            public MessageEvent getDefaultInstanceForType() {
                return DEFAULT_INSTANCE;
            }

            @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
            public b toBuilder() {
                return this == DEFAULT_INSTANCE ? new b((a) null) : new b((a) null).g0(this);
            }

            public static MessageEvent parseFrom(ByteString byteString, f0 f0Var) throws InvalidProtocolBufferException {
                return PARSER.b(byteString, f0Var);
            }

            @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
            public b newBuilderForType() {
                return newBuilder();
            }

            private MessageEvent() {
                this.memoizedIsInitialized = (byte) -1;
                this.type_ = 0;
                this.id_ = 0L;
                this.uncompressedSize_ = 0L;
                this.compressedSize_ = 0L;
            }

            public static MessageEvent parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
                return PARSER.a(bArr);
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.google.protobuf.GeneratedMessageV3
            public b newBuilderForType(GeneratedMessageV3.c cVar) {
                return new b(cVar, null);
            }

            public static MessageEvent parseFrom(byte[] bArr, f0 f0Var) throws InvalidProtocolBufferException {
                return PARSER.g(bArr, f0Var);
            }

            public static MessageEvent parseFrom(InputStream inputStream) throws IOException {
                return (MessageEvent) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
            }

            public static MessageEvent parseFrom(InputStream inputStream, f0 f0Var) throws IOException {
                return (MessageEvent) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
            }

            private MessageEvent(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
                this();
                Objects.requireNonNull(f0Var);
                h3.b h10 = h3.h();
                boolean z10 = false;
                while (!z10) {
                    try {
                        try {
                            int L = pVar.L();
                            if (L != 0) {
                                if (L == 8) {
                                    this.type_ = pVar.u();
                                } else if (L == 16) {
                                    this.id_ = pVar.N();
                                } else if (L == 24) {
                                    this.uncompressedSize_ = pVar.N();
                                } else if (L != 32) {
                                    if (!parseUnknownFieldProto3(pVar, h10, f0Var, L)) {
                                    }
                                } else {
                                    this.compressedSize_ = pVar.N();
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

            public static MessageEvent parseFrom(p pVar) throws IOException {
                return (MessageEvent) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
            }

            public static MessageEvent parseFrom(p pVar, f0 f0Var) throws IOException {
                return (MessageEvent) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
            }
        }

        /* loaded from: classes7.dex */
        public enum ValueCase implements u0.c {
            ANNOTATION(2),
            MESSAGE_EVENT(3),
            VALUE_NOT_SET(0);
            
            private final int value;

            ValueCase(int i9) {
                this.value = i9;
            }

            public static ValueCase forNumber(int i9) {
                if (i9 != 0) {
                    if (i9 != 2) {
                        if (i9 != 3) {
                            return null;
                        }
                        return MESSAGE_EVENT;
                    }
                    return ANNOTATION;
                }
                return VALUE_NOT_SET;
            }

            @Override // com.google.protobuf.u0.c
            public int getNumber() {
                return this.value;
            }

            @Deprecated
            public static ValueCase valueOf(int i9) {
                return forNumber(i9);
            }
        }

        /* loaded from: classes7.dex */
        static class a extends com.google.protobuf.c<TimeEvent> {
            a() {
            }

            @Override // com.google.protobuf.e2
            /* renamed from: G */
            public TimeEvent m(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
                return new TimeEvent(pVar, f0Var, null);
            }
        }

        /* loaded from: classes7.dex */
        public interface b extends r1 {
        }

        /* loaded from: classes7.dex */
        public static final class c extends GeneratedMessageV3.b<c> implements g {

            /* renamed from: e  reason: collision with root package name */
            private int f51149e;

            /* renamed from: f  reason: collision with root package name */
            private Object f51150f;

            /* renamed from: g  reason: collision with root package name */
            private Timestamp f51151g;

            /* renamed from: h  reason: collision with root package name */
            private q2<Timestamp, Timestamp.b, z2> f51152h;

            /* renamed from: i  reason: collision with root package name */
            private q2<Annotation, Annotation.b, b> f51153i;

            /* renamed from: j  reason: collision with root package name */
            private q2<MessageEvent, MessageEvent.b, d> f51154j;

            /* synthetic */ c(GeneratedMessageV3.c cVar, a aVar) {
                this(cVar);
            }

            private void b0() {
                boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b
            protected GeneratedMessageV3.e K() {
                return j.f51241l.d(TimeEvent.class, c.class);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
            /* renamed from: W */
            public c L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                return (c) super.L(fieldDescriptor, obj);
            }

            @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
            /* renamed from: X */
            public TimeEvent build() {
                TimeEvent I = I();
                if (I.isInitialized()) {
                    return I;
                }
                throw a.AbstractC0142a.A(I);
            }

            @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
            /* renamed from: Y */
            public TimeEvent I() {
                TimeEvent timeEvent = new TimeEvent(this, (a) null);
                q2<Timestamp, Timestamp.b, z2> q2Var = this.f51152h;
                if (q2Var == null) {
                    timeEvent.time_ = this.f51151g;
                } else {
                    timeEvent.time_ = q2Var.b();
                }
                if (this.f51149e == 2) {
                    q2<Annotation, Annotation.b, b> q2Var2 = this.f51153i;
                    if (q2Var2 == null) {
                        timeEvent.value_ = this.f51150f;
                    } else {
                        timeEvent.value_ = q2Var2.b();
                    }
                }
                if (this.f51149e == 3) {
                    q2<MessageEvent, MessageEvent.b, d> q2Var3 = this.f51154j;
                    if (q2Var3 == null) {
                        timeEvent.value_ = this.f51150f;
                    } else {
                        timeEvent.value_ = q2Var3.b();
                    }
                }
                timeEvent.valueCase_ = this.f51149e;
                Q();
                return timeEvent;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
            /* renamed from: Z */
            public c n() {
                return (c) super.n();
            }

            @Override // com.google.protobuf.p1, com.google.protobuf.r1
            /* renamed from: a0 */
            public TimeEvent getDefaultInstanceForType() {
                return TimeEvent.getDefaultInstance();
            }

            public c d0(Annotation annotation) {
                q2<Annotation, Annotation.b, b> q2Var = this.f51153i;
                if (q2Var == null) {
                    if (this.f51149e == 2 && this.f51150f != Annotation.getDefaultInstance()) {
                        this.f51150f = Annotation.newBuilder((Annotation) this.f51150f).i0(annotation).I();
                    } else {
                        this.f51150f = annotation;
                    }
                    R();
                } else {
                    if (this.f51149e == 2) {
                        q2Var.e(annotation);
                    }
                    this.f51153i.g(annotation);
                }
                this.f51149e = 2;
                return this;
            }

            /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
            @Override // com.google.protobuf.a.AbstractC0142a
            /* renamed from: e0 */
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public io.opencensus.proto.trace.v1.Span.TimeEvent.c u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
                /*
                    r2 = this;
                    r0 = 0
                    com.google.protobuf.e2 r1 = io.opencensus.proto.trace.v1.Span.TimeEvent.access$5900()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                    java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                    io.opencensus.proto.trace.v1.Span$TimeEvent r3 = (io.opencensus.proto.trace.v1.Span.TimeEvent) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
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
                    io.opencensus.proto.trace.v1.Span$TimeEvent r4 = (io.opencensus.proto.trace.v1.Span.TimeEvent) r4     // Catch: java.lang.Throwable -> L11
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
                throw new UnsupportedOperationException("Method not decompiled: io.opencensus.proto.trace.v1.Span.TimeEvent.c.u(com.google.protobuf.p, com.google.protobuf.f0):io.opencensus.proto.trace.v1.Span$TimeEvent$c");
            }

            @Override // com.google.protobuf.a.AbstractC0142a
            /* renamed from: g0 */
            public c v(l1 l1Var) {
                if (l1Var instanceof TimeEvent) {
                    return h0((TimeEvent) l1Var);
                }
                super.P0(l1Var);
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
            public Descriptors.b getDescriptorForType() {
                return j.f51240k;
            }

            public c h0(TimeEvent timeEvent) {
                if (timeEvent == TimeEvent.getDefaultInstance()) {
                    return this;
                }
                if (timeEvent.hasTime()) {
                    j0(timeEvent.getTime());
                }
                int i9 = b.f51165a[timeEvent.getValueCase().ordinal()];
                if (i9 == 1) {
                    d0(timeEvent.getAnnotation());
                } else if (i9 == 2) {
                    i0(timeEvent.getMessageEvent());
                }
                z(((GeneratedMessageV3) timeEvent).unknownFields);
                R();
                return this;
            }

            public c i0(MessageEvent messageEvent) {
                q2<MessageEvent, MessageEvent.b, d> q2Var = this.f51154j;
                if (q2Var == null) {
                    if (this.f51149e == 3 && this.f51150f != MessageEvent.getDefaultInstance()) {
                        this.f51150f = MessageEvent.newBuilder((MessageEvent) this.f51150f).g0(messageEvent).I();
                    } else {
                        this.f51150f = messageEvent;
                    }
                    R();
                } else {
                    if (this.f51149e == 3) {
                        q2Var.e(messageEvent);
                    }
                    this.f51154j.g(messageEvent);
                }
                this.f51149e = 3;
                return this;
            }

            public c j0(Timestamp timestamp) {
                q2<Timestamp, Timestamp.b, z2> q2Var = this.f51152h;
                if (q2Var == null) {
                    Timestamp timestamp2 = this.f51151g;
                    if (timestamp2 != null) {
                        this.f51151g = Timestamp.newBuilder(timestamp2).g0(timestamp).I();
                    } else {
                        this.f51151g = timestamp;
                    }
                    R();
                } else {
                    q2Var.e(timestamp);
                }
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
            /* renamed from: k0 */
            public final c z(h3 h3Var) {
                return (c) super.z(h3Var);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
            /* renamed from: l0 */
            public c c(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                return (c) super.c(fieldDescriptor, obj);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
            /* renamed from: m0 */
            public final c f1(h3 h3Var) {
                return (c) super.V(h3Var);
            }

            /* synthetic */ c(a aVar) {
                this();
            }

            private c() {
                this.f51149e = 0;
                this.f51151g = null;
                b0();
            }

            private c(GeneratedMessageV3.c cVar) {
                super(cVar);
                this.f51149e = 0;
                this.f51151g = null;
                b0();
            }
        }

        /* loaded from: classes7.dex */
        public interface d extends r1 {
        }

        /* synthetic */ TimeEvent(p pVar, f0 f0Var, a aVar) throws InvalidProtocolBufferException {
            this(pVar, f0Var);
        }

        public static TimeEvent getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static final Descriptors.b getDescriptor() {
            return j.f51240k;
        }

        public static c newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static TimeEvent parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (TimeEvent) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static TimeEvent parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.l(byteBuffer);
        }

        public static e2<TimeEvent> parser() {
            return PARSER;
        }

        /* JADX WARN: Code restructure failed: missing block: B:34:0x0063, code lost:
            if (getMessageEvent().equals(r6.getMessageEvent()) != false) goto L32;
         */
        /* JADX WARN: Code restructure failed: missing block: B:35:0x0065, code lost:
            r1 = true;
         */
        /* JADX WARN: Code restructure failed: missing block: B:39:0x0077, code lost:
            if (getAnnotation().equals(r6.getAnnotation()) != false) goto L32;
         */
        @Override // com.google.protobuf.a
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public boolean equals(java.lang.Object r6) {
            /*
                r5 = this;
                r0 = 1
                if (r6 != r5) goto L4
                return r0
            L4:
                boolean r1 = r6 instanceof io.opencensus.proto.trace.v1.Span.TimeEvent
                if (r1 != 0) goto Ld
                boolean r6 = super.equals(r6)
                return r6
            Ld:
                io.opencensus.proto.trace.v1.Span$TimeEvent r6 = (io.opencensus.proto.trace.v1.Span.TimeEvent) r6
                boolean r1 = r5.hasTime()
                boolean r2 = r6.hasTime()
                r3 = 0
                if (r1 != r2) goto L1c
                r1 = 1
                goto L1d
            L1c:
                r1 = 0
            L1d:
                boolean r2 = r5.hasTime()
                if (r2 == 0) goto L36
                if (r1 == 0) goto L35
                com.google.protobuf.Timestamp r1 = r5.getTime()
                com.google.protobuf.Timestamp r2 = r6.getTime()
                boolean r1 = r1.equals(r2)
                if (r1 == 0) goto L35
                r1 = 1
                goto L36
            L35:
                r1 = 0
            L36:
                if (r1 == 0) goto L48
                io.opencensus.proto.trace.v1.Span$TimeEvent$ValueCase r1 = r5.getValueCase()
                io.opencensus.proto.trace.v1.Span$TimeEvent$ValueCase r2 = r6.getValueCase()
                boolean r1 = r1.equals(r2)
                if (r1 == 0) goto L48
                r1 = 1
                goto L49
            L48:
                r1 = 0
            L49:
                if (r1 != 0) goto L4c
                return r3
            L4c:
                int r2 = r5.valueCase_
                r4 = 2
                if (r2 == r4) goto L69
                r4 = 3
                if (r2 == r4) goto L55
                goto L7a
            L55:
                if (r1 == 0) goto L67
                io.opencensus.proto.trace.v1.Span$TimeEvent$MessageEvent r1 = r5.getMessageEvent()
                io.opencensus.proto.trace.v1.Span$TimeEvent$MessageEvent r2 = r6.getMessageEvent()
                boolean r1 = r1.equals(r2)
                if (r1 == 0) goto L67
            L65:
                r1 = 1
                goto L7a
            L67:
                r1 = 0
                goto L7a
            L69:
                if (r1 == 0) goto L67
                io.opencensus.proto.trace.v1.Span$TimeEvent$Annotation r1 = r5.getAnnotation()
                io.opencensus.proto.trace.v1.Span$TimeEvent$Annotation r2 = r6.getAnnotation()
                boolean r1 = r1.equals(r2)
                if (r1 == 0) goto L67
                goto L65
            L7a:
                if (r1 == 0) goto L87
                com.google.protobuf.h3 r1 = r5.unknownFields
                com.google.protobuf.h3 r6 = r6.unknownFields
                boolean r6 = r1.equals(r6)
                if (r6 == 0) goto L87
                goto L88
            L87:
                r0 = 0
            L88:
                return r0
            */
            throw new UnsupportedOperationException("Method not decompiled: io.opencensus.proto.trace.v1.Span.TimeEvent.equals(java.lang.Object):boolean");
        }

        public Annotation getAnnotation() {
            if (this.valueCase_ == 2) {
                return (Annotation) this.value_;
            }
            return Annotation.getDefaultInstance();
        }

        public b getAnnotationOrBuilder() {
            if (this.valueCase_ == 2) {
                return (Annotation) this.value_;
            }
            return Annotation.getDefaultInstance();
        }

        public MessageEvent getMessageEvent() {
            if (this.valueCase_ == 3) {
                return (MessageEvent) this.value_;
            }
            return MessageEvent.getDefaultInstance();
        }

        public d getMessageEventOrBuilder() {
            if (this.valueCase_ == 3) {
                return (MessageEvent) this.value_;
            }
            return MessageEvent.getDefaultInstance();
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
        public e2<TimeEvent> getParserForType() {
            return PARSER;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
        public int getSerializedSize() {
            int i9 = this.memoizedSize;
            if (i9 != -1) {
                return i9;
            }
            int G = this.time_ != null ? 0 + CodedOutputStream.G(1, getTime()) : 0;
            if (this.valueCase_ == 2) {
                G += CodedOutputStream.G(2, (Annotation) this.value_);
            }
            if (this.valueCase_ == 3) {
                G += CodedOutputStream.G(3, (MessageEvent) this.value_);
            }
            int serializedSize = G + this.unknownFields.getSerializedSize();
            this.memoizedSize = serializedSize;
            return serializedSize;
        }

        public Timestamp getTime() {
            Timestamp timestamp = this.time_;
            return timestamp == null ? Timestamp.getDefaultInstance() : timestamp;
        }

        public z2 getTimeOrBuilder() {
            return getTime();
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.r1
        public final h3 getUnknownFields() {
            return this.unknownFields;
        }

        public ValueCase getValueCase() {
            return ValueCase.forNumber(this.valueCase_);
        }

        public boolean hasAnnotation() {
            return this.valueCase_ == 2;
        }

        public boolean hasMessageEvent() {
            return this.valueCase_ == 3;
        }

        public boolean hasTime() {
            return this.time_ != null;
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
            if (hasTime()) {
                hashCode2 = (((hashCode2 * 37) + 1) * 53) + getTime().hashCode();
            }
            int i11 = this.valueCase_;
            if (i11 == 2) {
                i9 = ((hashCode2 * 37) + 2) * 53;
                hashCode = getAnnotation().hashCode();
            } else {
                if (i11 == 3) {
                    i9 = ((hashCode2 * 37) + 3) * 53;
                    hashCode = getMessageEvent().hashCode();
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
            return j.f51241l.d(TimeEvent.class, c.class);
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

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
        public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
            if (this.time_ != null) {
                codedOutputStream.L0(1, getTime());
            }
            if (this.valueCase_ == 2) {
                codedOutputStream.L0(2, (Annotation) this.value_);
            }
            if (this.valueCase_ == 3) {
                codedOutputStream.L0(3, (MessageEvent) this.value_);
            }
            this.unknownFields.writeTo(codedOutputStream);
        }

        /* synthetic */ TimeEvent(GeneratedMessageV3.b bVar, a aVar) {
            this(bVar);
        }

        public static c newBuilder(TimeEvent timeEvent) {
            return DEFAULT_INSTANCE.toBuilder().h0(timeEvent);
        }

        public static TimeEvent parseFrom(ByteBuffer byteBuffer, f0 f0Var) throws InvalidProtocolBufferException {
            return PARSER.f(byteBuffer, f0Var);
        }

        private TimeEvent(GeneratedMessageV3.b<?> bVar) {
            super(bVar);
            this.valueCase_ = 0;
            this.memoizedIsInitialized = (byte) -1;
        }

        public static TimeEvent parseDelimitedFrom(InputStream inputStream, f0 f0Var) throws IOException {
            return (TimeEvent) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
        }

        public static TimeEvent parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.c(byteString);
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.p1, com.google.protobuf.r1
        public TimeEvent getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
        public c toBuilder() {
            return this == DEFAULT_INSTANCE ? new c((a) null) : new c((a) null).h0(this);
        }

        public static TimeEvent parseFrom(ByteString byteString, f0 f0Var) throws InvalidProtocolBufferException {
            return PARSER.b(byteString, f0Var);
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
        public c newBuilderForType() {
            return newBuilder();
        }

        public static TimeEvent parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.a(bArr);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.protobuf.GeneratedMessageV3
        public c newBuilderForType(GeneratedMessageV3.c cVar) {
            return new c(cVar, null);
        }

        private TimeEvent() {
            this.valueCase_ = 0;
            this.memoizedIsInitialized = (byte) -1;
        }

        public static TimeEvent parseFrom(byte[] bArr, f0 f0Var) throws InvalidProtocolBufferException {
            return PARSER.g(bArr, f0Var);
        }

        public static TimeEvent parseFrom(InputStream inputStream) throws IOException {
            return (TimeEvent) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
        }

        private TimeEvent(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
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
                                Timestamp timestamp = this.time_;
                                Timestamp.b builder = timestamp != null ? timestamp.toBuilder() : null;
                                Timestamp timestamp2 = (Timestamp) pVar.B(Timestamp.parser(), f0Var);
                                this.time_ = timestamp2;
                                if (builder != null) {
                                    builder.g0(timestamp2);
                                    this.time_ = builder.I();
                                }
                            } else if (L == 18) {
                                Annotation.b builder2 = this.valueCase_ == 2 ? ((Annotation) this.value_).toBuilder() : null;
                                o1 B = pVar.B(Annotation.parser(), f0Var);
                                this.value_ = B;
                                if (builder2 != null) {
                                    builder2.i0((Annotation) B);
                                    this.value_ = builder2.I();
                                }
                                this.valueCase_ = 2;
                            } else if (L != 26) {
                                if (!parseUnknownFieldProto3(pVar, h10, f0Var, L)) {
                                }
                            } else {
                                MessageEvent.b builder3 = this.valueCase_ == 3 ? ((MessageEvent) this.value_).toBuilder() : null;
                                o1 B2 = pVar.B(MessageEvent.parser(), f0Var);
                                this.value_ = B2;
                                if (builder3 != null) {
                                    builder3.g0((MessageEvent) B2);
                                    this.value_ = builder3.I();
                                }
                                this.valueCase_ = 3;
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

        public static TimeEvent parseFrom(InputStream inputStream, f0 f0Var) throws IOException {
            return (TimeEvent) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
        }

        public static TimeEvent parseFrom(p pVar) throws IOException {
            return (TimeEvent) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
        }

        public static TimeEvent parseFrom(p pVar, f0 f0Var) throws IOException {
            return (TimeEvent) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
        }
    }

    /* loaded from: classes7.dex */
    public static final class TimeEvents extends GeneratedMessageV3 implements h {
        public static final int DROPPED_ANNOTATIONS_COUNT_FIELD_NUMBER = 2;
        public static final int DROPPED_MESSAGE_EVENTS_COUNT_FIELD_NUMBER = 3;
        public static final int TIME_EVENT_FIELD_NUMBER = 1;
        private static final long serialVersionUID = 0;
        private int bitField0_;
        private int droppedAnnotationsCount_;
        private int droppedMessageEventsCount_;
        private byte memoizedIsInitialized;
        private List<TimeEvent> timeEvent_;
        private static final TimeEvents DEFAULT_INSTANCE = new TimeEvents();
        private static final e2<TimeEvents> PARSER = new a();

        /* loaded from: classes7.dex */
        static class a extends com.google.protobuf.c<TimeEvents> {
            a() {
            }

            @Override // com.google.protobuf.e2
            /* renamed from: G */
            public TimeEvents m(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
                return new TimeEvents(pVar, f0Var, null);
            }
        }

        /* loaded from: classes7.dex */
        public static final class b extends GeneratedMessageV3.b<b> implements h {

            /* renamed from: e  reason: collision with root package name */
            private int f51155e;

            /* renamed from: f  reason: collision with root package name */
            private List<TimeEvent> f51156f;

            /* renamed from: g  reason: collision with root package name */
            private l2<TimeEvent, TimeEvent.c, g> f51157g;

            /* renamed from: h  reason: collision with root package name */
            private int f51158h;

            /* renamed from: i  reason: collision with root package name */
            private int f51159i;

            /* synthetic */ b(GeneratedMessageV3.c cVar, a aVar) {
                this(cVar);
            }

            private void a0() {
                if ((this.f51155e & 1) != 1) {
                    this.f51156f = new ArrayList(this.f51156f);
                    this.f51155e |= 1;
                }
            }

            private l2<TimeEvent, TimeEvent.c, g> d0() {
                if (this.f51157g == null) {
                    this.f51157g = new l2<>(this.f51156f, (this.f51155e & 1) == 1, H(), O());
                    this.f51156f = null;
                }
                return this.f51157g;
            }

            private void e0() {
                if (GeneratedMessageV3.alwaysUseFieldBuilders) {
                    d0();
                }
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b
            protected GeneratedMessageV3.e K() {
                return j.f51247r.d(TimeEvents.class, b.class);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
            /* renamed from: W */
            public b L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                return (b) super.L(fieldDescriptor, obj);
            }

            @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
            /* renamed from: X */
            public TimeEvents build() {
                TimeEvents I = I();
                if (I.isInitialized()) {
                    return I;
                }
                throw a.AbstractC0142a.A(I);
            }

            @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
            /* renamed from: Y */
            public TimeEvents I() {
                TimeEvents timeEvents = new TimeEvents(this, (a) null);
                int i9 = this.f51155e;
                l2<TimeEvent, TimeEvent.c, g> l2Var = this.f51157g;
                if (l2Var == null) {
                    if ((i9 & 1) == 1) {
                        this.f51156f = Collections.unmodifiableList(this.f51156f);
                        this.f51155e &= -2;
                    }
                    timeEvents.timeEvent_ = this.f51156f;
                } else {
                    timeEvents.timeEvent_ = l2Var.e();
                }
                timeEvents.droppedAnnotationsCount_ = this.f51158h;
                timeEvents.droppedMessageEventsCount_ = this.f51159i;
                timeEvents.bitField0_ = 0;
                Q();
                return timeEvents;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
            /* renamed from: Z */
            public b n() {
                return (b) super.n();
            }

            @Override // com.google.protobuf.p1, com.google.protobuf.r1
            /* renamed from: b0 */
            public TimeEvents getDefaultInstanceForType() {
                return TimeEvents.getDefaultInstance();
            }

            /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
            @Override // com.google.protobuf.a.AbstractC0142a
            /* renamed from: g0 */
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public io.opencensus.proto.trace.v1.Span.TimeEvents.b u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
                /*
                    r2 = this;
                    r0 = 0
                    com.google.protobuf.e2 r1 = io.opencensus.proto.trace.v1.Span.TimeEvents.access$7100()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                    java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                    io.opencensus.proto.trace.v1.Span$TimeEvents r3 = (io.opencensus.proto.trace.v1.Span.TimeEvents) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
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
                    io.opencensus.proto.trace.v1.Span$TimeEvents r4 = (io.opencensus.proto.trace.v1.Span.TimeEvents) r4     // Catch: java.lang.Throwable -> L11
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
                throw new UnsupportedOperationException("Method not decompiled: io.opencensus.proto.trace.v1.Span.TimeEvents.b.u(com.google.protobuf.p, com.google.protobuf.f0):io.opencensus.proto.trace.v1.Span$TimeEvents$b");
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
            public Descriptors.b getDescriptorForType() {
                return j.f51246q;
            }

            @Override // com.google.protobuf.a.AbstractC0142a
            /* renamed from: h0 */
            public b v(l1 l1Var) {
                if (l1Var instanceof TimeEvents) {
                    return i0((TimeEvents) l1Var);
                }
                super.P0(l1Var);
                return this;
            }

            public b i0(TimeEvents timeEvents) {
                if (timeEvents == TimeEvents.getDefaultInstance()) {
                    return this;
                }
                if (this.f51157g == null) {
                    if (!timeEvents.timeEvent_.isEmpty()) {
                        if (this.f51156f.isEmpty()) {
                            this.f51156f = timeEvents.timeEvent_;
                            this.f51155e &= -2;
                        } else {
                            a0();
                            this.f51156f.addAll(timeEvents.timeEvent_);
                        }
                        R();
                    }
                } else if (!timeEvents.timeEvent_.isEmpty()) {
                    if (this.f51157g.k()) {
                        this.f51157g.f();
                        this.f51157g = null;
                        this.f51156f = timeEvents.timeEvent_;
                        this.f51155e &= -2;
                        this.f51157g = GeneratedMessageV3.alwaysUseFieldBuilders ? d0() : null;
                    } else {
                        this.f51157g.b(timeEvents.timeEvent_);
                    }
                }
                if (timeEvents.getDroppedAnnotationsCount() != 0) {
                    k0(timeEvents.getDroppedAnnotationsCount());
                }
                if (timeEvents.getDroppedMessageEventsCount() != 0) {
                    l0(timeEvents.getDroppedMessageEventsCount());
                }
                z(((GeneratedMessageV3) timeEvents).unknownFields);
                R();
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
            /* renamed from: j0 */
            public final b z(h3 h3Var) {
                return (b) super.z(h3Var);
            }

            public b k0(int i9) {
                this.f51158h = i9;
                R();
                return this;
            }

            public b l0(int i9) {
                this.f51159i = i9;
                R();
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
            /* renamed from: m0 */
            public b c(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                return (b) super.c(fieldDescriptor, obj);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
            /* renamed from: n0 */
            public final b f1(h3 h3Var) {
                return (b) super.V(h3Var);
            }

            /* synthetic */ b(a aVar) {
                this();
            }

            private b() {
                this.f51156f = Collections.emptyList();
                e0();
            }

            private b(GeneratedMessageV3.c cVar) {
                super(cVar);
                this.f51156f = Collections.emptyList();
                e0();
            }
        }

        /* synthetic */ TimeEvents(p pVar, f0 f0Var, a aVar) throws InvalidProtocolBufferException {
            this(pVar, f0Var);
        }

        public static TimeEvents getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static final Descriptors.b getDescriptor() {
            return j.f51246q;
        }

        public static b newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static TimeEvents parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (TimeEvents) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static TimeEvents parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.l(byteBuffer);
        }

        public static e2<TimeEvents> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.a
        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof TimeEvents)) {
                return super.equals(obj);
            }
            TimeEvents timeEvents = (TimeEvents) obj;
            return (((getTimeEventList().equals(timeEvents.getTimeEventList())) && getDroppedAnnotationsCount() == timeEvents.getDroppedAnnotationsCount()) && getDroppedMessageEventsCount() == timeEvents.getDroppedMessageEventsCount()) && this.unknownFields.equals(timeEvents.unknownFields);
        }

        public int getDroppedAnnotationsCount() {
            return this.droppedAnnotationsCount_;
        }

        public int getDroppedMessageEventsCount() {
            return this.droppedMessageEventsCount_;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
        public e2<TimeEvents> getParserForType() {
            return PARSER;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
        public int getSerializedSize() {
            int i9 = this.memoizedSize;
            if (i9 != -1) {
                return i9;
            }
            int i10 = 0;
            for (int i11 = 0; i11 < this.timeEvent_.size(); i11++) {
                i10 += CodedOutputStream.G(1, this.timeEvent_.get(i11));
            }
            int i12 = this.droppedAnnotationsCount_;
            if (i12 != 0) {
                i10 += CodedOutputStream.x(2, i12);
            }
            int i13 = this.droppedMessageEventsCount_;
            if (i13 != 0) {
                i10 += CodedOutputStream.x(3, i13);
            }
            int serializedSize = i10 + this.unknownFields.getSerializedSize();
            this.memoizedSize = serializedSize;
            return serializedSize;
        }

        public TimeEvent getTimeEvent(int i9) {
            return this.timeEvent_.get(i9);
        }

        public int getTimeEventCount() {
            return this.timeEvent_.size();
        }

        public List<TimeEvent> getTimeEventList() {
            return this.timeEvent_;
        }

        public g getTimeEventOrBuilder(int i9) {
            return this.timeEvent_.get(i9);
        }

        public List<? extends g> getTimeEventOrBuilderList() {
            return this.timeEvent_;
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
            if (getTimeEventCount() > 0) {
                hashCode = (((hashCode * 37) + 1) * 53) + getTimeEventList().hashCode();
            }
            int droppedAnnotationsCount = (((((((((hashCode * 37) + 2) * 53) + getDroppedAnnotationsCount()) * 37) + 3) * 53) + getDroppedMessageEventsCount()) * 29) + this.unknownFields.hashCode();
            this.memoizedHashCode = droppedAnnotationsCount;
            return droppedAnnotationsCount;
        }

        @Override // com.google.protobuf.GeneratedMessageV3
        protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
            return j.f51247r.d(TimeEvents.class, b.class);
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

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
        public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
            for (int i9 = 0; i9 < this.timeEvent_.size(); i9++) {
                codedOutputStream.L0(1, this.timeEvent_.get(i9));
            }
            int i10 = this.droppedAnnotationsCount_;
            if (i10 != 0) {
                codedOutputStream.H0(2, i10);
            }
            int i11 = this.droppedMessageEventsCount_;
            if (i11 != 0) {
                codedOutputStream.H0(3, i11);
            }
            this.unknownFields.writeTo(codedOutputStream);
        }

        /* synthetic */ TimeEvents(GeneratedMessageV3.b bVar, a aVar) {
            this(bVar);
        }

        public static b newBuilder(TimeEvents timeEvents) {
            return DEFAULT_INSTANCE.toBuilder().i0(timeEvents);
        }

        public static TimeEvents parseFrom(ByteBuffer byteBuffer, f0 f0Var) throws InvalidProtocolBufferException {
            return PARSER.f(byteBuffer, f0Var);
        }

        private TimeEvents(GeneratedMessageV3.b<?> bVar) {
            super(bVar);
            this.memoizedIsInitialized = (byte) -1;
        }

        public static TimeEvents parseDelimitedFrom(InputStream inputStream, f0 f0Var) throws IOException {
            return (TimeEvents) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
        }

        public static TimeEvents parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.c(byteString);
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.p1, com.google.protobuf.r1
        public TimeEvents getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
        public b toBuilder() {
            return this == DEFAULT_INSTANCE ? new b((a) null) : new b((a) null).i0(this);
        }

        public static TimeEvents parseFrom(ByteString byteString, f0 f0Var) throws InvalidProtocolBufferException {
            return PARSER.b(byteString, f0Var);
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
        public b newBuilderForType() {
            return newBuilder();
        }

        private TimeEvents() {
            this.memoizedIsInitialized = (byte) -1;
            this.timeEvent_ = Collections.emptyList();
            this.droppedAnnotationsCount_ = 0;
            this.droppedMessageEventsCount_ = 0;
        }

        public static TimeEvents parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.a(bArr);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.protobuf.GeneratedMessageV3
        public b newBuilderForType(GeneratedMessageV3.c cVar) {
            return new b(cVar, null);
        }

        public static TimeEvents parseFrom(byte[] bArr, f0 f0Var) throws InvalidProtocolBufferException {
            return PARSER.g(bArr, f0Var);
        }

        public static TimeEvents parseFrom(InputStream inputStream) throws IOException {
            return (TimeEvents) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
        }

        public static TimeEvents parseFrom(InputStream inputStream, f0 f0Var) throws IOException {
            return (TimeEvents) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
        }

        /* JADX WARN: Multi-variable type inference failed */
        private TimeEvents(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
            this();
            Objects.requireNonNull(f0Var);
            h3.b h10 = h3.h();
            boolean z10 = false;
            boolean z11 = false;
            while (true) {
                if (z10) {
                    break;
                }
                try {
                    try {
                        try {
                            int L = pVar.L();
                            if (L != 0) {
                                if (L == 10) {
                                    if (!(z11 & true)) {
                                        this.timeEvent_ = new ArrayList();
                                        z11 |= true;
                                    }
                                    this.timeEvent_.add(pVar.B(TimeEvent.parser(), f0Var));
                                } else if (L == 16) {
                                    this.droppedAnnotationsCount_ = pVar.z();
                                } else if (L != 24) {
                                    if (!parseUnknownFieldProto3(pVar, h10, f0Var, L)) {
                                    }
                                } else {
                                    this.droppedMessageEventsCount_ = pVar.z();
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
                    if (z11 & true) {
                        this.timeEvent_ = Collections.unmodifiableList(this.timeEvent_);
                    }
                    this.unknownFields = h10.build();
                    makeExtensionsImmutable();
                }
            }
        }

        public static TimeEvents parseFrom(p pVar) throws IOException {
            return (TimeEvents) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
        }

        public static TimeEvents parseFrom(p pVar, f0 f0Var) throws IOException {
            return (TimeEvents) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
        }
    }

    /* loaded from: classes7.dex */
    public static final class Tracestate extends GeneratedMessageV3 implements i {
        public static final int ENTRIES_FIELD_NUMBER = 1;
        private static final long serialVersionUID = 0;
        private List<Entry> entries_;
        private byte memoizedIsInitialized;
        private static final Tracestate DEFAULT_INSTANCE = new Tracestate();
        private static final e2<Tracestate> PARSER = new a();

        /* loaded from: classes7.dex */
        public static final class Entry extends GeneratedMessageV3 implements c {
            public static final int KEY_FIELD_NUMBER = 1;
            public static final int VALUE_FIELD_NUMBER = 2;
            private static final long serialVersionUID = 0;
            private volatile Object key_;
            private byte memoizedIsInitialized;
            private volatile Object value_;
            private static final Entry DEFAULT_INSTANCE = new Entry();
            private static final e2<Entry> PARSER = new a();

            /* loaded from: classes7.dex */
            static class a extends com.google.protobuf.c<Entry> {
                a() {
                }

                @Override // com.google.protobuf.e2
                /* renamed from: G */
                public Entry m(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
                    return new Entry(pVar, f0Var, null);
                }
            }

            /* loaded from: classes7.dex */
            public static final class b extends GeneratedMessageV3.b<b> implements c {

                /* renamed from: e  reason: collision with root package name */
                private Object f51160e;

                /* renamed from: f  reason: collision with root package name */
                private Object f51161f;

                /* synthetic */ b(GeneratedMessageV3.c cVar, a aVar) {
                    this(cVar);
                }

                private void b0() {
                    boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
                }

                @Override // com.google.protobuf.GeneratedMessageV3.b
                protected GeneratedMessageV3.e K() {
                    return j.f51235f.d(Entry.class, b.class);
                }

                @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
                /* renamed from: W */
                public b L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                    return (b) super.L(fieldDescriptor, obj);
                }

                @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
                /* renamed from: X */
                public Entry build() {
                    Entry I = I();
                    if (I.isInitialized()) {
                        return I;
                    }
                    throw a.AbstractC0142a.A(I);
                }

                @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
                /* renamed from: Y */
                public Entry I() {
                    Entry entry = new Entry(this, (a) null);
                    entry.key_ = this.f51160e;
                    entry.value_ = this.f51161f;
                    Q();
                    return entry;
                }

                @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
                /* renamed from: Z */
                public b n() {
                    return (b) super.n();
                }

                @Override // com.google.protobuf.p1, com.google.protobuf.r1
                /* renamed from: a0 */
                public Entry getDefaultInstanceForType() {
                    return Entry.getDefaultInstance();
                }

                /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
                @Override // com.google.protobuf.a.AbstractC0142a
                /* renamed from: d0 */
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                    To view partially-correct add '--show-bad-code' argument
                */
                public io.opencensus.proto.trace.v1.Span.Tracestate.Entry.b u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
                    /*
                        r2 = this;
                        r0 = 0
                        com.google.protobuf.e2 r1 = io.opencensus.proto.trace.v1.Span.Tracestate.Entry.access$700()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                        java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                        io.opencensus.proto.trace.v1.Span$Tracestate$Entry r3 = (io.opencensus.proto.trace.v1.Span.Tracestate.Entry) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
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
                        io.opencensus.proto.trace.v1.Span$Tracestate$Entry r4 = (io.opencensus.proto.trace.v1.Span.Tracestate.Entry) r4     // Catch: java.lang.Throwable -> L11
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
                    throw new UnsupportedOperationException("Method not decompiled: io.opencensus.proto.trace.v1.Span.Tracestate.Entry.b.u(com.google.protobuf.p, com.google.protobuf.f0):io.opencensus.proto.trace.v1.Span$Tracestate$Entry$b");
                }

                @Override // com.google.protobuf.a.AbstractC0142a
                /* renamed from: e0 */
                public b v(l1 l1Var) {
                    if (l1Var instanceof Entry) {
                        return g0((Entry) l1Var);
                    }
                    super.P0(l1Var);
                    return this;
                }

                public b g0(Entry entry) {
                    if (entry == Entry.getDefaultInstance()) {
                        return this;
                    }
                    if (!entry.getKey().isEmpty()) {
                        this.f51160e = entry.key_;
                        R();
                    }
                    if (!entry.getValue().isEmpty()) {
                        this.f51161f = entry.value_;
                        R();
                    }
                    z(((GeneratedMessageV3) entry).unknownFields);
                    R();
                    return this;
                }

                @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
                public Descriptors.b getDescriptorForType() {
                    return j.f51234e;
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
                    return (b) super.V(h3Var);
                }

                /* synthetic */ b(a aVar) {
                    this();
                }

                private b() {
                    this.f51160e = "";
                    this.f51161f = "";
                    b0();
                }

                private b(GeneratedMessageV3.c cVar) {
                    super(cVar);
                    this.f51160e = "";
                    this.f51161f = "";
                    b0();
                }
            }

            /* synthetic */ Entry(p pVar, f0 f0Var, a aVar) throws InvalidProtocolBufferException {
                this(pVar, f0Var);
            }

            public static Entry getDefaultInstance() {
                return DEFAULT_INSTANCE;
            }

            public static final Descriptors.b getDescriptor() {
                return j.f51234e;
            }

            public static b newBuilder() {
                return DEFAULT_INSTANCE.toBuilder();
            }

            public static Entry parseDelimitedFrom(InputStream inputStream) throws IOException {
                return (Entry) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
            }

            public static Entry parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
                return PARSER.l(byteBuffer);
            }

            public static e2<Entry> parser() {
                return PARSER;
            }

            @Override // com.google.protobuf.a
            public boolean equals(Object obj) {
                if (obj == this) {
                    return true;
                }
                if (!(obj instanceof Entry)) {
                    return super.equals(obj);
                }
                Entry entry = (Entry) obj;
                return ((getKey().equals(entry.getKey())) && getValue().equals(entry.getValue())) && this.unknownFields.equals(entry.unknownFields);
            }

            public String getKey() {
                Object obj = this.key_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.key_ = stringUtf8;
                return stringUtf8;
            }

            public ByteString getKeyBytes() {
                Object obj = this.key_;
                if (obj instanceof String) {
                    ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                    this.key_ = copyFromUtf8;
                    return copyFromUtf8;
                }
                return (ByteString) obj;
            }

            @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
            public e2<Entry> getParserForType() {
                return PARSER;
            }

            @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
            public int getSerializedSize() {
                int i9 = this.memoizedSize;
                if (i9 != -1) {
                    return i9;
                }
                int computeStringSize = getKeyBytes().isEmpty() ? 0 : 0 + GeneratedMessageV3.computeStringSize(1, this.key_);
                if (!getValueBytes().isEmpty()) {
                    computeStringSize += GeneratedMessageV3.computeStringSize(2, this.value_);
                }
                int serializedSize = computeStringSize + this.unknownFields.getSerializedSize();
                this.memoizedSize = serializedSize;
                return serializedSize;
            }

            @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.r1
            public final h3 getUnknownFields() {
                return this.unknownFields;
            }

            public String getValue() {
                Object obj = this.value_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.value_ = stringUtf8;
                return stringUtf8;
            }

            public ByteString getValueBytes() {
                Object obj = this.value_;
                if (obj instanceof String) {
                    ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                    this.value_ = copyFromUtf8;
                    return copyFromUtf8;
                }
                return (ByteString) obj;
            }

            @Override // com.google.protobuf.a
            public int hashCode() {
                int i9 = this.memoizedHashCode;
                if (i9 != 0) {
                    return i9;
                }
                int hashCode = ((((((((((779 + getDescriptor().hashCode()) * 37) + 1) * 53) + getKey().hashCode()) * 37) + 2) * 53) + getValue().hashCode()) * 29) + this.unknownFields.hashCode();
                this.memoizedHashCode = hashCode;
                return hashCode;
            }

            @Override // com.google.protobuf.GeneratedMessageV3
            protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
                return j.f51235f.d(Entry.class, b.class);
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

            @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
            public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
                if (!getKeyBytes().isEmpty()) {
                    GeneratedMessageV3.writeString(codedOutputStream, 1, this.key_);
                }
                if (!getValueBytes().isEmpty()) {
                    GeneratedMessageV3.writeString(codedOutputStream, 2, this.value_);
                }
                this.unknownFields.writeTo(codedOutputStream);
            }

            /* synthetic */ Entry(GeneratedMessageV3.b bVar, a aVar) {
                this(bVar);
            }

            public static b newBuilder(Entry entry) {
                return DEFAULT_INSTANCE.toBuilder().g0(entry);
            }

            public static Entry parseFrom(ByteBuffer byteBuffer, f0 f0Var) throws InvalidProtocolBufferException {
                return PARSER.f(byteBuffer, f0Var);
            }

            private Entry(GeneratedMessageV3.b<?> bVar) {
                super(bVar);
                this.memoizedIsInitialized = (byte) -1;
            }

            public static Entry parseDelimitedFrom(InputStream inputStream, f0 f0Var) throws IOException {
                return (Entry) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
            }

            public static Entry parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
                return PARSER.c(byteString);
            }

            @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.p1, com.google.protobuf.r1
            public Entry getDefaultInstanceForType() {
                return DEFAULT_INSTANCE;
            }

            @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
            public b toBuilder() {
                return this == DEFAULT_INSTANCE ? new b((a) null) : new b((a) null).g0(this);
            }

            public static Entry parseFrom(ByteString byteString, f0 f0Var) throws InvalidProtocolBufferException {
                return PARSER.b(byteString, f0Var);
            }

            @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
            public b newBuilderForType() {
                return newBuilder();
            }

            private Entry() {
                this.memoizedIsInitialized = (byte) -1;
                this.key_ = "";
                this.value_ = "";
            }

            public static Entry parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
                return PARSER.a(bArr);
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.google.protobuf.GeneratedMessageV3
            public b newBuilderForType(GeneratedMessageV3.c cVar) {
                return new b(cVar, null);
            }

            public static Entry parseFrom(byte[] bArr, f0 f0Var) throws InvalidProtocolBufferException {
                return PARSER.g(bArr, f0Var);
            }

            public static Entry parseFrom(InputStream inputStream) throws IOException {
                return (Entry) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
            }

            private Entry(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
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
                                    if (L == 10) {
                                        this.key_ = pVar.K();
                                    } else if (L != 18) {
                                        if (!parseUnknownFieldProto3(pVar, h10, f0Var, L)) {
                                        }
                                    } else {
                                        this.value_ = pVar.K();
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

            public static Entry parseFrom(InputStream inputStream, f0 f0Var) throws IOException {
                return (Entry) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
            }

            public static Entry parseFrom(p pVar) throws IOException {
                return (Entry) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
            }

            public static Entry parseFrom(p pVar, f0 f0Var) throws IOException {
                return (Entry) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
            }
        }

        /* loaded from: classes7.dex */
        static class a extends com.google.protobuf.c<Tracestate> {
            a() {
            }

            @Override // com.google.protobuf.e2
            /* renamed from: G */
            public Tracestate m(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
                return new Tracestate(pVar, f0Var, null);
            }
        }

        /* loaded from: classes7.dex */
        public static final class b extends GeneratedMessageV3.b<b> implements i {

            /* renamed from: e  reason: collision with root package name */
            private int f51162e;

            /* renamed from: f  reason: collision with root package name */
            private List<Entry> f51163f;

            /* renamed from: g  reason: collision with root package name */
            private l2<Entry, Entry.b, c> f51164g;

            /* synthetic */ b(GeneratedMessageV3.c cVar, a aVar) {
                this(cVar);
            }

            private void a0() {
                if ((this.f51162e & 1) != 1) {
                    this.f51163f = new ArrayList(this.f51163f);
                    this.f51162e |= 1;
                }
            }

            private l2<Entry, Entry.b, c> d0() {
                if (this.f51164g == null) {
                    this.f51164g = new l2<>(this.f51163f, (this.f51162e & 1) == 1, H(), O());
                    this.f51163f = null;
                }
                return this.f51164g;
            }

            private void e0() {
                if (GeneratedMessageV3.alwaysUseFieldBuilders) {
                    d0();
                }
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b
            protected GeneratedMessageV3.e K() {
                return j.f51233d.d(Tracestate.class, b.class);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
            /* renamed from: W */
            public b L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                return (b) super.L(fieldDescriptor, obj);
            }

            @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
            /* renamed from: X */
            public Tracestate build() {
                Tracestate I = I();
                if (I.isInitialized()) {
                    return I;
                }
                throw a.AbstractC0142a.A(I);
            }

            @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
            /* renamed from: Y */
            public Tracestate I() {
                Tracestate tracestate = new Tracestate(this, (a) null);
                int i9 = this.f51162e;
                l2<Entry, Entry.b, c> l2Var = this.f51164g;
                if (l2Var == null) {
                    if ((i9 & 1) == 1) {
                        this.f51163f = Collections.unmodifiableList(this.f51163f);
                        this.f51162e &= -2;
                    }
                    tracestate.entries_ = this.f51163f;
                } else {
                    tracestate.entries_ = l2Var.e();
                }
                Q();
                return tracestate;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
            /* renamed from: Z */
            public b n() {
                return (b) super.n();
            }

            @Override // com.google.protobuf.p1, com.google.protobuf.r1
            /* renamed from: b0 */
            public Tracestate getDefaultInstanceForType() {
                return Tracestate.getDefaultInstance();
            }

            /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
            @Override // com.google.protobuf.a.AbstractC0142a
            /* renamed from: g0 */
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public io.opencensus.proto.trace.v1.Span.Tracestate.b u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
                /*
                    r2 = this;
                    r0 = 0
                    com.google.protobuf.e2 r1 = io.opencensus.proto.trace.v1.Span.Tracestate.access$1800()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                    java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                    io.opencensus.proto.trace.v1.Span$Tracestate r3 = (io.opencensus.proto.trace.v1.Span.Tracestate) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
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
                    io.opencensus.proto.trace.v1.Span$Tracestate r4 = (io.opencensus.proto.trace.v1.Span.Tracestate) r4     // Catch: java.lang.Throwable -> L11
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
                throw new UnsupportedOperationException("Method not decompiled: io.opencensus.proto.trace.v1.Span.Tracestate.b.u(com.google.protobuf.p, com.google.protobuf.f0):io.opencensus.proto.trace.v1.Span$Tracestate$b");
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
            public Descriptors.b getDescriptorForType() {
                return j.f51232c;
            }

            @Override // com.google.protobuf.a.AbstractC0142a
            /* renamed from: h0 */
            public b v(l1 l1Var) {
                if (l1Var instanceof Tracestate) {
                    return i0((Tracestate) l1Var);
                }
                super.P0(l1Var);
                return this;
            }

            public b i0(Tracestate tracestate) {
                if (tracestate == Tracestate.getDefaultInstance()) {
                    return this;
                }
                if (this.f51164g == null) {
                    if (!tracestate.entries_.isEmpty()) {
                        if (this.f51163f.isEmpty()) {
                            this.f51163f = tracestate.entries_;
                            this.f51162e &= -2;
                        } else {
                            a0();
                            this.f51163f.addAll(tracestate.entries_);
                        }
                        R();
                    }
                } else if (!tracestate.entries_.isEmpty()) {
                    if (this.f51164g.k()) {
                        this.f51164g.f();
                        this.f51164g = null;
                        this.f51163f = tracestate.entries_;
                        this.f51162e &= -2;
                        this.f51164g = GeneratedMessageV3.alwaysUseFieldBuilders ? d0() : null;
                    } else {
                        this.f51164g.b(tracestate.entries_);
                    }
                }
                z(((GeneratedMessageV3) tracestate).unknownFields);
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
                return (b) super.V(h3Var);
            }

            /* synthetic */ b(a aVar) {
                this();
            }

            private b() {
                this.f51163f = Collections.emptyList();
                e0();
            }

            private b(GeneratedMessageV3.c cVar) {
                super(cVar);
                this.f51163f = Collections.emptyList();
                e0();
            }
        }

        /* loaded from: classes7.dex */
        public interface c extends r1 {
        }

        /* synthetic */ Tracestate(p pVar, f0 f0Var, a aVar) throws InvalidProtocolBufferException {
            this(pVar, f0Var);
        }

        public static Tracestate getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static final Descriptors.b getDescriptor() {
            return j.f51232c;
        }

        public static b newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static Tracestate parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (Tracestate) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static Tracestate parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.l(byteBuffer);
        }

        public static e2<Tracestate> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.a
        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof Tracestate)) {
                return super.equals(obj);
            }
            Tracestate tracestate = (Tracestate) obj;
            return (getEntriesList().equals(tracestate.getEntriesList())) && this.unknownFields.equals(tracestate.unknownFields);
        }

        public Entry getEntries(int i9) {
            return this.entries_.get(i9);
        }

        public int getEntriesCount() {
            return this.entries_.size();
        }

        public List<Entry> getEntriesList() {
            return this.entries_;
        }

        public c getEntriesOrBuilder(int i9) {
            return this.entries_.get(i9);
        }

        public List<? extends c> getEntriesOrBuilderList() {
            return this.entries_;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
        public e2<Tracestate> getParserForType() {
            return PARSER;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
        public int getSerializedSize() {
            int i9 = this.memoizedSize;
            if (i9 != -1) {
                return i9;
            }
            int i10 = 0;
            for (int i11 = 0; i11 < this.entries_.size(); i11++) {
                i10 += CodedOutputStream.G(1, this.entries_.get(i11));
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
            if (getEntriesCount() > 0) {
                hashCode = (((hashCode * 37) + 1) * 53) + getEntriesList().hashCode();
            }
            int hashCode2 = (hashCode * 29) + this.unknownFields.hashCode();
            this.memoizedHashCode = hashCode2;
            return hashCode2;
        }

        @Override // com.google.protobuf.GeneratedMessageV3
        protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
            return j.f51233d.d(Tracestate.class, b.class);
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

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
        public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
            for (int i9 = 0; i9 < this.entries_.size(); i9++) {
                codedOutputStream.L0(1, this.entries_.get(i9));
            }
            this.unknownFields.writeTo(codedOutputStream);
        }

        /* synthetic */ Tracestate(GeneratedMessageV3.b bVar, a aVar) {
            this(bVar);
        }

        public static b newBuilder(Tracestate tracestate) {
            return DEFAULT_INSTANCE.toBuilder().i0(tracestate);
        }

        public static Tracestate parseFrom(ByteBuffer byteBuffer, f0 f0Var) throws InvalidProtocolBufferException {
            return PARSER.f(byteBuffer, f0Var);
        }

        private Tracestate(GeneratedMessageV3.b<?> bVar) {
            super(bVar);
            this.memoizedIsInitialized = (byte) -1;
        }

        public static Tracestate parseDelimitedFrom(InputStream inputStream, f0 f0Var) throws IOException {
            return (Tracestate) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
        }

        public static Tracestate parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.c(byteString);
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.p1, com.google.protobuf.r1
        public Tracestate getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
        public b toBuilder() {
            return this == DEFAULT_INSTANCE ? new b((a) null) : new b((a) null).i0(this);
        }

        public static Tracestate parseFrom(ByteString byteString, f0 f0Var) throws InvalidProtocolBufferException {
            return PARSER.b(byteString, f0Var);
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
        public b newBuilderForType() {
            return newBuilder();
        }

        private Tracestate() {
            this.memoizedIsInitialized = (byte) -1;
            this.entries_ = Collections.emptyList();
        }

        public static Tracestate parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.a(bArr);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.protobuf.GeneratedMessageV3
        public b newBuilderForType(GeneratedMessageV3.c cVar) {
            return new b(cVar, null);
        }

        public static Tracestate parseFrom(byte[] bArr, f0 f0Var) throws InvalidProtocolBufferException {
            return PARSER.g(bArr, f0Var);
        }

        public static Tracestate parseFrom(InputStream inputStream) throws IOException {
            return (Tracestate) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
        }

        /* JADX WARN: Multi-variable type inference failed */
        private Tracestate(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
            this();
            Objects.requireNonNull(f0Var);
            h3.b h10 = h3.h();
            boolean z10 = false;
            boolean z11 = false;
            while (true) {
                if (z10) {
                    break;
                }
                try {
                    try {
                        int L = pVar.L();
                        if (L != 0) {
                            if (L != 10) {
                                if (!parseUnknownFieldProto3(pVar, h10, f0Var, L)) {
                                }
                            } else {
                                if (!(z11 & true)) {
                                    this.entries_ = new ArrayList();
                                    z11 |= true;
                                }
                                this.entries_.add(pVar.B(Entry.parser(), f0Var));
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
                        this.entries_ = Collections.unmodifiableList(this.entries_);
                    }
                    this.unknownFields = h10.build();
                    makeExtensionsImmutable();
                }
            }
        }

        public static Tracestate parseFrom(InputStream inputStream, f0 f0Var) throws IOException {
            return (Tracestate) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
        }

        public static Tracestate parseFrom(p pVar) throws IOException {
            return (Tracestate) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
        }

        public static Tracestate parseFrom(p pVar, f0 f0Var) throws IOException {
            return (Tracestate) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes7.dex */
    public static class a extends com.google.protobuf.c<Span> {
        a() {
        }

        @Override // com.google.protobuf.e2
        /* renamed from: G */
        public Span m(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
            return new Span(pVar, f0Var, null);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes7.dex */
    public static /* synthetic */ class b {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f51165a;

        static {
            int[] iArr = new int[TimeEvent.ValueCase.values().length];
            f51165a = iArr;
            try {
                iArr[TimeEvent.ValueCase.ANNOTATION.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f51165a[TimeEvent.ValueCase.MESSAGE_EVENT.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f51165a[TimeEvent.ValueCase.VALUE_NOT_SET.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    /* loaded from: classes7.dex */
    public interface c extends r1 {
    }

    /* loaded from: classes7.dex */
    public static final class d extends GeneratedMessageV3.b<d> implements io.opencensus.proto.trace.v1.e {
        private Resource A;
        private q2<Resource, Resource.b, io.opencensus.proto.resource.v1.a> B;
        private BoolValue C;
        private q2<BoolValue, BoolValue.b, l> D;
        private UInt32Value E;
        private q2<UInt32Value, UInt32Value.b, e3> F;

        /* renamed from: e  reason: collision with root package name */
        private ByteString f51166e;

        /* renamed from: f  reason: collision with root package name */
        private ByteString f51167f;

        /* renamed from: g  reason: collision with root package name */
        private Tracestate f51168g;

        /* renamed from: h  reason: collision with root package name */
        private q2<Tracestate, Tracestate.b, i> f51169h;

        /* renamed from: i  reason: collision with root package name */
        private ByteString f51170i;

        /* renamed from: j  reason: collision with root package name */
        private TruncatableString f51171j;

        /* renamed from: k  reason: collision with root package name */
        private q2<TruncatableString, TruncatableString.b, k> f51172k;

        /* renamed from: l  reason: collision with root package name */
        private int f51173l;

        /* renamed from: m  reason: collision with root package name */
        private Timestamp f51174m;

        /* renamed from: n  reason: collision with root package name */
        private q2<Timestamp, Timestamp.b, z2> f51175n;

        /* renamed from: o  reason: collision with root package name */
        private Timestamp f51176o;

        /* renamed from: p  reason: collision with root package name */
        private q2<Timestamp, Timestamp.b, z2> f51177p;

        /* renamed from: q  reason: collision with root package name */
        private Attributes f51178q;

        /* renamed from: r  reason: collision with root package name */
        private q2<Attributes, Attributes.c, c> f51179r;

        /* renamed from: s  reason: collision with root package name */
        private StackTrace f51180s;

        /* renamed from: t  reason: collision with root package name */
        private q2<StackTrace, StackTrace.b, io.opencensus.proto.trace.v1.f> f51181t;

        /* renamed from: u  reason: collision with root package name */
        private TimeEvents f51182u;

        /* renamed from: v  reason: collision with root package name */
        private q2<TimeEvents, TimeEvents.b, h> f51183v;

        /* renamed from: w  reason: collision with root package name */
        private Links f51184w;

        /* renamed from: x  reason: collision with root package name */
        private q2<Links, Links.b, f> f51185x;

        /* renamed from: y  reason: collision with root package name */
        private Status f51186y;

        /* renamed from: z  reason: collision with root package name */
        private q2<Status, Status.b, io.opencensus.proto.trace.v1.g> f51187z;

        /* synthetic */ d(GeneratedMessageV3.c cVar, a aVar) {
            this(cVar);
        }

        private void b0() {
            boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
        }

        public d B0(ByteString byteString) {
            Objects.requireNonNull(byteString);
            this.f51166e = byteString;
            R();
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: D0 */
        public final d f1(h3 h3Var) {
            return (d) super.V(h3Var);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b
        protected GeneratedMessageV3.e K() {
            return j.f51231b.d(Span.class, d.class);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: W */
        public d L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (d) super.L(fieldDescriptor, obj);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: X */
        public Span build() {
            Span I = I();
            if (I.isInitialized()) {
                return I;
            }
            throw a.AbstractC0142a.A(I);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: Y */
        public Span I() {
            Span span = new Span(this, (a) null);
            span.traceId_ = this.f51166e;
            span.spanId_ = this.f51167f;
            q2<Tracestate, Tracestate.b, i> q2Var = this.f51169h;
            if (q2Var == null) {
                span.tracestate_ = this.f51168g;
            } else {
                span.tracestate_ = q2Var.b();
            }
            span.parentSpanId_ = this.f51170i;
            q2<TruncatableString, TruncatableString.b, k> q2Var2 = this.f51172k;
            if (q2Var2 == null) {
                span.name_ = this.f51171j;
            } else {
                span.name_ = q2Var2.b();
            }
            span.kind_ = this.f51173l;
            q2<Timestamp, Timestamp.b, z2> q2Var3 = this.f51175n;
            if (q2Var3 == null) {
                span.startTime_ = this.f51174m;
            } else {
                span.startTime_ = q2Var3.b();
            }
            q2<Timestamp, Timestamp.b, z2> q2Var4 = this.f51177p;
            if (q2Var4 == null) {
                span.endTime_ = this.f51176o;
            } else {
                span.endTime_ = q2Var4.b();
            }
            q2<Attributes, Attributes.c, c> q2Var5 = this.f51179r;
            if (q2Var5 == null) {
                span.attributes_ = this.f51178q;
            } else {
                span.attributes_ = q2Var5.b();
            }
            q2<StackTrace, StackTrace.b, io.opencensus.proto.trace.v1.f> q2Var6 = this.f51181t;
            if (q2Var6 == null) {
                span.stackTrace_ = this.f51180s;
            } else {
                span.stackTrace_ = q2Var6.b();
            }
            q2<TimeEvents, TimeEvents.b, h> q2Var7 = this.f51183v;
            if (q2Var7 == null) {
                span.timeEvents_ = this.f51182u;
            } else {
                span.timeEvents_ = q2Var7.b();
            }
            q2<Links, Links.b, f> q2Var8 = this.f51185x;
            if (q2Var8 == null) {
                span.links_ = this.f51184w;
            } else {
                span.links_ = q2Var8.b();
            }
            q2<Status, Status.b, io.opencensus.proto.trace.v1.g> q2Var9 = this.f51187z;
            if (q2Var9 == null) {
                span.status_ = this.f51186y;
            } else {
                span.status_ = q2Var9.b();
            }
            q2<Resource, Resource.b, io.opencensus.proto.resource.v1.a> q2Var10 = this.B;
            if (q2Var10 == null) {
                span.resource_ = this.A;
            } else {
                span.resource_ = q2Var10.b();
            }
            q2<BoolValue, BoolValue.b, l> q2Var11 = this.D;
            if (q2Var11 == null) {
                span.sameProcessAsParentSpan_ = this.C;
            } else {
                span.sameProcessAsParentSpan_ = q2Var11.b();
            }
            q2<UInt32Value, UInt32Value.b, e3> q2Var12 = this.F;
            if (q2Var12 == null) {
                span.childSpanCount_ = this.E;
            } else {
                span.childSpanCount_ = q2Var12.b();
            }
            Q();
            return span;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
        /* renamed from: Z */
        public d n() {
            return (d) super.n();
        }

        @Override // com.google.protobuf.p1, com.google.protobuf.r1
        /* renamed from: a0 */
        public Span getDefaultInstanceForType() {
            return Span.getDefaultInstance();
        }

        public d d0(Attributes attributes) {
            q2<Attributes, Attributes.c, c> q2Var = this.f51179r;
            if (q2Var == null) {
                Attributes attributes2 = this.f51178q;
                if (attributes2 != null) {
                    this.f51178q = Attributes.newBuilder(attributes2).i0(attributes).I();
                } else {
                    this.f51178q = attributes;
                }
                R();
            } else {
                q2Var.e(attributes);
            }
            return this;
        }

        public d e0(UInt32Value uInt32Value) {
            q2<UInt32Value, UInt32Value.b, e3> q2Var = this.F;
            if (q2Var == null) {
                UInt32Value uInt32Value2 = this.E;
                if (uInt32Value2 != null) {
                    this.E = UInt32Value.newBuilder(uInt32Value2).g0(uInt32Value).I();
                } else {
                    this.E = uInt32Value;
                }
                R();
            } else {
                q2Var.e(uInt32Value);
            }
            return this;
        }

        public d g0(Timestamp timestamp) {
            q2<Timestamp, Timestamp.b, z2> q2Var = this.f51177p;
            if (q2Var == null) {
                Timestamp timestamp2 = this.f51176o;
                if (timestamp2 != null) {
                    this.f51176o = Timestamp.newBuilder(timestamp2).g0(timestamp).I();
                } else {
                    this.f51176o = timestamp;
                }
                R();
            } else {
                q2Var.e(timestamp);
            }
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
        public Descriptors.b getDescriptorForType() {
            return j.f51230a;
        }

        /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: h0 */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public io.opencensus.proto.trace.v1.Span.d u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
            /*
                r2 = this;
                r0 = 0
                com.google.protobuf.e2 r1 = io.opencensus.proto.trace.v1.Span.access$11600()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                io.opencensus.proto.trace.v1.Span r3 = (io.opencensus.proto.trace.v1.Span) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
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
                io.opencensus.proto.trace.v1.Span r4 = (io.opencensus.proto.trace.v1.Span) r4     // Catch: java.lang.Throwable -> L11
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
            throw new UnsupportedOperationException("Method not decompiled: io.opencensus.proto.trace.v1.Span.d.u(com.google.protobuf.p, com.google.protobuf.f0):io.opencensus.proto.trace.v1.Span$d");
        }

        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: i0 */
        public d v(l1 l1Var) {
            if (l1Var instanceof Span) {
                return j0((Span) l1Var);
            }
            super.P0(l1Var);
            return this;
        }

        public d j0(Span span) {
            if (span == Span.getDefaultInstance()) {
                return this;
            }
            ByteString traceId = span.getTraceId();
            ByteString byteString = ByteString.EMPTY;
            if (traceId != byteString) {
                B0(span.getTraceId());
            }
            if (span.getSpanId() != byteString) {
                z0(span.getSpanId());
            }
            if (span.hasTracestate()) {
                t0(span.getTracestate());
            }
            if (span.getParentSpanId() != byteString) {
                y0(span.getParentSpanId());
            }
            if (span.hasName()) {
                l0(span.getName());
            }
            if (span.kind_ != 0) {
                x0(span.getKindValue());
            }
            if (span.hasStartTime()) {
                q0(span.getStartTime());
            }
            if (span.hasEndTime()) {
                g0(span.getEndTime());
            }
            if (span.hasAttributes()) {
                d0(span.getAttributes());
            }
            if (span.hasStackTrace()) {
                o0(span.getStackTrace());
            }
            if (span.hasTimeEvents()) {
                s0(span.getTimeEvents());
            }
            if (span.hasLinks()) {
                k0(span.getLinks());
            }
            if (span.hasStatus()) {
                r0(span.getStatus());
            }
            if (span.hasResource()) {
                m0(span.getResource());
            }
            if (span.hasSameProcessAsParentSpan()) {
                n0(span.getSameProcessAsParentSpan());
            }
            if (span.hasChildSpanCount()) {
                e0(span.getChildSpanCount());
            }
            z(((GeneratedMessageV3) span).unknownFields);
            R();
            return this;
        }

        public d k0(Links links) {
            q2<Links, Links.b, f> q2Var = this.f51185x;
            if (q2Var == null) {
                Links links2 = this.f51184w;
                if (links2 != null) {
                    this.f51184w = Links.newBuilder(links2).i0(links).I();
                } else {
                    this.f51184w = links;
                }
                R();
            } else {
                q2Var.e(links);
            }
            return this;
        }

        public d l0(TruncatableString truncatableString) {
            q2<TruncatableString, TruncatableString.b, k> q2Var = this.f51172k;
            if (q2Var == null) {
                TruncatableString truncatableString2 = this.f51171j;
                if (truncatableString2 != null) {
                    this.f51171j = TruncatableString.newBuilder(truncatableString2).g0(truncatableString).I();
                } else {
                    this.f51171j = truncatableString;
                }
                R();
            } else {
                q2Var.e(truncatableString);
            }
            return this;
        }

        public d m0(Resource resource) {
            q2<Resource, Resource.b, io.opencensus.proto.resource.v1.a> q2Var = this.B;
            if (q2Var == null) {
                Resource resource2 = this.A;
                if (resource2 != null) {
                    this.A = Resource.newBuilder(resource2).i0(resource).I();
                } else {
                    this.A = resource;
                }
                R();
            } else {
                q2Var.e(resource);
            }
            return this;
        }

        public d n0(BoolValue boolValue) {
            q2<BoolValue, BoolValue.b, l> q2Var = this.D;
            if (q2Var == null) {
                BoolValue boolValue2 = this.C;
                if (boolValue2 != null) {
                    this.C = BoolValue.newBuilder(boolValue2).d0(boolValue).I();
                } else {
                    this.C = boolValue;
                }
                R();
            } else {
                q2Var.e(boolValue);
            }
            return this;
        }

        public d o0(StackTrace stackTrace) {
            q2<StackTrace, StackTrace.b, io.opencensus.proto.trace.v1.f> q2Var = this.f51181t;
            if (q2Var == null) {
                StackTrace stackTrace2 = this.f51180s;
                if (stackTrace2 != null) {
                    this.f51180s = StackTrace.newBuilder(stackTrace2).g0(stackTrace).I();
                } else {
                    this.f51180s = stackTrace;
                }
                R();
            } else {
                q2Var.e(stackTrace);
            }
            return this;
        }

        public d q0(Timestamp timestamp) {
            q2<Timestamp, Timestamp.b, z2> q2Var = this.f51175n;
            if (q2Var == null) {
                Timestamp timestamp2 = this.f51174m;
                if (timestamp2 != null) {
                    this.f51174m = Timestamp.newBuilder(timestamp2).g0(timestamp).I();
                } else {
                    this.f51174m = timestamp;
                }
                R();
            } else {
                q2Var.e(timestamp);
            }
            return this;
        }

        public d r0(Status status) {
            q2<Status, Status.b, io.opencensus.proto.trace.v1.g> q2Var = this.f51187z;
            if (q2Var == null) {
                Status status2 = this.f51186y;
                if (status2 != null) {
                    this.f51186y = Status.newBuilder(status2).g0(status).I();
                } else {
                    this.f51186y = status;
                }
                R();
            } else {
                q2Var.e(status);
            }
            return this;
        }

        public d s0(TimeEvents timeEvents) {
            q2<TimeEvents, TimeEvents.b, h> q2Var = this.f51183v;
            if (q2Var == null) {
                TimeEvents timeEvents2 = this.f51182u;
                if (timeEvents2 != null) {
                    this.f51182u = TimeEvents.newBuilder(timeEvents2).i0(timeEvents).I();
                } else {
                    this.f51182u = timeEvents;
                }
                R();
            } else {
                q2Var.e(timeEvents);
            }
            return this;
        }

        public d t0(Tracestate tracestate) {
            q2<Tracestate, Tracestate.b, i> q2Var = this.f51169h;
            if (q2Var == null) {
                Tracestate tracestate2 = this.f51168g;
                if (tracestate2 != null) {
                    this.f51168g = Tracestate.newBuilder(tracestate2).i0(tracestate).I();
                } else {
                    this.f51168g = tracestate;
                }
                R();
            } else {
                q2Var.e(tracestate);
            }
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
        /* renamed from: u0 */
        public final d z(h3 h3Var) {
            return (d) super.z(h3Var);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: v0 */
        public d c(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (d) super.c(fieldDescriptor, obj);
        }

        public d x0(int i9) {
            this.f51173l = i9;
            R();
            return this;
        }

        public d y0(ByteString byteString) {
            Objects.requireNonNull(byteString);
            this.f51170i = byteString;
            R();
            return this;
        }

        public d z0(ByteString byteString) {
            Objects.requireNonNull(byteString);
            this.f51167f = byteString;
            R();
            return this;
        }

        /* synthetic */ d(a aVar) {
            this();
        }

        private d() {
            ByteString byteString = ByteString.EMPTY;
            this.f51166e = byteString;
            this.f51167f = byteString;
            this.f51168g = null;
            this.f51170i = byteString;
            this.f51171j = null;
            this.f51173l = 0;
            this.f51174m = null;
            this.f51176o = null;
            this.f51178q = null;
            this.f51180s = null;
            this.f51182u = null;
            this.f51184w = null;
            this.f51186y = null;
            this.A = null;
            this.C = null;
            this.E = null;
            b0();
        }

        private d(GeneratedMessageV3.c cVar) {
            super(cVar);
            ByteString byteString = ByteString.EMPTY;
            this.f51166e = byteString;
            this.f51167f = byteString;
            this.f51168g = null;
            this.f51170i = byteString;
            this.f51171j = null;
            this.f51173l = 0;
            this.f51174m = null;
            this.f51176o = null;
            this.f51178q = null;
            this.f51180s = null;
            this.f51182u = null;
            this.f51184w = null;
            this.f51186y = null;
            this.A = null;
            this.C = null;
            this.E = null;
            b0();
        }
    }

    /* loaded from: classes7.dex */
    public interface e extends r1 {
    }

    /* loaded from: classes7.dex */
    public interface f extends r1 {
    }

    /* loaded from: classes7.dex */
    public interface g extends r1 {
    }

    /* loaded from: classes7.dex */
    public interface h extends r1 {
    }

    /* loaded from: classes7.dex */
    public interface i extends r1 {
    }

    /* synthetic */ Span(p pVar, f0 f0Var, a aVar) throws InvalidProtocolBufferException {
        this(pVar, f0Var);
    }

    public static Span getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static final Descriptors.b getDescriptor() {
        return j.f51230a;
    }

    public static d newBuilder() {
        return DEFAULT_INSTANCE.toBuilder();
    }

    public static Span parseDelimitedFrom(InputStream inputStream) throws IOException {
        return (Span) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
    }

    public static Span parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
        return PARSER.l(byteBuffer);
    }

    public static e2<Span> parser() {
        return PARSER;
    }

    @Override // com.google.protobuf.a
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof Span)) {
            return super.equals(obj);
        }
        Span span = (Span) obj;
        boolean z10 = ((getTraceId().equals(span.getTraceId())) && getSpanId().equals(span.getSpanId())) && hasTracestate() == span.hasTracestate();
        if (hasTracestate()) {
            z10 = z10 && getTracestate().equals(span.getTracestate());
        }
        boolean z11 = (z10 && getParentSpanId().equals(span.getParentSpanId())) && hasName() == span.hasName();
        if (hasName()) {
            z11 = z11 && getName().equals(span.getName());
        }
        boolean z12 = (z11 && this.kind_ == span.kind_) && hasStartTime() == span.hasStartTime();
        if (hasStartTime()) {
            z12 = z12 && getStartTime().equals(span.getStartTime());
        }
        boolean z13 = z12 && hasEndTime() == span.hasEndTime();
        if (hasEndTime()) {
            z13 = z13 && getEndTime().equals(span.getEndTime());
        }
        boolean z14 = z13 && hasAttributes() == span.hasAttributes();
        if (hasAttributes()) {
            z14 = z14 && getAttributes().equals(span.getAttributes());
        }
        boolean z15 = z14 && hasStackTrace() == span.hasStackTrace();
        if (hasStackTrace()) {
            z15 = z15 && getStackTrace().equals(span.getStackTrace());
        }
        boolean z16 = z15 && hasTimeEvents() == span.hasTimeEvents();
        if (hasTimeEvents()) {
            z16 = z16 && getTimeEvents().equals(span.getTimeEvents());
        }
        boolean z17 = z16 && hasLinks() == span.hasLinks();
        if (hasLinks()) {
            z17 = z17 && getLinks().equals(span.getLinks());
        }
        boolean z18 = z17 && hasStatus() == span.hasStatus();
        if (hasStatus()) {
            z18 = z18 && getStatus().equals(span.getStatus());
        }
        boolean z19 = z18 && hasResource() == span.hasResource();
        if (hasResource()) {
            z19 = z19 && getResource().equals(span.getResource());
        }
        boolean z20 = z19 && hasSameProcessAsParentSpan() == span.hasSameProcessAsParentSpan();
        if (hasSameProcessAsParentSpan()) {
            z20 = z20 && getSameProcessAsParentSpan().equals(span.getSameProcessAsParentSpan());
        }
        boolean z21 = z20 && hasChildSpanCount() == span.hasChildSpanCount();
        if (hasChildSpanCount()) {
            z21 = z21 && getChildSpanCount().equals(span.getChildSpanCount());
        }
        return z21 && this.unknownFields.equals(span.unknownFields);
    }

    public Attributes getAttributes() {
        Attributes attributes = this.attributes_;
        return attributes == null ? Attributes.getDefaultInstance() : attributes;
    }

    public c getAttributesOrBuilder() {
        return getAttributes();
    }

    public UInt32Value getChildSpanCount() {
        UInt32Value uInt32Value = this.childSpanCount_;
        return uInt32Value == null ? UInt32Value.getDefaultInstance() : uInt32Value;
    }

    public e3 getChildSpanCountOrBuilder() {
        return getChildSpanCount();
    }

    public Timestamp getEndTime() {
        Timestamp timestamp = this.endTime_;
        return timestamp == null ? Timestamp.getDefaultInstance() : timestamp;
    }

    public z2 getEndTimeOrBuilder() {
        return getEndTime();
    }

    public SpanKind getKind() {
        SpanKind valueOf = SpanKind.valueOf(this.kind_);
        return valueOf == null ? SpanKind.UNRECOGNIZED : valueOf;
    }

    public int getKindValue() {
        return this.kind_;
    }

    public Links getLinks() {
        Links links = this.links_;
        return links == null ? Links.getDefaultInstance() : links;
    }

    public f getLinksOrBuilder() {
        return getLinks();
    }

    public TruncatableString getName() {
        TruncatableString truncatableString = this.name_;
        return truncatableString == null ? TruncatableString.getDefaultInstance() : truncatableString;
    }

    public k getNameOrBuilder() {
        return getName();
    }

    public ByteString getParentSpanId() {
        return this.parentSpanId_;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public e2<Span> getParserForType() {
        return PARSER;
    }

    public Resource getResource() {
        Resource resource = this.resource_;
        return resource == null ? Resource.getDefaultInstance() : resource;
    }

    public io.opencensus.proto.resource.v1.a getResourceOrBuilder() {
        return getResource();
    }

    public BoolValue getSameProcessAsParentSpan() {
        BoolValue boolValue = this.sameProcessAsParentSpan_;
        return boolValue == null ? BoolValue.getDefaultInstance() : boolValue;
    }

    public l getSameProcessAsParentSpanOrBuilder() {
        return getSameProcessAsParentSpan();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public int getSerializedSize() {
        int i9 = this.memoizedSize;
        if (i9 != -1) {
            return i9;
        }
        int h10 = this.traceId_.isEmpty() ? 0 : 0 + CodedOutputStream.h(1, this.traceId_);
        if (!this.spanId_.isEmpty()) {
            h10 += CodedOutputStream.h(2, this.spanId_);
        }
        if (!this.parentSpanId_.isEmpty()) {
            h10 += CodedOutputStream.h(3, this.parentSpanId_);
        }
        if (this.name_ != null) {
            h10 += CodedOutputStream.G(4, getName());
        }
        if (this.startTime_ != null) {
            h10 += CodedOutputStream.G(5, getStartTime());
        }
        if (this.endTime_ != null) {
            h10 += CodedOutputStream.G(6, getEndTime());
        }
        if (this.attributes_ != null) {
            h10 += CodedOutputStream.G(7, getAttributes());
        }
        if (this.stackTrace_ != null) {
            h10 += CodedOutputStream.G(8, getStackTrace());
        }
        if (this.timeEvents_ != null) {
            h10 += CodedOutputStream.G(9, getTimeEvents());
        }
        if (this.links_ != null) {
            h10 += CodedOutputStream.G(10, getLinks());
        }
        if (this.status_ != null) {
            h10 += CodedOutputStream.G(11, getStatus());
        }
        if (this.sameProcessAsParentSpan_ != null) {
            h10 += CodedOutputStream.G(12, getSameProcessAsParentSpan());
        }
        if (this.childSpanCount_ != null) {
            h10 += CodedOutputStream.G(13, getChildSpanCount());
        }
        if (this.kind_ != SpanKind.SPAN_KIND_UNSPECIFIED.getNumber()) {
            h10 += CodedOutputStream.l(14, this.kind_);
        }
        if (this.tracestate_ != null) {
            h10 += CodedOutputStream.G(15, getTracestate());
        }
        if (this.resource_ != null) {
            h10 += CodedOutputStream.G(16, getResource());
        }
        int serializedSize = h10 + this.unknownFields.getSerializedSize();
        this.memoizedSize = serializedSize;
        return serializedSize;
    }

    public ByteString getSpanId() {
        return this.spanId_;
    }

    public StackTrace getStackTrace() {
        StackTrace stackTrace = this.stackTrace_;
        return stackTrace == null ? StackTrace.getDefaultInstance() : stackTrace;
    }

    public io.opencensus.proto.trace.v1.f getStackTraceOrBuilder() {
        return getStackTrace();
    }

    public Timestamp getStartTime() {
        Timestamp timestamp = this.startTime_;
        return timestamp == null ? Timestamp.getDefaultInstance() : timestamp;
    }

    public z2 getStartTimeOrBuilder() {
        return getStartTime();
    }

    public Status getStatus() {
        Status status = this.status_;
        return status == null ? Status.getDefaultInstance() : status;
    }

    public io.opencensus.proto.trace.v1.g getStatusOrBuilder() {
        return getStatus();
    }

    public TimeEvents getTimeEvents() {
        TimeEvents timeEvents = this.timeEvents_;
        return timeEvents == null ? TimeEvents.getDefaultInstance() : timeEvents;
    }

    public h getTimeEventsOrBuilder() {
        return getTimeEvents();
    }

    public ByteString getTraceId() {
        return this.traceId_;
    }

    public Tracestate getTracestate() {
        Tracestate tracestate = this.tracestate_;
        return tracestate == null ? Tracestate.getDefaultInstance() : tracestate;
    }

    public i getTracestateOrBuilder() {
        return getTracestate();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.r1
    public final h3 getUnknownFields() {
        return this.unknownFields;
    }

    public boolean hasAttributes() {
        return this.attributes_ != null;
    }

    public boolean hasChildSpanCount() {
        return this.childSpanCount_ != null;
    }

    public boolean hasEndTime() {
        return this.endTime_ != null;
    }

    public boolean hasLinks() {
        return this.links_ != null;
    }

    public boolean hasName() {
        return this.name_ != null;
    }

    public boolean hasResource() {
        return this.resource_ != null;
    }

    public boolean hasSameProcessAsParentSpan() {
        return this.sameProcessAsParentSpan_ != null;
    }

    public boolean hasStackTrace() {
        return this.stackTrace_ != null;
    }

    public boolean hasStartTime() {
        return this.startTime_ != null;
    }

    public boolean hasStatus() {
        return this.status_ != null;
    }

    public boolean hasTimeEvents() {
        return this.timeEvents_ != null;
    }

    public boolean hasTracestate() {
        return this.tracestate_ != null;
    }

    @Override // com.google.protobuf.a
    public int hashCode() {
        int i9 = this.memoizedHashCode;
        if (i9 != 0) {
            return i9;
        }
        int hashCode = ((((((((779 + getDescriptor().hashCode()) * 37) + 1) * 53) + getTraceId().hashCode()) * 37) + 2) * 53) + getSpanId().hashCode();
        if (hasTracestate()) {
            hashCode = (((hashCode * 37) + 15) * 53) + getTracestate().hashCode();
        }
        int hashCode2 = (((hashCode * 37) + 3) * 53) + getParentSpanId().hashCode();
        if (hasName()) {
            hashCode2 = (((hashCode2 * 37) + 4) * 53) + getName().hashCode();
        }
        int i10 = (((hashCode2 * 37) + 14) * 53) + this.kind_;
        if (hasStartTime()) {
            i10 = (((i10 * 37) + 5) * 53) + getStartTime().hashCode();
        }
        if (hasEndTime()) {
            i10 = (((i10 * 37) + 6) * 53) + getEndTime().hashCode();
        }
        if (hasAttributes()) {
            i10 = (((i10 * 37) + 7) * 53) + getAttributes().hashCode();
        }
        if (hasStackTrace()) {
            i10 = (((i10 * 37) + 8) * 53) + getStackTrace().hashCode();
        }
        if (hasTimeEvents()) {
            i10 = (((i10 * 37) + 9) * 53) + getTimeEvents().hashCode();
        }
        if (hasLinks()) {
            i10 = (((i10 * 37) + 10) * 53) + getLinks().hashCode();
        }
        if (hasStatus()) {
            i10 = (((i10 * 37) + 11) * 53) + getStatus().hashCode();
        }
        if (hasResource()) {
            i10 = (((i10 * 37) + 16) * 53) + getResource().hashCode();
        }
        if (hasSameProcessAsParentSpan()) {
            i10 = (((i10 * 37) + 12) * 53) + getSameProcessAsParentSpan().hashCode();
        }
        if (hasChildSpanCount()) {
            i10 = (((i10 * 37) + 13) * 53) + getChildSpanCount().hashCode();
        }
        int hashCode3 = (i10 * 29) + this.unknownFields.hashCode();
        this.memoizedHashCode = hashCode3;
        return hashCode3;
    }

    @Override // com.google.protobuf.GeneratedMessageV3
    protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
        return j.f51231b.d(Span.class, d.class);
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

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
        if (!this.traceId_.isEmpty()) {
            codedOutputStream.r0(1, this.traceId_);
        }
        if (!this.spanId_.isEmpty()) {
            codedOutputStream.r0(2, this.spanId_);
        }
        if (!this.parentSpanId_.isEmpty()) {
            codedOutputStream.r0(3, this.parentSpanId_);
        }
        if (this.name_ != null) {
            codedOutputStream.L0(4, getName());
        }
        if (this.startTime_ != null) {
            codedOutputStream.L0(5, getStartTime());
        }
        if (this.endTime_ != null) {
            codedOutputStream.L0(6, getEndTime());
        }
        if (this.attributes_ != null) {
            codedOutputStream.L0(7, getAttributes());
        }
        if (this.stackTrace_ != null) {
            codedOutputStream.L0(8, getStackTrace());
        }
        if (this.timeEvents_ != null) {
            codedOutputStream.L0(9, getTimeEvents());
        }
        if (this.links_ != null) {
            codedOutputStream.L0(10, getLinks());
        }
        if (this.status_ != null) {
            codedOutputStream.L0(11, getStatus());
        }
        if (this.sameProcessAsParentSpan_ != null) {
            codedOutputStream.L0(12, getSameProcessAsParentSpan());
        }
        if (this.childSpanCount_ != null) {
            codedOutputStream.L0(13, getChildSpanCount());
        }
        if (this.kind_ != SpanKind.SPAN_KIND_UNSPECIFIED.getNumber()) {
            codedOutputStream.v0(14, this.kind_);
        }
        if (this.tracestate_ != null) {
            codedOutputStream.L0(15, getTracestate());
        }
        if (this.resource_ != null) {
            codedOutputStream.L0(16, getResource());
        }
        this.unknownFields.writeTo(codedOutputStream);
    }

    /* synthetic */ Span(GeneratedMessageV3.b bVar, a aVar) {
        this(bVar);
    }

    public static d newBuilder(Span span) {
        return DEFAULT_INSTANCE.toBuilder().j0(span);
    }

    public static Span parseFrom(ByteBuffer byteBuffer, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.f(byteBuffer, f0Var);
    }

    private Span(GeneratedMessageV3.b<?> bVar) {
        super(bVar);
        this.memoizedIsInitialized = (byte) -1;
    }

    public static Span parseDelimitedFrom(InputStream inputStream, f0 f0Var) throws IOException {
        return (Span) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
    }

    public static Span parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
        return PARSER.c(byteString);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.p1, com.google.protobuf.r1
    public Span getDefaultInstanceForType() {
        return DEFAULT_INSTANCE;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public d toBuilder() {
        return this == DEFAULT_INSTANCE ? new d((a) null) : new d((a) null).j0(this);
    }

    public static Span parseFrom(ByteString byteString, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.b(byteString, f0Var);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public d newBuilderForType() {
        return newBuilder();
    }

    private Span() {
        this.memoizedIsInitialized = (byte) -1;
        ByteString byteString = ByteString.EMPTY;
        this.traceId_ = byteString;
        this.spanId_ = byteString;
        this.parentSpanId_ = byteString;
        this.kind_ = 0;
    }

    public static Span parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
        return PARSER.a(bArr);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.protobuf.GeneratedMessageV3
    public d newBuilderForType(GeneratedMessageV3.c cVar) {
        return new d(cVar, null);
    }

    public static Span parseFrom(byte[] bArr, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.g(bArr, f0Var);
    }

    public static Span parseFrom(InputStream inputStream) throws IOException {
        return (Span) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
    }

    public static Span parseFrom(InputStream inputStream, f0 f0Var) throws IOException {
        return (Span) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
    }

    private Span(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
        this();
        Objects.requireNonNull(f0Var);
        h3.b h10 = h3.h();
        boolean z10 = false;
        while (!z10) {
            try {
                try {
                    int L = pVar.L();
                    switch (L) {
                        case 0:
                            break;
                        case 10:
                            this.traceId_ = pVar.s();
                            continue;
                        case 18:
                            this.spanId_ = pVar.s();
                            continue;
                        case 26:
                            this.parentSpanId_ = pVar.s();
                            continue;
                        case 34:
                            TruncatableString truncatableString = this.name_;
                            TruncatableString.b builder = truncatableString != null ? truncatableString.toBuilder() : null;
                            TruncatableString truncatableString2 = (TruncatableString) pVar.B(TruncatableString.parser(), f0Var);
                            this.name_ = truncatableString2;
                            if (builder != null) {
                                builder.g0(truncatableString2);
                                this.name_ = builder.I();
                            } else {
                                continue;
                            }
                        case 42:
                            Timestamp timestamp = this.startTime_;
                            Timestamp.b builder2 = timestamp != null ? timestamp.toBuilder() : null;
                            Timestamp timestamp2 = (Timestamp) pVar.B(Timestamp.parser(), f0Var);
                            this.startTime_ = timestamp2;
                            if (builder2 != null) {
                                builder2.g0(timestamp2);
                                this.startTime_ = builder2.I();
                            } else {
                                continue;
                            }
                        case 50:
                            Timestamp timestamp3 = this.endTime_;
                            Timestamp.b builder3 = timestamp3 != null ? timestamp3.toBuilder() : null;
                            Timestamp timestamp4 = (Timestamp) pVar.B(Timestamp.parser(), f0Var);
                            this.endTime_ = timestamp4;
                            if (builder3 != null) {
                                builder3.g0(timestamp4);
                                this.endTime_ = builder3.I();
                            } else {
                                continue;
                            }
                        case 58:
                            Attributes attributes = this.attributes_;
                            Attributes.c builder4 = attributes != null ? attributes.toBuilder() : null;
                            Attributes attributes2 = (Attributes) pVar.B(Attributes.parser(), f0Var);
                            this.attributes_ = attributes2;
                            if (builder4 != null) {
                                builder4.i0(attributes2);
                                this.attributes_ = builder4.I();
                            } else {
                                continue;
                            }
                        case 66:
                            StackTrace stackTrace = this.stackTrace_;
                            StackTrace.b builder5 = stackTrace != null ? stackTrace.toBuilder() : null;
                            StackTrace stackTrace2 = (StackTrace) pVar.B(StackTrace.parser(), f0Var);
                            this.stackTrace_ = stackTrace2;
                            if (builder5 != null) {
                                builder5.g0(stackTrace2);
                                this.stackTrace_ = builder5.I();
                            } else {
                                continue;
                            }
                        case 74:
                            TimeEvents timeEvents = this.timeEvents_;
                            TimeEvents.b builder6 = timeEvents != null ? timeEvents.toBuilder() : null;
                            TimeEvents timeEvents2 = (TimeEvents) pVar.B(TimeEvents.parser(), f0Var);
                            this.timeEvents_ = timeEvents2;
                            if (builder6 != null) {
                                builder6.i0(timeEvents2);
                                this.timeEvents_ = builder6.I();
                            } else {
                                continue;
                            }
                        case 82:
                            Links links = this.links_;
                            Links.b builder7 = links != null ? links.toBuilder() : null;
                            Links links2 = (Links) pVar.B(Links.parser(), f0Var);
                            this.links_ = links2;
                            if (builder7 != null) {
                                builder7.i0(links2);
                                this.links_ = builder7.I();
                            } else {
                                continue;
                            }
                        case 90:
                            Status status = this.status_;
                            Status.b builder8 = status != null ? status.toBuilder() : null;
                            Status status2 = (Status) pVar.B(Status.parser(), f0Var);
                            this.status_ = status2;
                            if (builder8 != null) {
                                builder8.g0(status2);
                                this.status_ = builder8.I();
                            } else {
                                continue;
                            }
                        case 98:
                            BoolValue boolValue = this.sameProcessAsParentSpan_;
                            BoolValue.b builder9 = boolValue != null ? boolValue.toBuilder() : null;
                            BoolValue boolValue2 = (BoolValue) pVar.B(BoolValue.parser(), f0Var);
                            this.sameProcessAsParentSpan_ = boolValue2;
                            if (builder9 != null) {
                                builder9.d0(boolValue2);
                                this.sameProcessAsParentSpan_ = builder9.I();
                            } else {
                                continue;
                            }
                        case 106:
                            UInt32Value uInt32Value = this.childSpanCount_;
                            UInt32Value.b builder10 = uInt32Value != null ? uInt32Value.toBuilder() : null;
                            UInt32Value uInt32Value2 = (UInt32Value) pVar.B(UInt32Value.parser(), f0Var);
                            this.childSpanCount_ = uInt32Value2;
                            if (builder10 != null) {
                                builder10.g0(uInt32Value2);
                                this.childSpanCount_ = builder10.I();
                            } else {
                                continue;
                            }
                        case 112:
                            this.kind_ = pVar.u();
                            continue;
                        case 122:
                            Tracestate tracestate = this.tracestate_;
                            Tracestate.b builder11 = tracestate != null ? tracestate.toBuilder() : null;
                            Tracestate tracestate2 = (Tracestate) pVar.B(Tracestate.parser(), f0Var);
                            this.tracestate_ = tracestate2;
                            if (builder11 != null) {
                                builder11.i0(tracestate2);
                                this.tracestate_ = builder11.I();
                            } else {
                                continue;
                            }
                        case 130:
                            Resource resource = this.resource_;
                            Resource.b builder12 = resource != null ? resource.toBuilder() : null;
                            Resource resource2 = (Resource) pVar.B(Resource.parser(), f0Var);
                            this.resource_ = resource2;
                            if (builder12 != null) {
                                builder12.i0(resource2);
                                this.resource_ = builder12.I();
                            } else {
                                continue;
                            }
                        default:
                            if (!parseUnknownFieldProto3(pVar, h10, f0Var, L)) {
                                break;
                            } else {
                                continue;
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

    public static Span parseFrom(p pVar) throws IOException {
        return (Span) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
    }

    public static Span parseFrom(p pVar, f0 f0Var) throws IOException {
        return (Span) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
    }
}
