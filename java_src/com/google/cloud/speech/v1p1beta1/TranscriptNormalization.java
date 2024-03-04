package com.google.cloud.speech.v1p1beta1;

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
import com.google.protobuf.u0;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Objects;
/* loaded from: classes2.dex */
public final class TranscriptNormalization extends GeneratedMessageV3 implements p {
    public static final int ENTRIES_FIELD_NUMBER = 1;
    private static final long serialVersionUID = 0;
    private List<Entry> entries_;
    private byte memoizedIsInitialized;
    private static final TranscriptNormalization DEFAULT_INSTANCE = new TranscriptNormalization();
    private static final e2<TranscriptNormalization> PARSER = new a();

    /* loaded from: classes2.dex */
    public static final class Entry extends GeneratedMessageV3 implements c {
        public static final int CASE_SENSITIVE_FIELD_NUMBER = 3;
        private static final Entry DEFAULT_INSTANCE = new Entry();
        private static final e2<Entry> PARSER = new a();
        public static final int REPLACE_FIELD_NUMBER = 2;
        public static final int SEARCH_FIELD_NUMBER = 1;
        private static final long serialVersionUID = 0;
        private boolean caseSensitive_;
        private byte memoizedIsInitialized;
        private volatile Object replace_;
        private volatile Object search_;

        /* loaded from: classes2.dex */
        static class a extends com.google.protobuf.c<Entry> {
            a() {
            }

            @Override // com.google.protobuf.e2
            /* renamed from: G */
            public Entry m(com.google.protobuf.p pVar, f0 f0Var) throws InvalidProtocolBufferException {
                return new Entry(pVar, f0Var, null);
            }
        }

        /* loaded from: classes2.dex */
        public static final class b extends GeneratedMessageV3.b<b> implements c {

            /* renamed from: e  reason: collision with root package name */
            private Object f12237e;

            /* renamed from: f  reason: collision with root package name */
            private Object f12238f;

            /* renamed from: g  reason: collision with root package name */
            private boolean f12239g;

            /* synthetic */ b(a aVar) {
                this();
            }

            private void b0() {
                boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b
            protected GeneratedMessageV3.e K() {
                return m.f12325n.d(Entry.class, b.class);
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
                entry.search_ = this.f12237e;
                entry.replace_ = this.f12238f;
                entry.caseSensitive_ = this.f12239g;
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

            public b d0(Entry entry) {
                if (entry == Entry.getDefaultInstance()) {
                    return this;
                }
                if (!entry.getSearch().isEmpty()) {
                    this.f12237e = entry.search_;
                    R();
                }
                if (!entry.getReplace().isEmpty()) {
                    this.f12238f = entry.replace_;
                    R();
                }
                if (entry.getCaseSensitive()) {
                    i0(entry.getCaseSensitive());
                }
                z(((GeneratedMessageV3) entry).unknownFields);
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
            public com.google.cloud.speech.v1p1beta1.TranscriptNormalization.Entry.b u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
                /*
                    r2 = this;
                    r0 = 0
                    com.google.protobuf.e2 r1 = com.google.cloud.speech.v1p1beta1.TranscriptNormalization.Entry.access$800()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                    java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                    com.google.cloud.speech.v1p1beta1.TranscriptNormalization$Entry r3 = (com.google.cloud.speech.v1p1beta1.TranscriptNormalization.Entry) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
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
                    com.google.cloud.speech.v1p1beta1.TranscriptNormalization$Entry r4 = (com.google.cloud.speech.v1p1beta1.TranscriptNormalization.Entry) r4     // Catch: java.lang.Throwable -> L11
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
                throw new UnsupportedOperationException("Method not decompiled: com.google.cloud.speech.v1p1beta1.TranscriptNormalization.Entry.b.u(com.google.protobuf.p, com.google.protobuf.f0):com.google.cloud.speech.v1p1beta1.TranscriptNormalization$Entry$b");
            }

            @Override // com.google.protobuf.a.AbstractC0142a
            /* renamed from: g0 */
            public b v(l1 l1Var) {
                if (l1Var instanceof Entry) {
                    return d0((Entry) l1Var);
                }
                super.P0(l1Var);
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
            public Descriptors.b getDescriptorForType() {
                return m.f12324m;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
            /* renamed from: h0 */
            public final b z(h3 h3Var) {
                return (b) super.z(h3Var);
            }

            public b i0(boolean z10) {
                this.f12239g = z10;
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
                this.f12237e = "";
                this.f12238f = "";
                b0();
            }

            private b(GeneratedMessageV3.c cVar) {
                super(cVar);
                this.f12237e = "";
                this.f12238f = "";
                b0();
            }
        }

        /* synthetic */ Entry(com.google.protobuf.p pVar, f0 f0Var, a aVar) throws InvalidProtocolBufferException {
            this(pVar, f0Var);
        }

        public static Entry getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static final Descriptors.b getDescriptor() {
            return m.f12324m;
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
            return getSearch().equals(entry.getSearch()) && getReplace().equals(entry.getReplace()) && getCaseSensitive() == entry.getCaseSensitive() && this.unknownFields.equals(entry.unknownFields);
        }

        public boolean getCaseSensitive() {
            return this.caseSensitive_;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
        public e2<Entry> getParserForType() {
            return PARSER;
        }

        public String getReplace() {
            Object obj = this.replace_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.replace_ = stringUtf8;
            return stringUtf8;
        }

        public ByteString getReplaceBytes() {
            Object obj = this.replace_;
            if (obj instanceof String) {
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.replace_ = copyFromUtf8;
                return copyFromUtf8;
            }
            return (ByteString) obj;
        }

        public String getSearch() {
            Object obj = this.search_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.search_ = stringUtf8;
            return stringUtf8;
        }

        public ByteString getSearchBytes() {
            Object obj = this.search_;
            if (obj instanceof String) {
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.search_ = copyFromUtf8;
                return copyFromUtf8;
            }
            return (ByteString) obj;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
        public int getSerializedSize() {
            int i9 = this.memoizedSize;
            if (i9 != -1) {
                return i9;
            }
            int computeStringSize = GeneratedMessageV3.isStringEmpty(this.search_) ? 0 : 0 + GeneratedMessageV3.computeStringSize(1, this.search_);
            if (!GeneratedMessageV3.isStringEmpty(this.replace_)) {
                computeStringSize += GeneratedMessageV3.computeStringSize(2, this.replace_);
            }
            boolean z10 = this.caseSensitive_;
            if (z10) {
                computeStringSize += CodedOutputStream.e(3, z10);
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
            int hashCode = ((((((((((((((779 + getDescriptor().hashCode()) * 37) + 1) * 53) + getSearch().hashCode()) * 37) + 2) * 53) + getReplace().hashCode()) * 37) + 3) * 53) + u0.d(getCaseSensitive())) * 29) + this.unknownFields.hashCode();
            this.memoizedHashCode = hashCode;
            return hashCode;
        }

        @Override // com.google.protobuf.GeneratedMessageV3
        protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
            return m.f12325n.d(Entry.class, b.class);
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
            return new Entry();
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
        public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
            if (!GeneratedMessageV3.isStringEmpty(this.search_)) {
                GeneratedMessageV3.writeString(codedOutputStream, 1, this.search_);
            }
            if (!GeneratedMessageV3.isStringEmpty(this.replace_)) {
                GeneratedMessageV3.writeString(codedOutputStream, 2, this.replace_);
            }
            boolean z10 = this.caseSensitive_;
            if (z10) {
                codedOutputStream.n0(3, z10);
            }
            this.unknownFields.writeTo(codedOutputStream);
        }

        /* synthetic */ Entry(GeneratedMessageV3.b bVar, a aVar) {
            this(bVar);
        }

        public static b newBuilder(Entry entry) {
            return DEFAULT_INSTANCE.toBuilder().d0(entry);
        }

        public static Entry parseDelimitedFrom(InputStream inputStream, f0 f0Var) throws IOException {
            return (Entry) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
        }

        public static Entry parseFrom(ByteBuffer byteBuffer, f0 f0Var) throws InvalidProtocolBufferException {
            return PARSER.f(byteBuffer, f0Var);
        }

        private Entry(GeneratedMessageV3.b<?> bVar) {
            super(bVar);
            this.memoizedIsInitialized = (byte) -1;
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
            return this == DEFAULT_INSTANCE ? new b((a) null) : new b((a) null).d0(this);
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
            this.search_ = "";
            this.replace_ = "";
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

        public static Entry parseFrom(InputStream inputStream, f0 f0Var) throws IOException {
            return (Entry) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
        }

        private Entry(com.google.protobuf.p pVar, f0 f0Var) throws InvalidProtocolBufferException {
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
                                this.search_ = pVar.K();
                            } else if (L == 18) {
                                this.replace_ = pVar.K();
                            } else if (L != 24) {
                                if (!parseUnknownField(pVar, h10, f0Var, L)) {
                                }
                            } else {
                                this.caseSensitive_ = pVar.r();
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

        public static Entry parseFrom(com.google.protobuf.p pVar) throws IOException {
            return (Entry) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
        }

        public static Entry parseFrom(com.google.protobuf.p pVar, f0 f0Var) throws IOException {
            return (Entry) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public static class a extends com.google.protobuf.c<TranscriptNormalization> {
        a() {
        }

        @Override // com.google.protobuf.e2
        /* renamed from: G */
        public TranscriptNormalization m(com.google.protobuf.p pVar, f0 f0Var) throws InvalidProtocolBufferException {
            return new TranscriptNormalization(pVar, f0Var, null);
        }
    }

    /* loaded from: classes2.dex */
    public static final class b extends GeneratedMessageV3.b<b> implements p {

        /* renamed from: e  reason: collision with root package name */
        private int f12240e;

        /* renamed from: f  reason: collision with root package name */
        private List<Entry> f12241f;

        /* renamed from: g  reason: collision with root package name */
        private l2<Entry, Entry.b, c> f12242g;

        /* synthetic */ b(a aVar) {
            this();
        }

        private void a0() {
            if ((this.f12240e & 1) == 0) {
                this.f12241f = new ArrayList(this.f12241f);
                this.f12240e |= 1;
            }
        }

        private l2<Entry, Entry.b, c> d0() {
            if (this.f12242g == null) {
                this.f12242g = new l2<>(this.f12241f, (this.f12240e & 1) != 0, H(), O());
                this.f12241f = null;
            }
            return this.f12242g;
        }

        private void e0() {
            if (GeneratedMessageV3.alwaysUseFieldBuilders) {
                d0();
            }
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b
        protected GeneratedMessageV3.e K() {
            return m.f12323l.d(TranscriptNormalization.class, b.class);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: W */
        public b L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (b) super.L(fieldDescriptor, obj);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: X */
        public TranscriptNormalization build() {
            TranscriptNormalization I = I();
            if (I.isInitialized()) {
                return I;
            }
            throw a.AbstractC0142a.A(I);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: Y */
        public TranscriptNormalization I() {
            TranscriptNormalization transcriptNormalization = new TranscriptNormalization(this, (a) null);
            int i9 = this.f12240e;
            l2<Entry, Entry.b, c> l2Var = this.f12242g;
            if (l2Var == null) {
                if ((i9 & 1) != 0) {
                    this.f12241f = Collections.unmodifiableList(this.f12241f);
                    this.f12240e &= -2;
                }
                transcriptNormalization.entries_ = this.f12241f;
            } else {
                transcriptNormalization.entries_ = l2Var.e();
            }
            Q();
            return transcriptNormalization;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
        /* renamed from: Z */
        public b n() {
            return (b) super.n();
        }

        @Override // com.google.protobuf.p1, com.google.protobuf.r1
        /* renamed from: b0 */
        public TranscriptNormalization getDefaultInstanceForType() {
            return TranscriptNormalization.getDefaultInstance();
        }

        public b g0(TranscriptNormalization transcriptNormalization) {
            if (transcriptNormalization == TranscriptNormalization.getDefaultInstance()) {
                return this;
            }
            if (this.f12242g == null) {
                if (!transcriptNormalization.entries_.isEmpty()) {
                    if (this.f12241f.isEmpty()) {
                        this.f12241f = transcriptNormalization.entries_;
                        this.f12240e &= -2;
                    } else {
                        a0();
                        this.f12241f.addAll(transcriptNormalization.entries_);
                    }
                    R();
                }
            } else if (!transcriptNormalization.entries_.isEmpty()) {
                if (this.f12242g.k()) {
                    this.f12242g.f();
                    this.f12242g = null;
                    this.f12241f = transcriptNormalization.entries_;
                    this.f12240e &= -2;
                    this.f12242g = GeneratedMessageV3.alwaysUseFieldBuilders ? d0() : null;
                } else {
                    this.f12242g.b(transcriptNormalization.entries_);
                }
            }
            z(((GeneratedMessageV3) transcriptNormalization).unknownFields);
            R();
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
        public Descriptors.b getDescriptorForType() {
            return m.f12322k;
        }

        /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: h0 */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public com.google.cloud.speech.v1p1beta1.TranscriptNormalization.b u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
            /*
                r2 = this;
                r0 = 0
                com.google.protobuf.e2 r1 = com.google.cloud.speech.v1p1beta1.TranscriptNormalization.access$1900()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                com.google.cloud.speech.v1p1beta1.TranscriptNormalization r3 = (com.google.cloud.speech.v1p1beta1.TranscriptNormalization) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
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
                com.google.cloud.speech.v1p1beta1.TranscriptNormalization r4 = (com.google.cloud.speech.v1p1beta1.TranscriptNormalization) r4     // Catch: java.lang.Throwable -> L11
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
            throw new UnsupportedOperationException("Method not decompiled: com.google.cloud.speech.v1p1beta1.TranscriptNormalization.b.u(com.google.protobuf.p, com.google.protobuf.f0):com.google.cloud.speech.v1p1beta1.TranscriptNormalization$b");
        }

        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: i0 */
        public b v(l1 l1Var) {
            if (l1Var instanceof TranscriptNormalization) {
                return g0((TranscriptNormalization) l1Var);
            }
            super.P0(l1Var);
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

        /* synthetic */ b(GeneratedMessageV3.c cVar, a aVar) {
            this(cVar);
        }

        private b() {
            this.f12241f = Collections.emptyList();
            e0();
        }

        private b(GeneratedMessageV3.c cVar) {
            super(cVar);
            this.f12241f = Collections.emptyList();
            e0();
        }
    }

    /* loaded from: classes2.dex */
    public interface c extends r1 {
    }

    /* synthetic */ TranscriptNormalization(com.google.protobuf.p pVar, f0 f0Var, a aVar) throws InvalidProtocolBufferException {
        this(pVar, f0Var);
    }

    public static TranscriptNormalization getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static final Descriptors.b getDescriptor() {
        return m.f12322k;
    }

    public static b newBuilder() {
        return DEFAULT_INSTANCE.toBuilder();
    }

    public static TranscriptNormalization parseDelimitedFrom(InputStream inputStream) throws IOException {
        return (TranscriptNormalization) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
    }

    public static TranscriptNormalization parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
        return PARSER.l(byteBuffer);
    }

    public static e2<TranscriptNormalization> parser() {
        return PARSER;
    }

    @Override // com.google.protobuf.a
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof TranscriptNormalization)) {
            return super.equals(obj);
        }
        TranscriptNormalization transcriptNormalization = (TranscriptNormalization) obj;
        return getEntriesList().equals(transcriptNormalization.getEntriesList()) && this.unknownFields.equals(transcriptNormalization.unknownFields);
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
    public e2<TranscriptNormalization> getParserForType() {
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
        return m.f12323l.d(TranscriptNormalization.class, b.class);
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
        return new TranscriptNormalization();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
        for (int i9 = 0; i9 < this.entries_.size(); i9++) {
            codedOutputStream.L0(1, this.entries_.get(i9));
        }
        this.unknownFields.writeTo(codedOutputStream);
    }

    /* synthetic */ TranscriptNormalization(GeneratedMessageV3.b bVar, a aVar) {
        this(bVar);
    }

    public static b newBuilder(TranscriptNormalization transcriptNormalization) {
        return DEFAULT_INSTANCE.toBuilder().g0(transcriptNormalization);
    }

    public static TranscriptNormalization parseDelimitedFrom(InputStream inputStream, f0 f0Var) throws IOException {
        return (TranscriptNormalization) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
    }

    public static TranscriptNormalization parseFrom(ByteBuffer byteBuffer, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.f(byteBuffer, f0Var);
    }

    private TranscriptNormalization(GeneratedMessageV3.b<?> bVar) {
        super(bVar);
        this.memoizedIsInitialized = (byte) -1;
    }

    public static TranscriptNormalization parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
        return PARSER.c(byteString);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.p1, com.google.protobuf.r1
    public TranscriptNormalization getDefaultInstanceForType() {
        return DEFAULT_INSTANCE;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public b toBuilder() {
        return this == DEFAULT_INSTANCE ? new b((a) null) : new b((a) null).g0(this);
    }

    public static TranscriptNormalization parseFrom(ByteString byteString, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.b(byteString, f0Var);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public b newBuilderForType() {
        return newBuilder();
    }

    private TranscriptNormalization() {
        this.memoizedIsInitialized = (byte) -1;
        this.entries_ = Collections.emptyList();
    }

    public static TranscriptNormalization parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
        return PARSER.a(bArr);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.protobuf.GeneratedMessageV3
    public b newBuilderForType(GeneratedMessageV3.c cVar) {
        return new b(cVar, null);
    }

    public static TranscriptNormalization parseFrom(byte[] bArr, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.g(bArr, f0Var);
    }

    public static TranscriptNormalization parseFrom(InputStream inputStream) throws IOException {
        return (TranscriptNormalization) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private TranscriptNormalization(com.google.protobuf.p pVar, f0 f0Var) throws InvalidProtocolBufferException {
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

    public static TranscriptNormalization parseFrom(InputStream inputStream, f0 f0Var) throws IOException {
        return (TranscriptNormalization) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
    }

    public static TranscriptNormalization parseFrom(com.google.protobuf.p pVar) throws IOException {
        return (TranscriptNormalization) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
    }

    public static TranscriptNormalization parseFrom(com.google.protobuf.p pVar, f0 f0Var) throws IOException {
        return (TranscriptNormalization) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
    }
}
