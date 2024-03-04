package com.google.cloud.speech.v1;

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
import com.google.protobuf.r1;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Objects;
/* loaded from: classes2.dex */
public final class PhraseSet extends GeneratedMessageV3 implements com.google.cloud.speech.v1.b {
    public static final int BOOST_FIELD_NUMBER = 4;
    public static final int NAME_FIELD_NUMBER = 1;
    public static final int PHRASES_FIELD_NUMBER = 2;
    private static final long serialVersionUID = 0;
    private float boost_;
    private byte memoizedIsInitialized;
    private volatile Object name_;
    private List<Phrase> phrases_;
    private static final PhraseSet DEFAULT_INSTANCE = new PhraseSet();
    private static final e2<PhraseSet> PARSER = new a();

    /* loaded from: classes2.dex */
    public static final class Phrase extends GeneratedMessageV3 implements c {
        public static final int BOOST_FIELD_NUMBER = 2;
        private static final Phrase DEFAULT_INSTANCE = new Phrase();
        private static final e2<Phrase> PARSER = new a();
        public static final int VALUE_FIELD_NUMBER = 1;
        private static final long serialVersionUID = 0;
        private float boost_;
        private byte memoizedIsInitialized;
        private volatile Object value_;

        /* loaded from: classes2.dex */
        static class a extends com.google.protobuf.c<Phrase> {
            a() {
            }

            @Override // com.google.protobuf.e2
            /* renamed from: G */
            public Phrase m(com.google.protobuf.p pVar, f0 f0Var) throws InvalidProtocolBufferException {
                return new Phrase(pVar, f0Var, null);
            }
        }

        /* loaded from: classes2.dex */
        public static final class b extends GeneratedMessageV3.b<b> implements c {

            /* renamed from: e  reason: collision with root package name */
            private Object f11851e;

            /* renamed from: f  reason: collision with root package name */
            private float f11852f;

            /* synthetic */ b(a aVar) {
                this();
            }

            private void b0() {
                boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b
            protected GeneratedMessageV3.e K() {
                return m.f11996h.d(Phrase.class, b.class);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
            /* renamed from: W */
            public b L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                return (b) super.L(fieldDescriptor, obj);
            }

            @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
            /* renamed from: X */
            public Phrase build() {
                Phrase I = I();
                if (I.isInitialized()) {
                    return I;
                }
                throw a.AbstractC0142a.A(I);
            }

            @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
            /* renamed from: Y */
            public Phrase I() {
                Phrase phrase = new Phrase(this, (a) null);
                phrase.value_ = this.f11851e;
                phrase.boost_ = this.f11852f;
                Q();
                return phrase;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
            /* renamed from: Z */
            public b n() {
                return (b) super.n();
            }

            @Override // com.google.protobuf.p1, com.google.protobuf.r1
            /* renamed from: a0 */
            public Phrase getDefaultInstanceForType() {
                return Phrase.getDefaultInstance();
            }

            public b d0(Phrase phrase) {
                if (phrase == Phrase.getDefaultInstance()) {
                    return this;
                }
                if (!phrase.getValue().isEmpty()) {
                    this.f11851e = phrase.value_;
                    R();
                }
                if (phrase.getBoost() != 0.0f) {
                    i0(phrase.getBoost());
                }
                z(((GeneratedMessageV3) phrase).unknownFields);
                R();
                return this;
            }

            /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
            @Override // com.google.protobuf.a.AbstractC0142a
            /* renamed from: e0 */
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public com.google.cloud.speech.v1.PhraseSet.Phrase.b u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
                /*
                    r2 = this;
                    r0 = 0
                    com.google.protobuf.e2 r1 = com.google.cloud.speech.v1.PhraseSet.Phrase.access$700()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                    java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                    com.google.cloud.speech.v1.PhraseSet$Phrase r3 = (com.google.cloud.speech.v1.PhraseSet.Phrase) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                    if (r3 == 0) goto L10
                    r2.d0(r3)
                L10:
                    return r2
                L11:
                    r3 = move-exception
                    goto L21
                L13:
                    r3 = move-exception
                    com.google.protobuf.o1 r4 = r3.getUnfinishedMessage()     // Catch: java.lang.Throwable -> L11
                    com.google.cloud.speech.v1.PhraseSet$Phrase r4 = (com.google.cloud.speech.v1.PhraseSet.Phrase) r4     // Catch: java.lang.Throwable -> L11
                    java.io.IOException r3 = r3.unwrapIOException()     // Catch: java.lang.Throwable -> L1f
                    throw r3     // Catch: java.lang.Throwable -> L1f
                L1f:
                    r3 = move-exception
                    r0 = r4
                L21:
                    if (r0 == 0) goto L26
                    r2.d0(r0)
                L26:
                    throw r3
                */
                throw new UnsupportedOperationException("Method not decompiled: com.google.cloud.speech.v1.PhraseSet.Phrase.b.u(com.google.protobuf.p, com.google.protobuf.f0):com.google.cloud.speech.v1.PhraseSet$Phrase$b");
            }

            @Override // com.google.protobuf.a.AbstractC0142a
            /* renamed from: g0 */
            public b v(l1 l1Var) {
                if (l1Var instanceof Phrase) {
                    return d0((Phrase) l1Var);
                }
                super.P0(l1Var);
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
            public Descriptors.b getDescriptorForType() {
                return m.f11995g;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
            /* renamed from: h0 */
            public final b z(h3 h3Var) {
                return (b) super.z(h3Var);
            }

            public b i0(float f10) {
                this.f11852f = f10;
                R();
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
            /* renamed from: j0 */
            public b c(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                return (b) super.c(fieldDescriptor, obj);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
            /* renamed from: k0 */
            public final b f1(h3 h3Var) {
                return (b) super.f1(h3Var);
            }

            /* synthetic */ b(GeneratedMessageV3.c cVar, a aVar) {
                this(cVar);
            }

            private b() {
                this.f11851e = "";
                b0();
            }

            private b(GeneratedMessageV3.c cVar) {
                super(cVar);
                this.f11851e = "";
                b0();
            }
        }

        /* synthetic */ Phrase(com.google.protobuf.p pVar, f0 f0Var, a aVar) throws InvalidProtocolBufferException {
            this(pVar, f0Var);
        }

        public static Phrase getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static final Descriptors.b getDescriptor() {
            return m.f11995g;
        }

        public static b newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static Phrase parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (Phrase) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static Phrase parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.l(byteBuffer);
        }

        public static e2<Phrase> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.a
        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof Phrase)) {
                return super.equals(obj);
            }
            Phrase phrase = (Phrase) obj;
            return getValue().equals(phrase.getValue()) && Float.floatToIntBits(getBoost()) == Float.floatToIntBits(phrase.getBoost()) && this.unknownFields.equals(phrase.unknownFields);
        }

        public float getBoost() {
            return this.boost_;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
        public e2<Phrase> getParserForType() {
            return PARSER;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
        public int getSerializedSize() {
            int i9 = this.memoizedSize;
            if (i9 != -1) {
                return i9;
            }
            int computeStringSize = GeneratedMessageV3.isStringEmpty(this.value_) ? 0 : 0 + GeneratedMessageV3.computeStringSize(1, this.value_);
            float f10 = this.boost_;
            if (f10 != 0.0f) {
                computeStringSize += CodedOutputStream.r(2, f10);
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
            int hashCode = ((((((((((779 + getDescriptor().hashCode()) * 37) + 1) * 53) + getValue().hashCode()) * 37) + 2) * 53) + Float.floatToIntBits(getBoost())) * 29) + this.unknownFields.hashCode();
            this.memoizedHashCode = hashCode;
            return hashCode;
        }

        @Override // com.google.protobuf.GeneratedMessageV3
        protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
            return m.f11996h.d(Phrase.class, b.class);
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
            return new Phrase();
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
        public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
            if (!GeneratedMessageV3.isStringEmpty(this.value_)) {
                GeneratedMessageV3.writeString(codedOutputStream, 1, this.value_);
            }
            float f10 = this.boost_;
            if (f10 != 0.0f) {
                codedOutputStream.B0(2, f10);
            }
            this.unknownFields.writeTo(codedOutputStream);
        }

        /* synthetic */ Phrase(GeneratedMessageV3.b bVar, a aVar) {
            this(bVar);
        }

        public static b newBuilder(Phrase phrase) {
            return DEFAULT_INSTANCE.toBuilder().d0(phrase);
        }

        public static Phrase parseDelimitedFrom(InputStream inputStream, f0 f0Var) throws IOException {
            return (Phrase) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
        }

        public static Phrase parseFrom(ByteBuffer byteBuffer, f0 f0Var) throws InvalidProtocolBufferException {
            return PARSER.f(byteBuffer, f0Var);
        }

        private Phrase(GeneratedMessageV3.b<?> bVar) {
            super(bVar);
            this.memoizedIsInitialized = (byte) -1;
        }

        public static Phrase parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.c(byteString);
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.p1, com.google.protobuf.r1
        public Phrase getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
        public b toBuilder() {
            return this == DEFAULT_INSTANCE ? new b((a) null) : new b((a) null).d0(this);
        }

        public static Phrase parseFrom(ByteString byteString, f0 f0Var) throws InvalidProtocolBufferException {
            return PARSER.b(byteString, f0Var);
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
        public b newBuilderForType() {
            return newBuilder();
        }

        private Phrase() {
            this.memoizedIsInitialized = (byte) -1;
            this.value_ = "";
        }

        public static Phrase parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.a(bArr);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.protobuf.GeneratedMessageV3
        public b newBuilderForType(GeneratedMessageV3.c cVar) {
            return new b(cVar, null);
        }

        public static Phrase parseFrom(byte[] bArr, f0 f0Var) throws InvalidProtocolBufferException {
            return PARSER.g(bArr, f0Var);
        }

        public static Phrase parseFrom(InputStream inputStream) throws IOException {
            return (Phrase) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
        }

        private Phrase(com.google.protobuf.p pVar, f0 f0Var) throws InvalidProtocolBufferException {
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
                                    this.value_ = pVar.K();
                                } else if (L != 21) {
                                    if (!parseUnknownField(pVar, h10, f0Var, L)) {
                                    }
                                } else {
                                    this.boost_ = pVar.x();
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

        public static Phrase parseFrom(InputStream inputStream, f0 f0Var) throws IOException {
            return (Phrase) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
        }

        public static Phrase parseFrom(com.google.protobuf.p pVar) throws IOException {
            return (Phrase) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
        }

        public static Phrase parseFrom(com.google.protobuf.p pVar, f0 f0Var) throws IOException {
            return (Phrase) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public static class a extends com.google.protobuf.c<PhraseSet> {
        a() {
        }

        @Override // com.google.protobuf.e2
        /* renamed from: G */
        public PhraseSet m(com.google.protobuf.p pVar, f0 f0Var) throws InvalidProtocolBufferException {
            return new PhraseSet(pVar, f0Var, null);
        }
    }

    /* loaded from: classes2.dex */
    public static final class b extends GeneratedMessageV3.b<b> implements com.google.cloud.speech.v1.b {

        /* renamed from: e  reason: collision with root package name */
        private int f11853e;

        /* renamed from: f  reason: collision with root package name */
        private Object f11854f;

        /* renamed from: g  reason: collision with root package name */
        private List<Phrase> f11855g;

        /* renamed from: h  reason: collision with root package name */
        private l2<Phrase, Phrase.b, c> f11856h;

        /* renamed from: i  reason: collision with root package name */
        private float f11857i;

        /* synthetic */ b(a aVar) {
            this();
        }

        private void a0() {
            if ((this.f11853e & 1) == 0) {
                this.f11855g = new ArrayList(this.f11855g);
                this.f11853e |= 1;
            }
        }

        private l2<Phrase, Phrase.b, c> d0() {
            if (this.f11856h == null) {
                this.f11856h = new l2<>(this.f11855g, (this.f11853e & 1) != 0, H(), O());
                this.f11855g = null;
            }
            return this.f11856h;
        }

        private void e0() {
            if (GeneratedMessageV3.alwaysUseFieldBuilders) {
                d0();
            }
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b
        protected GeneratedMessageV3.e K() {
            return m.f11994f.d(PhraseSet.class, b.class);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: W */
        public b L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (b) super.L(fieldDescriptor, obj);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: X */
        public PhraseSet build() {
            PhraseSet I = I();
            if (I.isInitialized()) {
                return I;
            }
            throw a.AbstractC0142a.A(I);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: Y */
        public PhraseSet I() {
            PhraseSet phraseSet = new PhraseSet(this, (a) null);
            phraseSet.name_ = this.f11854f;
            l2<Phrase, Phrase.b, c> l2Var = this.f11856h;
            if (l2Var == null) {
                if ((this.f11853e & 1) != 0) {
                    this.f11855g = Collections.unmodifiableList(this.f11855g);
                    this.f11853e &= -2;
                }
                phraseSet.phrases_ = this.f11855g;
            } else {
                phraseSet.phrases_ = l2Var.e();
            }
            phraseSet.boost_ = this.f11857i;
            Q();
            return phraseSet;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
        /* renamed from: Z */
        public b n() {
            return (b) super.n();
        }

        @Override // com.google.protobuf.p1, com.google.protobuf.r1
        /* renamed from: b0 */
        public PhraseSet getDefaultInstanceForType() {
            return PhraseSet.getDefaultInstance();
        }

        public b g0(PhraseSet phraseSet) {
            if (phraseSet == PhraseSet.getDefaultInstance()) {
                return this;
            }
            if (!phraseSet.getName().isEmpty()) {
                this.f11854f = phraseSet.name_;
                R();
            }
            if (this.f11856h == null) {
                if (!phraseSet.phrases_.isEmpty()) {
                    if (this.f11855g.isEmpty()) {
                        this.f11855g = phraseSet.phrases_;
                        this.f11853e &= -2;
                    } else {
                        a0();
                        this.f11855g.addAll(phraseSet.phrases_);
                    }
                    R();
                }
            } else if (!phraseSet.phrases_.isEmpty()) {
                if (this.f11856h.k()) {
                    this.f11856h.f();
                    this.f11856h = null;
                    this.f11855g = phraseSet.phrases_;
                    this.f11853e &= -2;
                    this.f11856h = GeneratedMessageV3.alwaysUseFieldBuilders ? d0() : null;
                } else {
                    this.f11856h.b(phraseSet.phrases_);
                }
            }
            if (phraseSet.getBoost() != 0.0f) {
                k0(phraseSet.getBoost());
            }
            z(((GeneratedMessageV3) phraseSet).unknownFields);
            R();
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
        public Descriptors.b getDescriptorForType() {
            return m.f11993e;
        }

        /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: h0 */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public com.google.cloud.speech.v1.PhraseSet.b u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
            /*
                r2 = this;
                r0 = 0
                com.google.protobuf.e2 r1 = com.google.cloud.speech.v1.PhraseSet.access$1900()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                com.google.cloud.speech.v1.PhraseSet r3 = (com.google.cloud.speech.v1.PhraseSet) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
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
                com.google.cloud.speech.v1.PhraseSet r4 = (com.google.cloud.speech.v1.PhraseSet) r4     // Catch: java.lang.Throwable -> L11
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
            throw new UnsupportedOperationException("Method not decompiled: com.google.cloud.speech.v1.PhraseSet.b.u(com.google.protobuf.p, com.google.protobuf.f0):com.google.cloud.speech.v1.PhraseSet$b");
        }

        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: i0 */
        public b v(l1 l1Var) {
            if (l1Var instanceof PhraseSet) {
                return g0((PhraseSet) l1Var);
            }
            super.P0(l1Var);
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
        /* renamed from: j0 */
        public final b z(h3 h3Var) {
            return (b) super.z(h3Var);
        }

        public b k0(float f10) {
            this.f11857i = f10;
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
            return (b) super.f1(h3Var);
        }

        /* synthetic */ b(GeneratedMessageV3.c cVar, a aVar) {
            this(cVar);
        }

        private b() {
            this.f11854f = "";
            this.f11855g = Collections.emptyList();
            e0();
        }

        private b(GeneratedMessageV3.c cVar) {
            super(cVar);
            this.f11854f = "";
            this.f11855g = Collections.emptyList();
            e0();
        }
    }

    /* loaded from: classes2.dex */
    public interface c extends r1 {
    }

    /* synthetic */ PhraseSet(com.google.protobuf.p pVar, f0 f0Var, a aVar) throws InvalidProtocolBufferException {
        this(pVar, f0Var);
    }

    public static PhraseSet getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static final Descriptors.b getDescriptor() {
        return m.f11993e;
    }

    public static b newBuilder() {
        return DEFAULT_INSTANCE.toBuilder();
    }

    public static PhraseSet parseDelimitedFrom(InputStream inputStream) throws IOException {
        return (PhraseSet) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
    }

    public static PhraseSet parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
        return PARSER.l(byteBuffer);
    }

    public static e2<PhraseSet> parser() {
        return PARSER;
    }

    @Override // com.google.protobuf.a
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof PhraseSet)) {
            return super.equals(obj);
        }
        PhraseSet phraseSet = (PhraseSet) obj;
        return getName().equals(phraseSet.getName()) && getPhrasesList().equals(phraseSet.getPhrasesList()) && Float.floatToIntBits(getBoost()) == Float.floatToIntBits(phraseSet.getBoost()) && this.unknownFields.equals(phraseSet.unknownFields);
    }

    public float getBoost() {
        return this.boost_;
    }

    public String getName() {
        Object obj = this.name_;
        if (obj instanceof String) {
            return (String) obj;
        }
        String stringUtf8 = ((ByteString) obj).toStringUtf8();
        this.name_ = stringUtf8;
        return stringUtf8;
    }

    public ByteString getNameBytes() {
        Object obj = this.name_;
        if (obj instanceof String) {
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.name_ = copyFromUtf8;
            return copyFromUtf8;
        }
        return (ByteString) obj;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public e2<PhraseSet> getParserForType() {
        return PARSER;
    }

    public Phrase getPhrases(int i9) {
        return this.phrases_.get(i9);
    }

    public int getPhrasesCount() {
        return this.phrases_.size();
    }

    public List<Phrase> getPhrasesList() {
        return this.phrases_;
    }

    public c getPhrasesOrBuilder(int i9) {
        return this.phrases_.get(i9);
    }

    public List<? extends c> getPhrasesOrBuilderList() {
        return this.phrases_;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public int getSerializedSize() {
        int i9 = this.memoizedSize;
        if (i9 != -1) {
            return i9;
        }
        int computeStringSize = !GeneratedMessageV3.isStringEmpty(this.name_) ? GeneratedMessageV3.computeStringSize(1, this.name_) + 0 : 0;
        for (int i10 = 0; i10 < this.phrases_.size(); i10++) {
            computeStringSize += CodedOutputStream.G(2, this.phrases_.get(i10));
        }
        float f10 = this.boost_;
        if (f10 != 0.0f) {
            computeStringSize += CodedOutputStream.r(4, f10);
        }
        int serializedSize = computeStringSize + this.unknownFields.getSerializedSize();
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
        int hashCode = ((((779 + getDescriptor().hashCode()) * 37) + 1) * 53) + getName().hashCode();
        if (getPhrasesCount() > 0) {
            hashCode = (((hashCode * 37) + 2) * 53) + getPhrasesList().hashCode();
        }
        int floatToIntBits = (((((hashCode * 37) + 4) * 53) + Float.floatToIntBits(getBoost())) * 29) + this.unknownFields.hashCode();
        this.memoizedHashCode = floatToIntBits;
        return floatToIntBits;
    }

    @Override // com.google.protobuf.GeneratedMessageV3
    protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
        return m.f11994f.d(PhraseSet.class, b.class);
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
        return new PhraseSet();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
        if (!GeneratedMessageV3.isStringEmpty(this.name_)) {
            GeneratedMessageV3.writeString(codedOutputStream, 1, this.name_);
        }
        for (int i9 = 0; i9 < this.phrases_.size(); i9++) {
            codedOutputStream.L0(2, this.phrases_.get(i9));
        }
        float f10 = this.boost_;
        if (f10 != 0.0f) {
            codedOutputStream.B0(4, f10);
        }
        this.unknownFields.writeTo(codedOutputStream);
    }

    /* synthetic */ PhraseSet(GeneratedMessageV3.b bVar, a aVar) {
        this(bVar);
    }

    public static b newBuilder(PhraseSet phraseSet) {
        return DEFAULT_INSTANCE.toBuilder().g0(phraseSet);
    }

    public static PhraseSet parseDelimitedFrom(InputStream inputStream, f0 f0Var) throws IOException {
        return (PhraseSet) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
    }

    public static PhraseSet parseFrom(ByteBuffer byteBuffer, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.f(byteBuffer, f0Var);
    }

    private PhraseSet(GeneratedMessageV3.b<?> bVar) {
        super(bVar);
        this.memoizedIsInitialized = (byte) -1;
    }

    public static PhraseSet parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
        return PARSER.c(byteString);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.p1, com.google.protobuf.r1
    public PhraseSet getDefaultInstanceForType() {
        return DEFAULT_INSTANCE;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public b toBuilder() {
        return this == DEFAULT_INSTANCE ? new b((a) null) : new b((a) null).g0(this);
    }

    public static PhraseSet parseFrom(ByteString byteString, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.b(byteString, f0Var);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public b newBuilderForType() {
        return newBuilder();
    }

    private PhraseSet() {
        this.memoizedIsInitialized = (byte) -1;
        this.name_ = "";
        this.phrases_ = Collections.emptyList();
    }

    public static PhraseSet parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
        return PARSER.a(bArr);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.protobuf.GeneratedMessageV3
    public b newBuilderForType(GeneratedMessageV3.c cVar) {
        return new b(cVar, null);
    }

    public static PhraseSet parseFrom(byte[] bArr, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.g(bArr, f0Var);
    }

    public static PhraseSet parseFrom(InputStream inputStream) throws IOException {
        return (PhraseSet) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
    }

    public static PhraseSet parseFrom(InputStream inputStream, f0 f0Var) throws IOException {
        return (PhraseSet) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private PhraseSet(com.google.protobuf.p pVar, f0 f0Var) throws InvalidProtocolBufferException {
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
                            if (L == 10) {
                                this.name_ = pVar.K();
                            } else if (L == 18) {
                                if (!(z11 & true)) {
                                    this.phrases_ = new ArrayList();
                                    z11 |= true;
                                }
                                this.phrases_.add(pVar.B(Phrase.parser(), f0Var));
                            } else if (L != 37) {
                                if (!parseUnknownField(pVar, h10, f0Var, L)) {
                                }
                            } else {
                                this.boost_ = pVar.x();
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
                    this.phrases_ = Collections.unmodifiableList(this.phrases_);
                }
                this.unknownFields = h10.build();
                makeExtensionsImmutable();
            }
        }
    }

    public static PhraseSet parseFrom(com.google.protobuf.p pVar) throws IOException {
        return (PhraseSet) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
    }

    public static PhraseSet parseFrom(com.google.protobuf.p pVar, f0 f0Var) throws IOException {
        return (PhraseSet) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
    }
}
