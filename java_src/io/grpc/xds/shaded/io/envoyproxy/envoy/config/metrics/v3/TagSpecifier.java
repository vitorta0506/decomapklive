package io.grpc.xds.shaded.io.envoyproxy.envoy.config.metrics.v3;

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
import com.google.protobuf.p;
import com.google.protobuf.u0;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.Objects;
/* loaded from: classes6.dex */
public final class TagSpecifier extends GeneratedMessageV3 implements f {
    public static final int FIXED_VALUE_FIELD_NUMBER = 3;
    public static final int REGEX_FIELD_NUMBER = 2;
    public static final int TAG_NAME_FIELD_NUMBER = 1;
    private static final long serialVersionUID = 0;
    private byte memoizedIsInitialized;
    private volatile Object tagName_;
    private int tagValueCase_;
    private Object tagValue_;
    private static final TagSpecifier DEFAULT_INSTANCE = new TagSpecifier();
    private static final e2<TagSpecifier> PARSER = new a();

    /* loaded from: classes6.dex */
    public enum TagValueCase implements u0.c {
        REGEX(2),
        FIXED_VALUE(3),
        TAGVALUE_NOT_SET(0);
        
        private final int value;

        TagValueCase(int i9) {
            this.value = i9;
        }

        public static TagValueCase forNumber(int i9) {
            if (i9 != 0) {
                if (i9 != 2) {
                    if (i9 != 3) {
                        return null;
                    }
                    return FIXED_VALUE;
                }
                return REGEX;
            }
            return TAGVALUE_NOT_SET;
        }

        @Override // com.google.protobuf.u0.c
        public int getNumber() {
            return this.value;
        }

        @Deprecated
        public static TagValueCase valueOf(int i9) {
            return forNumber(i9);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes6.dex */
    public class a extends com.google.protobuf.c<TagSpecifier> {
        a() {
        }

        @Override // com.google.protobuf.e2
        /* renamed from: G */
        public TagSpecifier m(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
            return new TagSpecifier(pVar, f0Var, null);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes6.dex */
    public static /* synthetic */ class b {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f48909a;

        static {
            int[] iArr = new int[TagValueCase.values().length];
            f48909a = iArr;
            try {
                iArr[TagValueCase.REGEX.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f48909a[TagValueCase.FIXED_VALUE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f48909a[TagValueCase.TAGVALUE_NOT_SET.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    /* loaded from: classes6.dex */
    public static final class c extends GeneratedMessageV3.b<c> implements f {

        /* renamed from: e  reason: collision with root package name */
        private int f48910e;

        /* renamed from: f  reason: collision with root package name */
        private Object f48911f;

        /* renamed from: g  reason: collision with root package name */
        private Object f48912g;

        /* synthetic */ c(GeneratedMessageV3.c cVar, a aVar) {
            this(cVar);
        }

        private void b0() {
            boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b
        protected GeneratedMessageV3.e K() {
            return d.f48920h.d(TagSpecifier.class, c.class);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: W */
        public c L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (c) super.L(fieldDescriptor, obj);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: X */
        public TagSpecifier build() {
            TagSpecifier I = I();
            if (I.isInitialized()) {
                return I;
            }
            throw a.AbstractC0142a.A(I);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: Y */
        public TagSpecifier I() {
            TagSpecifier tagSpecifier = new TagSpecifier(this, (a) null);
            tagSpecifier.tagName_ = this.f48912g;
            if (this.f48910e == 2) {
                tagSpecifier.tagValue_ = this.f48911f;
            }
            if (this.f48910e == 3) {
                tagSpecifier.tagValue_ = this.f48911f;
            }
            tagSpecifier.tagValueCase_ = this.f48910e;
            Q();
            return tagSpecifier;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
        /* renamed from: Z */
        public c n() {
            return (c) super.n();
        }

        @Override // com.google.protobuf.p1, com.google.protobuf.r1
        /* renamed from: a0 */
        public TagSpecifier getDefaultInstanceForType() {
            return TagSpecifier.getDefaultInstance();
        }

        /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: d0 */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public io.grpc.xds.shaded.io.envoyproxy.envoy.config.metrics.v3.TagSpecifier.c u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
            /*
                r2 = this;
                r0 = 0
                com.google.protobuf.e2 r1 = io.grpc.xds.shaded.io.envoyproxy.envoy.config.metrics.v3.TagSpecifier.access$800()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                io.grpc.xds.shaded.io.envoyproxy.envoy.config.metrics.v3.TagSpecifier r3 = (io.grpc.xds.shaded.io.envoyproxy.envoy.config.metrics.v3.TagSpecifier) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
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
                io.grpc.xds.shaded.io.envoyproxy.envoy.config.metrics.v3.TagSpecifier r4 = (io.grpc.xds.shaded.io.envoyproxy.envoy.config.metrics.v3.TagSpecifier) r4     // Catch: java.lang.Throwable -> L11
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
            throw new UnsupportedOperationException("Method not decompiled: io.grpc.xds.shaded.io.envoyproxy.envoy.config.metrics.v3.TagSpecifier.c.u(com.google.protobuf.p, com.google.protobuf.f0):io.grpc.xds.shaded.io.envoyproxy.envoy.config.metrics.v3.TagSpecifier$c");
        }

        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: e0 */
        public c v(l1 l1Var) {
            if (l1Var instanceof TagSpecifier) {
                return g0((TagSpecifier) l1Var);
            }
            super.P0(l1Var);
            return this;
        }

        public c g0(TagSpecifier tagSpecifier) {
            if (tagSpecifier == TagSpecifier.getDefaultInstance()) {
                return this;
            }
            if (!tagSpecifier.getTagName().isEmpty()) {
                this.f48912g = tagSpecifier.tagName_;
                R();
            }
            int i9 = b.f48909a[tagSpecifier.getTagValueCase().ordinal()];
            if (i9 == 1) {
                this.f48910e = 2;
                this.f48911f = tagSpecifier.tagValue_;
                R();
            } else if (i9 == 2) {
                this.f48910e = 3;
                this.f48911f = tagSpecifier.tagValue_;
                R();
            }
            z(((GeneratedMessageV3) tagSpecifier).unknownFields);
            R();
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
        public Descriptors.b getDescriptorForType() {
            return d.f48919g;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
        /* renamed from: h0 */
        public final c z(h3 h3Var) {
            return (c) super.z(h3Var);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: i0 */
        public c c(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (c) super.c(fieldDescriptor, obj);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: j0 */
        public final c f1(h3 h3Var) {
            return (c) super.f1(h3Var);
        }

        /* synthetic */ c(a aVar) {
            this();
        }

        private c() {
            this.f48910e = 0;
            this.f48912g = "";
            b0();
        }

        private c(GeneratedMessageV3.c cVar) {
            super(cVar);
            this.f48910e = 0;
            this.f48912g = "";
            b0();
        }
    }

    /* synthetic */ TagSpecifier(p pVar, f0 f0Var, a aVar) throws InvalidProtocolBufferException {
        this(pVar, f0Var);
    }

    public static TagSpecifier getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static final Descriptors.b getDescriptor() {
        return d.f48919g;
    }

    public static c newBuilder() {
        return DEFAULT_INSTANCE.toBuilder();
    }

    public static TagSpecifier parseDelimitedFrom(InputStream inputStream) throws IOException {
        return (TagSpecifier) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
    }

    public static TagSpecifier parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
        return PARSER.l(byteBuffer);
    }

    public static e2<TagSpecifier> parser() {
        return PARSER;
    }

    @Override // com.google.protobuf.a
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof TagSpecifier)) {
            return super.equals(obj);
        }
        TagSpecifier tagSpecifier = (TagSpecifier) obj;
        if (getTagName().equals(tagSpecifier.getTagName()) && getTagValueCase().equals(tagSpecifier.getTagValueCase())) {
            int i9 = this.tagValueCase_;
            if (i9 != 2) {
                if (i9 == 3 && !getFixedValue().equals(tagSpecifier.getFixedValue())) {
                    return false;
                }
            } else if (!getRegex().equals(tagSpecifier.getRegex())) {
                return false;
            }
            return this.unknownFields.equals(tagSpecifier.unknownFields);
        }
        return false;
    }

    public String getFixedValue() {
        String str = this.tagValueCase_ == 3 ? this.tagValue_ : "";
        if (str instanceof String) {
            return (String) str;
        }
        String stringUtf8 = ((ByteString) str).toStringUtf8();
        if (this.tagValueCase_ == 3) {
            this.tagValue_ = stringUtf8;
        }
        return stringUtf8;
    }

    public ByteString getFixedValueBytes() {
        String str = this.tagValueCase_ == 3 ? this.tagValue_ : "";
        if (str instanceof String) {
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) str);
            if (this.tagValueCase_ == 3) {
                this.tagValue_ = copyFromUtf8;
            }
            return copyFromUtf8;
        }
        return (ByteString) str;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public e2<TagSpecifier> getParserForType() {
        return PARSER;
    }

    public String getRegex() {
        String str = this.tagValueCase_ == 2 ? this.tagValue_ : "";
        if (str instanceof String) {
            return (String) str;
        }
        String stringUtf8 = ((ByteString) str).toStringUtf8();
        if (this.tagValueCase_ == 2) {
            this.tagValue_ = stringUtf8;
        }
        return stringUtf8;
    }

    public ByteString getRegexBytes() {
        String str = this.tagValueCase_ == 2 ? this.tagValue_ : "";
        if (str instanceof String) {
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) str);
            if (this.tagValueCase_ == 2) {
                this.tagValue_ = copyFromUtf8;
            }
            return copyFromUtf8;
        }
        return (ByteString) str;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public int getSerializedSize() {
        int i9 = this.memoizedSize;
        if (i9 != -1) {
            return i9;
        }
        int computeStringSize = GeneratedMessageV3.isStringEmpty(this.tagName_) ? 0 : 0 + GeneratedMessageV3.computeStringSize(1, this.tagName_);
        if (this.tagValueCase_ == 2) {
            computeStringSize += GeneratedMessageV3.computeStringSize(2, this.tagValue_);
        }
        if (this.tagValueCase_ == 3) {
            computeStringSize += GeneratedMessageV3.computeStringSize(3, this.tagValue_);
        }
        int serializedSize = computeStringSize + this.unknownFields.getSerializedSize();
        this.memoizedSize = serializedSize;
        return serializedSize;
    }

    public String getTagName() {
        Object obj = this.tagName_;
        if (obj instanceof String) {
            return (String) obj;
        }
        String stringUtf8 = ((ByteString) obj).toStringUtf8();
        this.tagName_ = stringUtf8;
        return stringUtf8;
    }

    public ByteString getTagNameBytes() {
        Object obj = this.tagName_;
        if (obj instanceof String) {
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.tagName_ = copyFromUtf8;
            return copyFromUtf8;
        }
        return (ByteString) obj;
    }

    public TagValueCase getTagValueCase() {
        return TagValueCase.forNumber(this.tagValueCase_);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.r1
    public final h3 getUnknownFields() {
        return this.unknownFields;
    }

    public boolean hasFixedValue() {
        return this.tagValueCase_ == 3;
    }

    public boolean hasRegex() {
        return this.tagValueCase_ == 2;
    }

    @Override // com.google.protobuf.a
    public int hashCode() {
        int i9;
        int hashCode;
        int i10 = this.memoizedHashCode;
        if (i10 != 0) {
            return i10;
        }
        int hashCode2 = ((((779 + getDescriptor().hashCode()) * 37) + 1) * 53) + getTagName().hashCode();
        int i11 = this.tagValueCase_;
        if (i11 == 2) {
            i9 = ((hashCode2 * 37) + 2) * 53;
            hashCode = getRegex().hashCode();
        } else {
            if (i11 == 3) {
                i9 = ((hashCode2 * 37) + 3) * 53;
                hashCode = getFixedValue().hashCode();
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
        return d.f48920h.d(TagSpecifier.class, c.class);
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
        return new TagSpecifier();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
        if (!GeneratedMessageV3.isStringEmpty(this.tagName_)) {
            GeneratedMessageV3.writeString(codedOutputStream, 1, this.tagName_);
        }
        if (this.tagValueCase_ == 2) {
            GeneratedMessageV3.writeString(codedOutputStream, 2, this.tagValue_);
        }
        if (this.tagValueCase_ == 3) {
            GeneratedMessageV3.writeString(codedOutputStream, 3, this.tagValue_);
        }
        this.unknownFields.writeTo(codedOutputStream);
    }

    /* synthetic */ TagSpecifier(GeneratedMessageV3.b bVar, a aVar) {
        this(bVar);
    }

    public static c newBuilder(TagSpecifier tagSpecifier) {
        return DEFAULT_INSTANCE.toBuilder().g0(tagSpecifier);
    }

    public static TagSpecifier parseFrom(ByteBuffer byteBuffer, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.f(byteBuffer, f0Var);
    }

    private TagSpecifier(GeneratedMessageV3.b<?> bVar) {
        super(bVar);
        this.tagValueCase_ = 0;
        this.memoizedIsInitialized = (byte) -1;
    }

    public static TagSpecifier parseDelimitedFrom(InputStream inputStream, f0 f0Var) throws IOException {
        return (TagSpecifier) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
    }

    public static TagSpecifier parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
        return PARSER.c(byteString);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.p1, com.google.protobuf.r1
    public TagSpecifier getDefaultInstanceForType() {
        return DEFAULT_INSTANCE;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public c toBuilder() {
        return this == DEFAULT_INSTANCE ? new c((a) null) : new c((a) null).g0(this);
    }

    public static TagSpecifier parseFrom(ByteString byteString, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.b(byteString, f0Var);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public c newBuilderForType() {
        return newBuilder();
    }

    public static TagSpecifier parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
        return PARSER.a(bArr);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.protobuf.GeneratedMessageV3
    public c newBuilderForType(GeneratedMessageV3.c cVar) {
        return new c(cVar, null);
    }

    private TagSpecifier() {
        this.tagValueCase_ = 0;
        this.memoizedIsInitialized = (byte) -1;
        this.tagName_ = "";
    }

    public static TagSpecifier parseFrom(byte[] bArr, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.g(bArr, f0Var);
    }

    public static TagSpecifier parseFrom(InputStream inputStream) throws IOException {
        return (TagSpecifier) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
    }

    public static TagSpecifier parseFrom(InputStream inputStream, f0 f0Var) throws IOException {
        return (TagSpecifier) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
    }

    private TagSpecifier(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
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
                                this.tagName_ = pVar.K();
                            } else if (L == 18) {
                                String K = pVar.K();
                                this.tagValueCase_ = 2;
                                this.tagValue_ = K;
                            } else if (L != 26) {
                                if (!parseUnknownField(pVar, h10, f0Var, L)) {
                                }
                            } else {
                                String K2 = pVar.K();
                                this.tagValueCase_ = 3;
                                this.tagValue_ = K2;
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

    public static TagSpecifier parseFrom(p pVar) throws IOException {
        return (TagSpecifier) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
    }

    public static TagSpecifier parseFrom(p pVar, f0 f0Var) throws IOException {
        return (TagSpecifier) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
    }
}
