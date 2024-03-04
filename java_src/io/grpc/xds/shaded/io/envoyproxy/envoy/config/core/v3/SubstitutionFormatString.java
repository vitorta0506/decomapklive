package io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3;

import com.google.protobuf.ByteString;
import com.google.protobuf.CodedOutputStream;
import com.google.protobuf.Descriptors;
import com.google.protobuf.GeneratedMessageV3;
import com.google.protobuf.InvalidProtocolBufferException;
import com.google.protobuf.Struct;
import com.google.protobuf.a;
import com.google.protobuf.e2;
import com.google.protobuf.h3;
import com.google.protobuf.l2;
import com.google.protobuf.o1;
import com.google.protobuf.q2;
import com.google.protobuf.u0;
import com.google.protobuf.u2;
import io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.DataSource;
import io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.TypedExtensionConfig;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Objects;
/* loaded from: classes6.dex */
public final class SubstitutionFormatString extends GeneratedMessageV3 implements e1 {
    public static final int CONTENT_TYPE_FIELD_NUMBER = 4;
    public static final int FORMATTERS_FIELD_NUMBER = 6;
    public static final int JSON_FORMAT_FIELD_NUMBER = 2;
    public static final int OMIT_EMPTY_VALUES_FIELD_NUMBER = 3;
    public static final int TEXT_FORMAT_FIELD_NUMBER = 1;
    public static final int TEXT_FORMAT_SOURCE_FIELD_NUMBER = 5;
    private static final long serialVersionUID = 0;
    private volatile Object contentType_;
    private int formatCase_;
    private Object format_;
    private List<TypedExtensionConfig> formatters_;
    private byte memoizedIsInitialized;
    private boolean omitEmptyValues_;
    private static final SubstitutionFormatString DEFAULT_INSTANCE = new SubstitutionFormatString();
    private static final e2<SubstitutionFormatString> PARSER = new a();

    /* loaded from: classes6.dex */
    public enum FormatCase implements u0.c {
        TEXT_FORMAT(1),
        JSON_FORMAT(2),
        TEXT_FORMAT_SOURCE(5),
        FORMAT_NOT_SET(0);
        
        private final int value;

        FormatCase(int i9) {
            this.value = i9;
        }

        public static FormatCase forNumber(int i9) {
            if (i9 != 0) {
                if (i9 != 1) {
                    if (i9 != 2) {
                        if (i9 != 5) {
                            return null;
                        }
                        return TEXT_FORMAT_SOURCE;
                    }
                    return JSON_FORMAT;
                }
                return TEXT_FORMAT;
            }
            return FORMAT_NOT_SET;
        }

        @Override // com.google.protobuf.u0.c
        public int getNumber() {
            return this.value;
        }

        @Deprecated
        public static FormatCase valueOf(int i9) {
            return forNumber(i9);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes6.dex */
    public class a extends com.google.protobuf.c<SubstitutionFormatString> {
        a() {
        }

        @Override // com.google.protobuf.e2
        /* renamed from: G */
        public SubstitutionFormatString m(com.google.protobuf.p pVar, com.google.protobuf.f0 f0Var) throws InvalidProtocolBufferException {
            return new SubstitutionFormatString(pVar, f0Var, null);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes6.dex */
    public static /* synthetic */ class b {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f48138a;

        static {
            int[] iArr = new int[FormatCase.values().length];
            f48138a = iArr;
            try {
                iArr[FormatCase.TEXT_FORMAT.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f48138a[FormatCase.JSON_FORMAT.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f48138a[FormatCase.TEXT_FORMAT_SOURCE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f48138a[FormatCase.FORMAT_NOT_SET.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    /* loaded from: classes6.dex */
    public static final class c extends GeneratedMessageV3.b<c> implements e1 {

        /* renamed from: e  reason: collision with root package name */
        private int f48139e;

        /* renamed from: f  reason: collision with root package name */
        private Object f48140f;

        /* renamed from: g  reason: collision with root package name */
        private int f48141g;

        /* renamed from: h  reason: collision with root package name */
        private q2<Struct, Struct.b, u2> f48142h;

        /* renamed from: i  reason: collision with root package name */
        private q2<DataSource, DataSource.c, n> f48143i;

        /* renamed from: j  reason: collision with root package name */
        private boolean f48144j;

        /* renamed from: k  reason: collision with root package name */
        private Object f48145k;

        /* renamed from: l  reason: collision with root package name */
        private List<TypedExtensionConfig> f48146l;

        /* renamed from: m  reason: collision with root package name */
        private l2<TypedExtensionConfig, TypedExtensionConfig.b, i1> f48147m;

        /* synthetic */ c(GeneratedMessageV3.c cVar, a aVar) {
            this(cVar);
        }

        private void a0() {
            if ((this.f48141g & 1) == 0) {
                this.f48146l = new ArrayList(this.f48146l);
                this.f48141g |= 1;
            }
        }

        private l2<TypedExtensionConfig, TypedExtensionConfig.b, i1> d0() {
            if (this.f48147m == null) {
                this.f48147m = new l2<>(this.f48146l, (this.f48141g & 1) != 0, H(), O());
                this.f48146l = null;
            }
            return this.f48147m;
        }

        private void e0() {
            if (GeneratedMessageV3.alwaysUseFieldBuilders) {
                d0();
            }
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b
        protected GeneratedMessageV3.e K() {
            return f1.f48208b.d(SubstitutionFormatString.class, c.class);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: W */
        public c L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (c) super.L(fieldDescriptor, obj);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: X */
        public SubstitutionFormatString build() {
            SubstitutionFormatString I = I();
            if (I.isInitialized()) {
                return I;
            }
            throw a.AbstractC0142a.A(I);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: Y */
        public SubstitutionFormatString I() {
            SubstitutionFormatString substitutionFormatString = new SubstitutionFormatString(this, (a) null);
            if (this.f48139e == 1) {
                substitutionFormatString.format_ = this.f48140f;
            }
            if (this.f48139e == 2) {
                q2<Struct, Struct.b, u2> q2Var = this.f48142h;
                if (q2Var == null) {
                    substitutionFormatString.format_ = this.f48140f;
                } else {
                    substitutionFormatString.format_ = q2Var.b();
                }
            }
            if (this.f48139e == 5) {
                q2<DataSource, DataSource.c, n> q2Var2 = this.f48143i;
                if (q2Var2 == null) {
                    substitutionFormatString.format_ = this.f48140f;
                } else {
                    substitutionFormatString.format_ = q2Var2.b();
                }
            }
            substitutionFormatString.omitEmptyValues_ = this.f48144j;
            substitutionFormatString.contentType_ = this.f48145k;
            l2<TypedExtensionConfig, TypedExtensionConfig.b, i1> l2Var = this.f48147m;
            if (l2Var == null) {
                if ((this.f48141g & 1) != 0) {
                    this.f48146l = Collections.unmodifiableList(this.f48146l);
                    this.f48141g &= -2;
                }
                substitutionFormatString.formatters_ = this.f48146l;
            } else {
                substitutionFormatString.formatters_ = l2Var.e();
            }
            substitutionFormatString.formatCase_ = this.f48139e;
            Q();
            return substitutionFormatString;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
        /* renamed from: Z */
        public c n() {
            return (c) super.n();
        }

        @Override // com.google.protobuf.p1, com.google.protobuf.r1
        /* renamed from: b0 */
        public SubstitutionFormatString getDefaultInstanceForType() {
            return SubstitutionFormatString.getDefaultInstance();
        }

        /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: g0 */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.SubstitutionFormatString.c u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
            /*
                r2 = this;
                r0 = 0
                com.google.protobuf.e2 r1 = io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.SubstitutionFormatString.access$1100()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.SubstitutionFormatString r3 = (io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.SubstitutionFormatString) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
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
                io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.SubstitutionFormatString r4 = (io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.SubstitutionFormatString) r4     // Catch: java.lang.Throwable -> L11
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
            throw new UnsupportedOperationException("Method not decompiled: io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.SubstitutionFormatString.c.u(com.google.protobuf.p, com.google.protobuf.f0):io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.SubstitutionFormatString$c");
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
        public Descriptors.b getDescriptorForType() {
            return f1.f48207a;
        }

        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: h0 */
        public c v(com.google.protobuf.l1 l1Var) {
            if (l1Var instanceof SubstitutionFormatString) {
                return i0((SubstitutionFormatString) l1Var);
            }
            super.P0(l1Var);
            return this;
        }

        public c i0(SubstitutionFormatString substitutionFormatString) {
            if (substitutionFormatString == SubstitutionFormatString.getDefaultInstance()) {
                return this;
            }
            if (substitutionFormatString.getOmitEmptyValues()) {
                n0(substitutionFormatString.getOmitEmptyValues());
            }
            if (!substitutionFormatString.getContentType().isEmpty()) {
                this.f48145k = substitutionFormatString.contentType_;
                R();
            }
            if (this.f48147m == null) {
                if (!substitutionFormatString.formatters_.isEmpty()) {
                    if (this.f48146l.isEmpty()) {
                        this.f48146l = substitutionFormatString.formatters_;
                        this.f48141g &= -2;
                    } else {
                        a0();
                        this.f48146l.addAll(substitutionFormatString.formatters_);
                    }
                    R();
                }
            } else if (!substitutionFormatString.formatters_.isEmpty()) {
                if (this.f48147m.k()) {
                    this.f48147m.f();
                    this.f48147m = null;
                    this.f48146l = substitutionFormatString.formatters_;
                    this.f48141g &= -2;
                    this.f48147m = GeneratedMessageV3.alwaysUseFieldBuilders ? d0() : null;
                } else {
                    this.f48147m.b(substitutionFormatString.formatters_);
                }
            }
            int i9 = b.f48138a[substitutionFormatString.getFormatCase().ordinal()];
            if (i9 == 1) {
                this.f48139e = 1;
                this.f48140f = substitutionFormatString.format_;
                R();
            } else if (i9 == 2) {
                j0(substitutionFormatString.getJsonFormat());
            } else if (i9 == 3) {
                k0(substitutionFormatString.getTextFormatSource());
            }
            z(((GeneratedMessageV3) substitutionFormatString).unknownFields);
            R();
            return this;
        }

        public c j0(Struct struct) {
            q2<Struct, Struct.b, u2> q2Var = this.f48142h;
            if (q2Var == null) {
                if (this.f48139e == 2 && this.f48140f != Struct.getDefaultInstance()) {
                    this.f48140f = Struct.newBuilder((Struct) this.f48140f).i0(struct).I();
                } else {
                    this.f48140f = struct;
                }
                R();
            } else {
                if (this.f48139e == 2) {
                    q2Var.e(struct);
                }
                this.f48142h.g(struct);
            }
            this.f48139e = 2;
            return this;
        }

        public c k0(DataSource dataSource) {
            q2<DataSource, DataSource.c, n> q2Var = this.f48143i;
            if (q2Var == null) {
                if (this.f48139e == 5 && this.f48140f != DataSource.getDefaultInstance()) {
                    this.f48140f = DataSource.newBuilder((DataSource) this.f48140f).g0(dataSource).I();
                } else {
                    this.f48140f = dataSource;
                }
                R();
            } else {
                if (this.f48139e == 5) {
                    q2Var.e(dataSource);
                }
                this.f48143i.g(dataSource);
            }
            this.f48139e = 5;
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
        /* renamed from: l0 */
        public final c z(h3 h3Var) {
            return (c) super.z(h3Var);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: m0 */
        public c c(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (c) super.c(fieldDescriptor, obj);
        }

        public c n0(boolean z10) {
            this.f48144j = z10;
            R();
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: o0 */
        public final c f1(h3 h3Var) {
            return (c) super.f1(h3Var);
        }

        /* synthetic */ c(a aVar) {
            this();
        }

        private c() {
            this.f48139e = 0;
            this.f48145k = "";
            this.f48146l = Collections.emptyList();
            e0();
        }

        private c(GeneratedMessageV3.c cVar) {
            super(cVar);
            this.f48139e = 0;
            this.f48145k = "";
            this.f48146l = Collections.emptyList();
            e0();
        }
    }

    /* synthetic */ SubstitutionFormatString(com.google.protobuf.p pVar, com.google.protobuf.f0 f0Var, a aVar) throws InvalidProtocolBufferException {
        this(pVar, f0Var);
    }

    public static SubstitutionFormatString getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static final Descriptors.b getDescriptor() {
        return f1.f48207a;
    }

    public static c newBuilder() {
        return DEFAULT_INSTANCE.toBuilder();
    }

    public static SubstitutionFormatString parseDelimitedFrom(InputStream inputStream) throws IOException {
        return (SubstitutionFormatString) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
    }

    public static SubstitutionFormatString parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
        return PARSER.l(byteBuffer);
    }

    public static e2<SubstitutionFormatString> parser() {
        return PARSER;
    }

    @Override // com.google.protobuf.a
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof SubstitutionFormatString)) {
            return super.equals(obj);
        }
        SubstitutionFormatString substitutionFormatString = (SubstitutionFormatString) obj;
        if (getOmitEmptyValues() == substitutionFormatString.getOmitEmptyValues() && getContentType().equals(substitutionFormatString.getContentType()) && getFormattersList().equals(substitutionFormatString.getFormattersList()) && getFormatCase().equals(substitutionFormatString.getFormatCase())) {
            int i9 = this.formatCase_;
            if (i9 != 1) {
                if (i9 != 2) {
                    if (i9 == 5 && !getTextFormatSource().equals(substitutionFormatString.getTextFormatSource())) {
                        return false;
                    }
                } else if (!getJsonFormat().equals(substitutionFormatString.getJsonFormat())) {
                    return false;
                }
            } else if (!getTextFormat().equals(substitutionFormatString.getTextFormat())) {
                return false;
            }
            return this.unknownFields.equals(substitutionFormatString.unknownFields);
        }
        return false;
    }

    public String getContentType() {
        Object obj = this.contentType_;
        if (obj instanceof String) {
            return (String) obj;
        }
        String stringUtf8 = ((ByteString) obj).toStringUtf8();
        this.contentType_ = stringUtf8;
        return stringUtf8;
    }

    public ByteString getContentTypeBytes() {
        Object obj = this.contentType_;
        if (obj instanceof String) {
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.contentType_ = copyFromUtf8;
            return copyFromUtf8;
        }
        return (ByteString) obj;
    }

    public FormatCase getFormatCase() {
        return FormatCase.forNumber(this.formatCase_);
    }

    public TypedExtensionConfig getFormatters(int i9) {
        return this.formatters_.get(i9);
    }

    public int getFormattersCount() {
        return this.formatters_.size();
    }

    public List<TypedExtensionConfig> getFormattersList() {
        return this.formatters_;
    }

    public i1 getFormattersOrBuilder(int i9) {
        return this.formatters_.get(i9);
    }

    public List<? extends i1> getFormattersOrBuilderList() {
        return this.formatters_;
    }

    public Struct getJsonFormat() {
        if (this.formatCase_ == 2) {
            return (Struct) this.format_;
        }
        return Struct.getDefaultInstance();
    }

    public u2 getJsonFormatOrBuilder() {
        if (this.formatCase_ == 2) {
            return (Struct) this.format_;
        }
        return Struct.getDefaultInstance();
    }

    public boolean getOmitEmptyValues() {
        return this.omitEmptyValues_;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public e2<SubstitutionFormatString> getParserForType() {
        return PARSER;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public int getSerializedSize() {
        int i9 = this.memoizedSize;
        if (i9 != -1) {
            return i9;
        }
        int computeStringSize = this.formatCase_ == 1 ? GeneratedMessageV3.computeStringSize(1, this.format_) + 0 : 0;
        if (this.formatCase_ == 2) {
            computeStringSize += CodedOutputStream.G(2, (Struct) this.format_);
        }
        boolean z10 = this.omitEmptyValues_;
        if (z10) {
            computeStringSize += CodedOutputStream.e(3, z10);
        }
        if (!GeneratedMessageV3.isStringEmpty(this.contentType_)) {
            computeStringSize += GeneratedMessageV3.computeStringSize(4, this.contentType_);
        }
        if (this.formatCase_ == 5) {
            computeStringSize += CodedOutputStream.G(5, (DataSource) this.format_);
        }
        for (int i10 = 0; i10 < this.formatters_.size(); i10++) {
            computeStringSize += CodedOutputStream.G(6, this.formatters_.get(i10));
        }
        int serializedSize = computeStringSize + this.unknownFields.getSerializedSize();
        this.memoizedSize = serializedSize;
        return serializedSize;
    }

    @Deprecated
    public String getTextFormat() {
        String str = this.formatCase_ == 1 ? this.format_ : "";
        if (str instanceof String) {
            return (String) str;
        }
        String stringUtf8 = ((ByteString) str).toStringUtf8();
        if (this.formatCase_ == 1) {
            this.format_ = stringUtf8;
        }
        return stringUtf8;
    }

    @Deprecated
    public ByteString getTextFormatBytes() {
        String str = this.formatCase_ == 1 ? this.format_ : "";
        if (str instanceof String) {
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) str);
            if (this.formatCase_ == 1) {
                this.format_ = copyFromUtf8;
            }
            return copyFromUtf8;
        }
        return (ByteString) str;
    }

    public DataSource getTextFormatSource() {
        if (this.formatCase_ == 5) {
            return (DataSource) this.format_;
        }
        return DataSource.getDefaultInstance();
    }

    public n getTextFormatSourceOrBuilder() {
        if (this.formatCase_ == 5) {
            return (DataSource) this.format_;
        }
        return DataSource.getDefaultInstance();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.r1
    public final h3 getUnknownFields() {
        return this.unknownFields;
    }

    public boolean hasJsonFormat() {
        return this.formatCase_ == 2;
    }

    @Deprecated
    public boolean hasTextFormat() {
        return this.formatCase_ == 1;
    }

    public boolean hasTextFormatSource() {
        return this.formatCase_ == 5;
    }

    @Override // com.google.protobuf.a
    public int hashCode() {
        int i9;
        int hashCode;
        int i10 = this.memoizedHashCode;
        if (i10 != 0) {
            return i10;
        }
        int hashCode2 = ((((((((779 + getDescriptor().hashCode()) * 37) + 3) * 53) + com.google.protobuf.u0.d(getOmitEmptyValues())) * 37) + 4) * 53) + getContentType().hashCode();
        if (getFormattersCount() > 0) {
            hashCode2 = (((hashCode2 * 37) + 6) * 53) + getFormattersList().hashCode();
        }
        int i11 = this.formatCase_;
        if (i11 == 1) {
            i9 = ((hashCode2 * 37) + 1) * 53;
            hashCode = getTextFormat().hashCode();
        } else if (i11 == 2) {
            i9 = ((hashCode2 * 37) + 2) * 53;
            hashCode = getJsonFormat().hashCode();
        } else {
            if (i11 == 5) {
                i9 = ((hashCode2 * 37) + 5) * 53;
                hashCode = getTextFormatSource().hashCode();
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
        return f1.f48208b.d(SubstitutionFormatString.class, c.class);
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
        return new SubstitutionFormatString();
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
        if (this.formatCase_ == 1) {
            GeneratedMessageV3.writeString(codedOutputStream, 1, this.format_);
        }
        if (this.formatCase_ == 2) {
            codedOutputStream.L0(2, (Struct) this.format_);
        }
        boolean z10 = this.omitEmptyValues_;
        if (z10) {
            codedOutputStream.n0(3, z10);
        }
        if (!GeneratedMessageV3.isStringEmpty(this.contentType_)) {
            GeneratedMessageV3.writeString(codedOutputStream, 4, this.contentType_);
        }
        if (this.formatCase_ == 5) {
            codedOutputStream.L0(5, (DataSource) this.format_);
        }
        for (int i9 = 0; i9 < this.formatters_.size(); i9++) {
            codedOutputStream.L0(6, this.formatters_.get(i9));
        }
        this.unknownFields.writeTo(codedOutputStream);
    }

    /* synthetic */ SubstitutionFormatString(GeneratedMessageV3.b bVar, a aVar) {
        this(bVar);
    }

    public static c newBuilder(SubstitutionFormatString substitutionFormatString) {
        return DEFAULT_INSTANCE.toBuilder().i0(substitutionFormatString);
    }

    public static SubstitutionFormatString parseFrom(ByteBuffer byteBuffer, com.google.protobuf.f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.f(byteBuffer, f0Var);
    }

    private SubstitutionFormatString(GeneratedMessageV3.b<?> bVar) {
        super(bVar);
        this.formatCase_ = 0;
        this.memoizedIsInitialized = (byte) -1;
    }

    public static SubstitutionFormatString parseDelimitedFrom(InputStream inputStream, com.google.protobuf.f0 f0Var) throws IOException {
        return (SubstitutionFormatString) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
    }

    public static SubstitutionFormatString parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
        return PARSER.c(byteString);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.p1, com.google.protobuf.r1
    public SubstitutionFormatString getDefaultInstanceForType() {
        return DEFAULT_INSTANCE;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public c toBuilder() {
        return this == DEFAULT_INSTANCE ? new c((a) null) : new c((a) null).i0(this);
    }

    public static SubstitutionFormatString parseFrom(ByteString byteString, com.google.protobuf.f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.b(byteString, f0Var);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public c newBuilderForType() {
        return newBuilder();
    }

    public static SubstitutionFormatString parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
        return PARSER.a(bArr);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.protobuf.GeneratedMessageV3
    public c newBuilderForType(GeneratedMessageV3.c cVar) {
        return new c(cVar, null);
    }

    private SubstitutionFormatString() {
        this.formatCase_ = 0;
        this.memoizedIsInitialized = (byte) -1;
        this.contentType_ = "";
        this.formatters_ = Collections.emptyList();
    }

    public static SubstitutionFormatString parseFrom(byte[] bArr, com.google.protobuf.f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.g(bArr, f0Var);
    }

    public static SubstitutionFormatString parseFrom(InputStream inputStream) throws IOException {
        return (SubstitutionFormatString) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
    }

    public static SubstitutionFormatString parseFrom(InputStream inputStream, com.google.protobuf.f0 f0Var) throws IOException {
        return (SubstitutionFormatString) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
    }

    private SubstitutionFormatString(com.google.protobuf.p pVar, com.google.protobuf.f0 f0Var) throws InvalidProtocolBufferException {
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
                            if (L == 18) {
                                Struct.b builder = this.formatCase_ == 2 ? ((Struct) this.format_).toBuilder() : null;
                                o1 B = pVar.B(Struct.parser(), f0Var);
                                this.format_ = B;
                                if (builder != null) {
                                    builder.i0((Struct) B);
                                    this.format_ = builder.I();
                                }
                                this.formatCase_ = 2;
                            } else if (L == 24) {
                                this.omitEmptyValues_ = pVar.r();
                            } else if (L == 34) {
                                this.contentType_ = pVar.K();
                            } else if (L == 42) {
                                DataSource.c builder2 = this.formatCase_ == 5 ? ((DataSource) this.format_).toBuilder() : null;
                                o1 B2 = pVar.B(DataSource.parser(), f0Var);
                                this.format_ = B2;
                                if (builder2 != null) {
                                    builder2.g0((DataSource) B2);
                                    this.format_ = builder2.I();
                                }
                                this.formatCase_ = 5;
                            } else if (L != 50) {
                                if (!parseUnknownField(pVar, h10, f0Var, L)) {
                                }
                            } else {
                                if (!(z11 & true)) {
                                    this.formatters_ = new ArrayList();
                                    z11 |= true;
                                }
                                this.formatters_.add((TypedExtensionConfig) pVar.B(TypedExtensionConfig.parser(), f0Var));
                            }
                        } else {
                            String K = pVar.K();
                            this.formatCase_ = 1;
                            this.format_ = K;
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
                    this.formatters_ = Collections.unmodifiableList(this.formatters_);
                }
                this.unknownFields = h10.build();
                makeExtensionsImmutable();
            }
        }
    }

    public static SubstitutionFormatString parseFrom(com.google.protobuf.p pVar) throws IOException {
        return (SubstitutionFormatString) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
    }

    public static SubstitutionFormatString parseFrom(com.google.protobuf.p pVar, com.google.protobuf.f0 f0Var) throws IOException {
        return (SubstitutionFormatString) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
    }
}
