package com.google.cloud.speech.v1;

import com.google.cloud.speech.v1.CustomClass;
import com.google.cloud.speech.v1.PhraseSet;
import com.google.protobuf.ByteString;
import com.google.protobuf.CodedOutputStream;
import com.google.protobuf.Descriptors;
import com.google.protobuf.GeneratedMessageV3;
import com.google.protobuf.InvalidProtocolBufferException;
import com.google.protobuf.a;
import com.google.protobuf.e2;
import com.google.protobuf.f0;
import com.google.protobuf.h3;
import com.google.protobuf.i2;
import com.google.protobuf.l1;
import com.google.protobuf.l2;
import com.google.protobuf.y0;
import com.google.protobuf.z0;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Objects;
/* loaded from: classes2.dex */
public final class SpeechAdaptation extends GeneratedMessageV3 implements g {
    public static final int CUSTOM_CLASSES_FIELD_NUMBER = 3;
    private static final SpeechAdaptation DEFAULT_INSTANCE = new SpeechAdaptation();
    private static final e2<SpeechAdaptation> PARSER = new a();
    public static final int PHRASE_SETS_FIELD_NUMBER = 1;
    public static final int PHRASE_SET_REFERENCES_FIELD_NUMBER = 2;
    private static final long serialVersionUID = 0;
    private List<CustomClass> customClasses_;
    private byte memoizedIsInitialized;
    private z0 phraseSetReferences_;
    private List<PhraseSet> phraseSets_;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public static class a extends com.google.protobuf.c<SpeechAdaptation> {
        a() {
        }

        @Override // com.google.protobuf.e2
        /* renamed from: G */
        public SpeechAdaptation m(com.google.protobuf.p pVar, f0 f0Var) throws InvalidProtocolBufferException {
            return new SpeechAdaptation(pVar, f0Var, null);
        }
    }

    /* loaded from: classes2.dex */
    public static final class b extends GeneratedMessageV3.b<b> implements g {

        /* renamed from: e  reason: collision with root package name */
        private int f11904e;

        /* renamed from: f  reason: collision with root package name */
        private List<PhraseSet> f11905f;

        /* renamed from: g  reason: collision with root package name */
        private l2<PhraseSet, PhraseSet.b, com.google.cloud.speech.v1.b> f11906g;

        /* renamed from: h  reason: collision with root package name */
        private z0 f11907h;

        /* renamed from: i  reason: collision with root package name */
        private List<CustomClass> f11908i;

        /* renamed from: j  reason: collision with root package name */
        private l2<CustomClass, CustomClass.b, com.google.cloud.speech.v1.a> f11909j;

        /* synthetic */ b(a aVar) {
            this();
        }

        private void a0() {
            if ((this.f11904e & 4) == 0) {
                this.f11908i = new ArrayList(this.f11908i);
                this.f11904e |= 4;
            }
        }

        private void b0() {
            if ((this.f11904e & 2) == 0) {
                this.f11907h = new y0(this.f11907h);
                this.f11904e |= 2;
            }
        }

        private void d0() {
            if ((this.f11904e & 1) == 0) {
                this.f11905f = new ArrayList(this.f11905f);
                this.f11904e |= 1;
            }
        }

        private l2<CustomClass, CustomClass.b, com.google.cloud.speech.v1.a> e0() {
            if (this.f11909j == null) {
                this.f11909j = new l2<>(this.f11908i, (this.f11904e & 4) != 0, H(), O());
                this.f11908i = null;
            }
            return this.f11909j;
        }

        private l2<PhraseSet, PhraseSet.b, com.google.cloud.speech.v1.b> h0() {
            if (this.f11906g == null) {
                this.f11906g = new l2<>(this.f11905f, (this.f11904e & 1) != 0, H(), O());
                this.f11905f = null;
            }
            return this.f11906g;
        }

        private void i0() {
            if (GeneratedMessageV3.alwaysUseFieldBuilders) {
                h0();
                e0();
            }
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b
        protected GeneratedMessageV3.e K() {
            return m.f11998j.d(SpeechAdaptation.class, b.class);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: W */
        public b L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (b) super.L(fieldDescriptor, obj);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: X */
        public SpeechAdaptation build() {
            SpeechAdaptation I = I();
            if (I.isInitialized()) {
                return I;
            }
            throw a.AbstractC0142a.A(I);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: Y */
        public SpeechAdaptation I() {
            SpeechAdaptation speechAdaptation = new SpeechAdaptation(this, (a) null);
            int i9 = this.f11904e;
            l2<PhraseSet, PhraseSet.b, com.google.cloud.speech.v1.b> l2Var = this.f11906g;
            if (l2Var == null) {
                if ((i9 & 1) != 0) {
                    this.f11905f = Collections.unmodifiableList(this.f11905f);
                    this.f11904e &= -2;
                }
                speechAdaptation.phraseSets_ = this.f11905f;
            } else {
                speechAdaptation.phraseSets_ = l2Var.e();
            }
            if ((this.f11904e & 2) != 0) {
                this.f11907h = this.f11907h.V0();
                this.f11904e &= -3;
            }
            speechAdaptation.phraseSetReferences_ = this.f11907h;
            l2<CustomClass, CustomClass.b, com.google.cloud.speech.v1.a> l2Var2 = this.f11909j;
            if (l2Var2 == null) {
                if ((this.f11904e & 4) != 0) {
                    this.f11908i = Collections.unmodifiableList(this.f11908i);
                    this.f11904e &= -5;
                }
                speechAdaptation.customClasses_ = this.f11908i;
            } else {
                speechAdaptation.customClasses_ = l2Var2.e();
            }
            Q();
            return speechAdaptation;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
        /* renamed from: Z */
        public b n() {
            return (b) super.n();
        }

        @Override // com.google.protobuf.p1, com.google.protobuf.r1
        /* renamed from: g0 */
        public SpeechAdaptation getDefaultInstanceForType() {
            return SpeechAdaptation.getDefaultInstance();
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
        public Descriptors.b getDescriptorForType() {
            return m.f11997i;
        }

        public b j0(SpeechAdaptation speechAdaptation) {
            if (speechAdaptation == SpeechAdaptation.getDefaultInstance()) {
                return this;
            }
            if (this.f11906g == null) {
                if (!speechAdaptation.phraseSets_.isEmpty()) {
                    if (this.f11905f.isEmpty()) {
                        this.f11905f = speechAdaptation.phraseSets_;
                        this.f11904e &= -2;
                    } else {
                        d0();
                        this.f11905f.addAll(speechAdaptation.phraseSets_);
                    }
                    R();
                }
            } else if (!speechAdaptation.phraseSets_.isEmpty()) {
                if (this.f11906g.k()) {
                    this.f11906g.f();
                    this.f11906g = null;
                    this.f11905f = speechAdaptation.phraseSets_;
                    this.f11904e &= -2;
                    this.f11906g = GeneratedMessageV3.alwaysUseFieldBuilders ? h0() : null;
                } else {
                    this.f11906g.b(speechAdaptation.phraseSets_);
                }
            }
            if (!speechAdaptation.phraseSetReferences_.isEmpty()) {
                if (this.f11907h.isEmpty()) {
                    this.f11907h = speechAdaptation.phraseSetReferences_;
                    this.f11904e &= -3;
                } else {
                    b0();
                    this.f11907h.addAll(speechAdaptation.phraseSetReferences_);
                }
                R();
            }
            if (this.f11909j == null) {
                if (!speechAdaptation.customClasses_.isEmpty()) {
                    if (this.f11908i.isEmpty()) {
                        this.f11908i = speechAdaptation.customClasses_;
                        this.f11904e &= -5;
                    } else {
                        a0();
                        this.f11908i.addAll(speechAdaptation.customClasses_);
                    }
                    R();
                }
            } else if (!speechAdaptation.customClasses_.isEmpty()) {
                if (this.f11909j.k()) {
                    this.f11909j.f();
                    this.f11909j = null;
                    this.f11908i = speechAdaptation.customClasses_;
                    this.f11904e &= -5;
                    this.f11909j = GeneratedMessageV3.alwaysUseFieldBuilders ? e0() : null;
                } else {
                    this.f11909j.b(speechAdaptation.customClasses_);
                }
            }
            z(((GeneratedMessageV3) speechAdaptation).unknownFields);
            R();
            return this;
        }

        /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: k0 */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public com.google.cloud.speech.v1.SpeechAdaptation.b u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
            /*
                r2 = this;
                r0 = 0
                com.google.protobuf.e2 r1 = com.google.cloud.speech.v1.SpeechAdaptation.access$1000()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                com.google.cloud.speech.v1.SpeechAdaptation r3 = (com.google.cloud.speech.v1.SpeechAdaptation) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
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
                com.google.cloud.speech.v1.SpeechAdaptation r4 = (com.google.cloud.speech.v1.SpeechAdaptation) r4     // Catch: java.lang.Throwable -> L11
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
            throw new UnsupportedOperationException("Method not decompiled: com.google.cloud.speech.v1.SpeechAdaptation.b.u(com.google.protobuf.p, com.google.protobuf.f0):com.google.cloud.speech.v1.SpeechAdaptation$b");
        }

        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: l0 */
        public b v(l1 l1Var) {
            if (l1Var instanceof SpeechAdaptation) {
                return j0((SpeechAdaptation) l1Var);
            }
            super.P0(l1Var);
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
        /* renamed from: m0 */
        public final b z(h3 h3Var) {
            return (b) super.z(h3Var);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: n0 */
        public b c(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (b) super.c(fieldDescriptor, obj);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: o0 */
        public final b f1(h3 h3Var) {
            return (b) super.f1(h3Var);
        }

        /* synthetic */ b(GeneratedMessageV3.c cVar, a aVar) {
            this(cVar);
        }

        private b() {
            this.f11905f = Collections.emptyList();
            this.f11907h = y0.f15344d;
            this.f11908i = Collections.emptyList();
            i0();
        }

        private b(GeneratedMessageV3.c cVar) {
            super(cVar);
            this.f11905f = Collections.emptyList();
            this.f11907h = y0.f15344d;
            this.f11908i = Collections.emptyList();
            i0();
        }
    }

    /* synthetic */ SpeechAdaptation(com.google.protobuf.p pVar, f0 f0Var, a aVar) throws InvalidProtocolBufferException {
        this(pVar, f0Var);
    }

    public static SpeechAdaptation getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static final Descriptors.b getDescriptor() {
        return m.f11997i;
    }

    public static b newBuilder() {
        return DEFAULT_INSTANCE.toBuilder();
    }

    public static SpeechAdaptation parseDelimitedFrom(InputStream inputStream) throws IOException {
        return (SpeechAdaptation) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
    }

    public static SpeechAdaptation parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
        return PARSER.l(byteBuffer);
    }

    public static e2<SpeechAdaptation> parser() {
        return PARSER;
    }

    @Override // com.google.protobuf.a
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof SpeechAdaptation)) {
            return super.equals(obj);
        }
        SpeechAdaptation speechAdaptation = (SpeechAdaptation) obj;
        return getPhraseSetsList().equals(speechAdaptation.getPhraseSetsList()) && m203getPhraseSetReferencesList().equals(speechAdaptation.m203getPhraseSetReferencesList()) && getCustomClassesList().equals(speechAdaptation.getCustomClassesList()) && this.unknownFields.equals(speechAdaptation.unknownFields);
    }

    public CustomClass getCustomClasses(int i9) {
        return this.customClasses_.get(i9);
    }

    public int getCustomClassesCount() {
        return this.customClasses_.size();
    }

    public List<CustomClass> getCustomClassesList() {
        return this.customClasses_;
    }

    public com.google.cloud.speech.v1.a getCustomClassesOrBuilder(int i9) {
        return this.customClasses_.get(i9);
    }

    public List<? extends com.google.cloud.speech.v1.a> getCustomClassesOrBuilderList() {
        return this.customClasses_;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public e2<SpeechAdaptation> getParserForType() {
        return PARSER;
    }

    public String getPhraseSetReferences(int i9) {
        return this.phraseSetReferences_.get(i9);
    }

    public ByteString getPhraseSetReferencesBytes(int i9) {
        return this.phraseSetReferences_.j0(i9);
    }

    public int getPhraseSetReferencesCount() {
        return this.phraseSetReferences_.size();
    }

    public PhraseSet getPhraseSets(int i9) {
        return this.phraseSets_.get(i9);
    }

    public int getPhraseSetsCount() {
        return this.phraseSets_.size();
    }

    public List<PhraseSet> getPhraseSetsList() {
        return this.phraseSets_;
    }

    public com.google.cloud.speech.v1.b getPhraseSetsOrBuilder(int i9) {
        return this.phraseSets_.get(i9);
    }

    public List<? extends com.google.cloud.speech.v1.b> getPhraseSetsOrBuilderList() {
        return this.phraseSets_;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public int getSerializedSize() {
        int i9 = this.memoizedSize;
        if (i9 != -1) {
            return i9;
        }
        int i10 = 0;
        for (int i11 = 0; i11 < this.phraseSets_.size(); i11++) {
            i10 += CodedOutputStream.G(1, this.phraseSets_.get(i11));
        }
        int i12 = 0;
        for (int i13 = 0; i13 < this.phraseSetReferences_.size(); i13++) {
            i12 += GeneratedMessageV3.computeStringSizeNoTag(this.phraseSetReferences_.c1(i13));
        }
        int size = i10 + i12 + (m203getPhraseSetReferencesList().size() * 1);
        for (int i14 = 0; i14 < this.customClasses_.size(); i14++) {
            size += CodedOutputStream.G(3, this.customClasses_.get(i14));
        }
        int serializedSize = size + this.unknownFields.getSerializedSize();
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
        if (getPhraseSetsCount() > 0) {
            hashCode = (((hashCode * 37) + 1) * 53) + getPhraseSetsList().hashCode();
        }
        if (getPhraseSetReferencesCount() > 0) {
            hashCode = (((hashCode * 37) + 2) * 53) + m203getPhraseSetReferencesList().hashCode();
        }
        if (getCustomClassesCount() > 0) {
            hashCode = (((hashCode * 37) + 3) * 53) + getCustomClassesList().hashCode();
        }
        int hashCode2 = (hashCode * 29) + this.unknownFields.hashCode();
        this.memoizedHashCode = hashCode2;
        return hashCode2;
    }

    @Override // com.google.protobuf.GeneratedMessageV3
    protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
        return m.f11998j.d(SpeechAdaptation.class, b.class);
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
        return new SpeechAdaptation();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
        for (int i9 = 0; i9 < this.phraseSets_.size(); i9++) {
            codedOutputStream.L0(1, this.phraseSets_.get(i9));
        }
        for (int i10 = 0; i10 < this.phraseSetReferences_.size(); i10++) {
            GeneratedMessageV3.writeString(codedOutputStream, 2, this.phraseSetReferences_.c1(i10));
        }
        for (int i11 = 0; i11 < this.customClasses_.size(); i11++) {
            codedOutputStream.L0(3, this.customClasses_.get(i11));
        }
        this.unknownFields.writeTo(codedOutputStream);
    }

    /* synthetic */ SpeechAdaptation(GeneratedMessageV3.b bVar, a aVar) {
        this(bVar);
    }

    public static b newBuilder(SpeechAdaptation speechAdaptation) {
        return DEFAULT_INSTANCE.toBuilder().j0(speechAdaptation);
    }

    public static SpeechAdaptation parseDelimitedFrom(InputStream inputStream, f0 f0Var) throws IOException {
        return (SpeechAdaptation) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
    }

    public static SpeechAdaptation parseFrom(ByteBuffer byteBuffer, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.f(byteBuffer, f0Var);
    }

    /* renamed from: getPhraseSetReferencesList */
    public i2 m203getPhraseSetReferencesList() {
        return this.phraseSetReferences_;
    }

    private SpeechAdaptation(GeneratedMessageV3.b<?> bVar) {
        super(bVar);
        this.memoizedIsInitialized = (byte) -1;
    }

    public static SpeechAdaptation parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
        return PARSER.c(byteString);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.p1, com.google.protobuf.r1
    public SpeechAdaptation getDefaultInstanceForType() {
        return DEFAULT_INSTANCE;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public b toBuilder() {
        return this == DEFAULT_INSTANCE ? new b((a) null) : new b((a) null).j0(this);
    }

    public static SpeechAdaptation parseFrom(ByteString byteString, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.b(byteString, f0Var);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public b newBuilderForType() {
        return newBuilder();
    }

    private SpeechAdaptation() {
        this.memoizedIsInitialized = (byte) -1;
        this.phraseSets_ = Collections.emptyList();
        this.phraseSetReferences_ = y0.f15344d;
        this.customClasses_ = Collections.emptyList();
    }

    public static SpeechAdaptation parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
        return PARSER.a(bArr);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.protobuf.GeneratedMessageV3
    public b newBuilderForType(GeneratedMessageV3.c cVar) {
        return new b(cVar, null);
    }

    public static SpeechAdaptation parseFrom(byte[] bArr, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.g(bArr, f0Var);
    }

    public static SpeechAdaptation parseFrom(InputStream inputStream) throws IOException {
        return (SpeechAdaptation) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
    }

    public static SpeechAdaptation parseFrom(InputStream inputStream, f0 f0Var) throws IOException {
        return (SpeechAdaptation) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
    }

    public static SpeechAdaptation parseFrom(com.google.protobuf.p pVar) throws IOException {
        return (SpeechAdaptation) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private SpeechAdaptation(com.google.protobuf.p pVar, f0 f0Var) throws InvalidProtocolBufferException {
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
                                this.phraseSets_ = new ArrayList();
                                z11 |= true;
                            }
                            this.phraseSets_.add(pVar.B(PhraseSet.parser(), f0Var));
                        } else if (L == 18) {
                            String K = pVar.K();
                            if (!(z11 & true)) {
                                this.phraseSetReferences_ = new y0();
                                z11 |= true;
                            }
                            this.phraseSetReferences_.add(K);
                        } else if (L != 26) {
                            if (!parseUnknownField(pVar, h10, f0Var, L)) {
                            }
                        } else {
                            if (!(z11 & true)) {
                                this.customClasses_ = new ArrayList();
                                z11 |= true;
                            }
                            this.customClasses_.add(pVar.B(CustomClass.parser(), f0Var));
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
                    this.phraseSets_ = Collections.unmodifiableList(this.phraseSets_);
                }
                if (z11 & true) {
                    this.phraseSetReferences_ = this.phraseSetReferences_.V0();
                }
                if (z11 & true) {
                    this.customClasses_ = Collections.unmodifiableList(this.customClasses_);
                }
                this.unknownFields = h10.build();
                makeExtensionsImmutable();
            }
        }
    }

    public static SpeechAdaptation parseFrom(com.google.protobuf.p pVar, f0 f0Var) throws IOException {
        return (SpeechAdaptation) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
    }
}
