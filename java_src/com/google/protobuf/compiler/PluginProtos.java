package com.google.protobuf.compiler;

import com.google.protobuf.ByteString;
import com.google.protobuf.CodedOutputStream;
import com.google.protobuf.DescriptorProtos;
import com.google.protobuf.Descriptors;
import com.google.protobuf.GeneratedMessageV3;
import com.google.protobuf.InvalidProtocolBufferException;
import com.google.protobuf.a;
import com.google.protobuf.c;
import com.google.protobuf.e2;
import com.google.protobuf.f0;
import com.google.protobuf.h2;
import com.google.protobuf.h3;
import com.google.protobuf.i2;
import com.google.protobuf.l1;
import com.google.protobuf.l2;
import com.google.protobuf.p;
import com.google.protobuf.q2;
import com.google.protobuf.r1;
import com.google.protobuf.u0;
import com.google.protobuf.y0;
import com.google.protobuf.z0;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Objects;
/* loaded from: classes3.dex */
public final class PluginProtos {

    /* renamed from: a  reason: collision with root package name */
    private static final Descriptors.b f14881a;

    /* renamed from: b  reason: collision with root package name */
    private static final GeneratedMessageV3.e f14882b;

    /* renamed from: c  reason: collision with root package name */
    private static final Descriptors.b f14883c;

    /* renamed from: d  reason: collision with root package name */
    private static final GeneratedMessageV3.e f14884d;

    /* renamed from: e  reason: collision with root package name */
    private static final Descriptors.b f14885e;

    /* renamed from: f  reason: collision with root package name */
    private static final GeneratedMessageV3.e f14886f;

    /* renamed from: g  reason: collision with root package name */
    private static final Descriptors.b f14887g;

    /* renamed from: h  reason: collision with root package name */
    private static final GeneratedMessageV3.e f14888h;

    /* renamed from: i  reason: collision with root package name */
    private static Descriptors.FileDescriptor f14889i = Descriptors.FileDescriptor.s(new String[]{"\n%google/protobuf/compiler/plugin.proto\u0012\u0018google.protobuf.compiler\u001a google/protobuf/descriptor.proto\"F\n\u0007Version\u0012\r\n\u0005major\u0018\u0001 \u0001(\u0005\u0012\r\n\u0005minor\u0018\u0002 \u0001(\u0005\u0012\r\n\u0005patch\u0018\u0003 \u0001(\u0005\u0012\u000e\n\u0006suffix\u0018\u0004 \u0001(\t\"º\u0001\n\u0014CodeGeneratorRequest\u0012\u0018\n\u0010file_to_generate\u0018\u0001 \u0003(\t\u0012\u0011\n\tparameter\u0018\u0002 \u0001(\t\u00128\n\nproto_file\u0018\u000f \u0003(\u000b2$.google.protobuf.FileDescriptorProto\u0012;\n\u0010compiler_version\u0018\u0003 \u0001(\u000b2!.google.protobuf.compiler.Version\"Á\u0002\n\u0015CodeGeneratorResponse\u0012\r\n\u0005error\u0018\u0001 \u0001(\t\u0012\u001a\n\u0012supported_features\u0018\u0002 \u0001(\u0004\u0012B\n\u0004file\u0018\u000f \u0003(\u000b24.google.protobuf.compiler.CodeGeneratorResponse.File\u001a\u007f\n\u0004File\u0012\f\n\u0004name\u0018\u0001 \u0001(\t\u0012\u0017\n\u000finsertion_point\u0018\u0002 \u0001(\t\u0012\u000f\n\u0007content\u0018\u000f \u0001(\t\u0012?\n\u0013generated_code_info\u0018\u0010 \u0001(\u000b2\".google.protobuf.GeneratedCodeInfo\"8\n\u0007Feature\u0012\u0010\n\fFEATURE_NONE\u0010\u0000\u0012\u001b\n\u0017FEATURE_PROTO3_OPTIONAL\u0010\u0001BW\n\u001ccom.google.protobuf.compilerB\fPluginProtosZ)google.golang.org/protobuf/types/pluginpb"}, new Descriptors.FileDescriptor[]{DescriptorProtos.c0()});

    /* loaded from: classes3.dex */
    public static final class CodeGeneratorRequest extends GeneratedMessageV3 implements r1 {
        public static final int COMPILER_VERSION_FIELD_NUMBER = 3;
        public static final int FILE_TO_GENERATE_FIELD_NUMBER = 1;
        public static final int PARAMETER_FIELD_NUMBER = 2;
        public static final int PROTO_FILE_FIELD_NUMBER = 15;
        private static final long serialVersionUID = 0;
        private int bitField0_;
        private Version compilerVersion_;
        private z0 fileToGenerate_;
        private byte memoizedIsInitialized;
        private volatile Object parameter_;
        private List<DescriptorProtos.FileDescriptorProto> protoFile_;
        private static final CodeGeneratorRequest DEFAULT_INSTANCE = new CodeGeneratorRequest();
        @Deprecated
        public static final e2<CodeGeneratorRequest> PARSER = new a();

        /* loaded from: classes3.dex */
        static class a extends c<CodeGeneratorRequest> {
            a() {
            }

            @Override // com.google.protobuf.e2
            /* renamed from: G */
            public CodeGeneratorRequest m(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
                return new CodeGeneratorRequest(pVar, f0Var);
            }
        }

        public static CodeGeneratorRequest getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static final Descriptors.b getDescriptor() {
            return PluginProtos.f14883c;
        }

        public static b newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static CodeGeneratorRequest parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (CodeGeneratorRequest) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static CodeGeneratorRequest parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.l(byteBuffer);
        }

        public static e2<CodeGeneratorRequest> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.a
        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof CodeGeneratorRequest)) {
                return super.equals(obj);
            }
            CodeGeneratorRequest codeGeneratorRequest = (CodeGeneratorRequest) obj;
            if (m220getFileToGenerateList().equals(codeGeneratorRequest.m220getFileToGenerateList()) && hasParameter() == codeGeneratorRequest.hasParameter()) {
                if ((!hasParameter() || getParameter().equals(codeGeneratorRequest.getParameter())) && getProtoFileList().equals(codeGeneratorRequest.getProtoFileList()) && hasCompilerVersion() == codeGeneratorRequest.hasCompilerVersion()) {
                    return (!hasCompilerVersion() || getCompilerVersion().equals(codeGeneratorRequest.getCompilerVersion())) && this.unknownFields.equals(codeGeneratorRequest.unknownFields);
                }
                return false;
            }
            return false;
        }

        public Version getCompilerVersion() {
            Version version = this.compilerVersion_;
            return version == null ? Version.getDefaultInstance() : version;
        }

        public b getCompilerVersionOrBuilder() {
            Version version = this.compilerVersion_;
            return version == null ? Version.getDefaultInstance() : version;
        }

        public String getFileToGenerate(int i9) {
            return this.fileToGenerate_.get(i9);
        }

        public ByteString getFileToGenerateBytes(int i9) {
            return this.fileToGenerate_.j0(i9);
        }

        public int getFileToGenerateCount() {
            return this.fileToGenerate_.size();
        }

        public String getParameter() {
            Object obj = this.parameter_;
            if (obj instanceof String) {
                return (String) obj;
            }
            ByteString byteString = (ByteString) obj;
            String stringUtf8 = byteString.toStringUtf8();
            if (byteString.isValidUtf8()) {
                this.parameter_ = stringUtf8;
            }
            return stringUtf8;
        }

        public ByteString getParameterBytes() {
            Object obj = this.parameter_;
            if (obj instanceof String) {
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.parameter_ = copyFromUtf8;
                return copyFromUtf8;
            }
            return (ByteString) obj;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
        public e2<CodeGeneratorRequest> getParserForType() {
            return PARSER;
        }

        public DescriptorProtos.FileDescriptorProto getProtoFile(int i9) {
            return this.protoFile_.get(i9);
        }

        public int getProtoFileCount() {
            return this.protoFile_.size();
        }

        public List<DescriptorProtos.FileDescriptorProto> getProtoFileList() {
            return this.protoFile_;
        }

        public DescriptorProtos.j getProtoFileOrBuilder(int i9) {
            return this.protoFile_.get(i9);
        }

        public List<? extends DescriptorProtos.j> getProtoFileOrBuilderList() {
            return this.protoFile_;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
        public int getSerializedSize() {
            int i9 = this.memoizedSize;
            if (i9 != -1) {
                return i9;
            }
            int i10 = 0;
            for (int i11 = 0; i11 < this.fileToGenerate_.size(); i11++) {
                i10 += GeneratedMessageV3.computeStringSizeNoTag(this.fileToGenerate_.c1(i11));
            }
            int size = i10 + 0 + (m220getFileToGenerateList().size() * 1);
            if ((this.bitField0_ & 1) != 0) {
                size += GeneratedMessageV3.computeStringSize(2, this.parameter_);
            }
            if ((this.bitField0_ & 2) != 0) {
                size += CodedOutputStream.G(3, getCompilerVersion());
            }
            for (int i12 = 0; i12 < this.protoFile_.size(); i12++) {
                size += CodedOutputStream.G(15, this.protoFile_.get(i12));
            }
            int serializedSize = size + this.unknownFields.getSerializedSize();
            this.memoizedSize = serializedSize;
            return serializedSize;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.r1
        public final h3 getUnknownFields() {
            return this.unknownFields;
        }

        public boolean hasCompilerVersion() {
            return (this.bitField0_ & 2) != 0;
        }

        public boolean hasParameter() {
            return (this.bitField0_ & 1) != 0;
        }

        @Override // com.google.protobuf.a
        public int hashCode() {
            int i9 = this.memoizedHashCode;
            if (i9 != 0) {
                return i9;
            }
            int hashCode = 779 + getDescriptor().hashCode();
            if (getFileToGenerateCount() > 0) {
                hashCode = (((hashCode * 37) + 1) * 53) + m220getFileToGenerateList().hashCode();
            }
            if (hasParameter()) {
                hashCode = (((hashCode * 37) + 2) * 53) + getParameter().hashCode();
            }
            if (getProtoFileCount() > 0) {
                hashCode = (((hashCode * 37) + 15) * 53) + getProtoFileList().hashCode();
            }
            if (hasCompilerVersion()) {
                hashCode = (((hashCode * 37) + 3) * 53) + getCompilerVersion().hashCode();
            }
            int hashCode2 = (hashCode * 29) + this.unknownFields.hashCode();
            this.memoizedHashCode = hashCode2;
            return hashCode2;
        }

        @Override // com.google.protobuf.GeneratedMessageV3
        protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
            return PluginProtos.f14884d.d(CodeGeneratorRequest.class, b.class);
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
            for (int i9 = 0; i9 < getProtoFileCount(); i9++) {
                if (!getProtoFile(i9).isInitialized()) {
                    this.memoizedIsInitialized = (byte) 0;
                    return false;
                }
            }
            this.memoizedIsInitialized = (byte) 1;
            return true;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.protobuf.GeneratedMessageV3
        public Object newInstance(GeneratedMessageV3.f fVar) {
            return new CodeGeneratorRequest();
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
        public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
            for (int i9 = 0; i9 < this.fileToGenerate_.size(); i9++) {
                GeneratedMessageV3.writeString(codedOutputStream, 1, this.fileToGenerate_.c1(i9));
            }
            if ((this.bitField0_ & 1) != 0) {
                GeneratedMessageV3.writeString(codedOutputStream, 2, this.parameter_);
            }
            if ((this.bitField0_ & 2) != 0) {
                codedOutputStream.L0(3, getCompilerVersion());
            }
            for (int i10 = 0; i10 < this.protoFile_.size(); i10++) {
                codedOutputStream.L0(15, this.protoFile_.get(i10));
            }
            this.unknownFields.writeTo(codedOutputStream);
        }

        /* loaded from: classes3.dex */
        public static final class b extends GeneratedMessageV3.b<b> implements r1 {

            /* renamed from: e  reason: collision with root package name */
            private int f14890e;

            /* renamed from: f  reason: collision with root package name */
            private z0 f14891f;

            /* renamed from: g  reason: collision with root package name */
            private Object f14892g;

            /* renamed from: h  reason: collision with root package name */
            private List<DescriptorProtos.FileDescriptorProto> f14893h;

            /* renamed from: i  reason: collision with root package name */
            private l2<DescriptorProtos.FileDescriptorProto, DescriptorProtos.FileDescriptorProto.b, DescriptorProtos.j> f14894i;

            /* renamed from: j  reason: collision with root package name */
            private Version f14895j;

            /* renamed from: k  reason: collision with root package name */
            private q2<Version, Version.b, b> f14896k;

            private void a0() {
                if ((this.f14890e & 1) == 0) {
                    this.f14891f = new y0(this.f14891f);
                    this.f14890e |= 1;
                }
            }

            private void b0() {
                if ((this.f14890e & 4) == 0) {
                    this.f14893h = new ArrayList(this.f14893h);
                    this.f14890e |= 4;
                }
            }

            private q2<Version, Version.b, b> e0() {
                if (this.f14896k == null) {
                    this.f14896k = new q2<>(d0(), H(), O());
                    this.f14895j = null;
                }
                return this.f14896k;
            }

            private l2<DescriptorProtos.FileDescriptorProto, DescriptorProtos.FileDescriptorProto.b, DescriptorProtos.j> h0() {
                if (this.f14894i == null) {
                    this.f14894i = new l2<>(this.f14893h, (this.f14890e & 4) != 0, H(), O());
                    this.f14893h = null;
                }
                return this.f14894i;
            }

            private void i0() {
                if (GeneratedMessageV3.alwaysUseFieldBuilders) {
                    h0();
                    e0();
                }
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b
            protected GeneratedMessageV3.e K() {
                return PluginProtos.f14884d.d(CodeGeneratorRequest.class, b.class);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
            /* renamed from: W */
            public b L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                return (b) super.L(fieldDescriptor, obj);
            }

            @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
            /* renamed from: X */
            public CodeGeneratorRequest build() {
                CodeGeneratorRequest I = I();
                if (I.isInitialized()) {
                    return I;
                }
                throw a.AbstractC0142a.A(I);
            }

            @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
            /* renamed from: Y */
            public CodeGeneratorRequest I() {
                CodeGeneratorRequest codeGeneratorRequest = new CodeGeneratorRequest(this);
                int i9 = this.f14890e;
                if ((i9 & 1) != 0) {
                    this.f14891f = this.f14891f.V0();
                    this.f14890e &= -2;
                }
                codeGeneratorRequest.fileToGenerate_ = this.f14891f;
                int i10 = (i9 & 2) != 0 ? 1 : 0;
                codeGeneratorRequest.parameter_ = this.f14892g;
                l2<DescriptorProtos.FileDescriptorProto, DescriptorProtos.FileDescriptorProto.b, DescriptorProtos.j> l2Var = this.f14894i;
                if (l2Var == null) {
                    if ((this.f14890e & 4) != 0) {
                        this.f14893h = Collections.unmodifiableList(this.f14893h);
                        this.f14890e &= -5;
                    }
                    codeGeneratorRequest.protoFile_ = this.f14893h;
                } else {
                    codeGeneratorRequest.protoFile_ = l2Var.e();
                }
                if ((i9 & 8) != 0) {
                    q2<Version, Version.b, b> q2Var = this.f14896k;
                    if (q2Var == null) {
                        codeGeneratorRequest.compilerVersion_ = this.f14895j;
                    } else {
                        codeGeneratorRequest.compilerVersion_ = q2Var.b();
                    }
                    i10 |= 2;
                }
                codeGeneratorRequest.bitField0_ = i10;
                Q();
                return codeGeneratorRequest;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
            /* renamed from: Z */
            public b n() {
                return (b) super.n();
            }

            public Version d0() {
                q2<Version, Version.b, b> q2Var = this.f14896k;
                if (q2Var == null) {
                    Version version = this.f14895j;
                    return version == null ? Version.getDefaultInstance() : version;
                }
                return q2Var.d();
            }

            @Override // com.google.protobuf.p1, com.google.protobuf.r1
            /* renamed from: g0 */
            public CodeGeneratorRequest getDefaultInstanceForType() {
                return CodeGeneratorRequest.getDefaultInstance();
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
            public Descriptors.b getDescriptorForType() {
                return PluginProtos.f14883c;
            }

            public b j0(Version version) {
                Version version2;
                q2<Version, Version.b, b> q2Var = this.f14896k;
                if (q2Var == null) {
                    if ((this.f14890e & 8) != 0 && (version2 = this.f14895j) != null && version2 != Version.getDefaultInstance()) {
                        this.f14895j = Version.newBuilder(this.f14895j).g0(version).I();
                    } else {
                        this.f14895j = version;
                    }
                    R();
                } else {
                    q2Var.e(version);
                }
                this.f14890e |= 8;
                return this;
            }

            /* JADX WARN: Removed duplicated region for block: B:16:0x0021  */
            @Override // com.google.protobuf.a.AbstractC0142a
            /* renamed from: k0 */
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public com.google.protobuf.compiler.PluginProtos.CodeGeneratorRequest.b u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
                /*
                    r2 = this;
                    r0 = 0
                    com.google.protobuf.e2<com.google.protobuf.compiler.PluginProtos$CodeGeneratorRequest> r1 = com.google.protobuf.compiler.PluginProtos.CodeGeneratorRequest.PARSER     // Catch: java.lang.Throwable -> Lf com.google.protobuf.InvalidProtocolBufferException -> L11
                    java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> Lf com.google.protobuf.InvalidProtocolBufferException -> L11
                    com.google.protobuf.compiler.PluginProtos$CodeGeneratorRequest r3 = (com.google.protobuf.compiler.PluginProtos.CodeGeneratorRequest) r3     // Catch: java.lang.Throwable -> Lf com.google.protobuf.InvalidProtocolBufferException -> L11
                    if (r3 == 0) goto Le
                    r2.m0(r3)
                Le:
                    return r2
                Lf:
                    r3 = move-exception
                    goto L1f
                L11:
                    r3 = move-exception
                    com.google.protobuf.o1 r4 = r3.getUnfinishedMessage()     // Catch: java.lang.Throwable -> Lf
                    com.google.protobuf.compiler.PluginProtos$CodeGeneratorRequest r4 = (com.google.protobuf.compiler.PluginProtos.CodeGeneratorRequest) r4     // Catch: java.lang.Throwable -> Lf
                    java.io.IOException r3 = r3.unwrapIOException()     // Catch: java.lang.Throwable -> L1d
                    throw r3     // Catch: java.lang.Throwable -> L1d
                L1d:
                    r3 = move-exception
                    r0 = r4
                L1f:
                    if (r0 == 0) goto L24
                    r2.m0(r0)
                L24:
                    throw r3
                */
                throw new UnsupportedOperationException("Method not decompiled: com.google.protobuf.compiler.PluginProtos.CodeGeneratorRequest.b.u(com.google.protobuf.p, com.google.protobuf.f0):com.google.protobuf.compiler.PluginProtos$CodeGeneratorRequest$b");
            }

            @Override // com.google.protobuf.a.AbstractC0142a
            /* renamed from: l0 */
            public b v(l1 l1Var) {
                if (l1Var instanceof CodeGeneratorRequest) {
                    return m0((CodeGeneratorRequest) l1Var);
                }
                super.P0(l1Var);
                return this;
            }

            public b m0(CodeGeneratorRequest codeGeneratorRequest) {
                if (codeGeneratorRequest == CodeGeneratorRequest.getDefaultInstance()) {
                    return this;
                }
                if (!codeGeneratorRequest.fileToGenerate_.isEmpty()) {
                    if (this.f14891f.isEmpty()) {
                        this.f14891f = codeGeneratorRequest.fileToGenerate_;
                        this.f14890e &= -2;
                    } else {
                        a0();
                        this.f14891f.addAll(codeGeneratorRequest.fileToGenerate_);
                    }
                    R();
                }
                if (codeGeneratorRequest.hasParameter()) {
                    this.f14890e |= 2;
                    this.f14892g = codeGeneratorRequest.parameter_;
                    R();
                }
                if (this.f14894i == null) {
                    if (!codeGeneratorRequest.protoFile_.isEmpty()) {
                        if (this.f14893h.isEmpty()) {
                            this.f14893h = codeGeneratorRequest.protoFile_;
                            this.f14890e &= -5;
                        } else {
                            b0();
                            this.f14893h.addAll(codeGeneratorRequest.protoFile_);
                        }
                        R();
                    }
                } else if (!codeGeneratorRequest.protoFile_.isEmpty()) {
                    if (this.f14894i.k()) {
                        this.f14894i.f();
                        this.f14894i = null;
                        this.f14893h = codeGeneratorRequest.protoFile_;
                        this.f14890e &= -5;
                        this.f14894i = GeneratedMessageV3.alwaysUseFieldBuilders ? h0() : null;
                    } else {
                        this.f14894i.b(codeGeneratorRequest.protoFile_);
                    }
                }
                if (codeGeneratorRequest.hasCompilerVersion()) {
                    j0(codeGeneratorRequest.getCompilerVersion());
                }
                z(((GeneratedMessageV3) codeGeneratorRequest).unknownFields);
                R();
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
            /* renamed from: n0 */
            public final b z(h3 h3Var) {
                return (b) super.z(h3Var);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
            /* renamed from: o0 */
            public b c(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                return (b) super.c(fieldDescriptor, obj);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
            /* renamed from: q0 */
            public final b f1(h3 h3Var) {
                return (b) super.f1(h3Var);
            }

            private b() {
                this.f14891f = y0.f15344d;
                this.f14892g = "";
                this.f14893h = Collections.emptyList();
                i0();
            }

            private b(GeneratedMessageV3.c cVar) {
                super(cVar);
                this.f14891f = y0.f15344d;
                this.f14892g = "";
                this.f14893h = Collections.emptyList();
                i0();
            }
        }

        public static b newBuilder(CodeGeneratorRequest codeGeneratorRequest) {
            return DEFAULT_INSTANCE.toBuilder().m0(codeGeneratorRequest);
        }

        public static CodeGeneratorRequest parseFrom(ByteBuffer byteBuffer, f0 f0Var) throws InvalidProtocolBufferException {
            return PARSER.f(byteBuffer, f0Var);
        }

        /* renamed from: getFileToGenerateList */
        public i2 m220getFileToGenerateList() {
            return this.fileToGenerate_;
        }

        private CodeGeneratorRequest(GeneratedMessageV3.b<?> bVar) {
            super(bVar);
            this.memoizedIsInitialized = (byte) -1;
        }

        public static CodeGeneratorRequest parseDelimitedFrom(InputStream inputStream, f0 f0Var) throws IOException {
            return (CodeGeneratorRequest) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
        }

        public static CodeGeneratorRequest parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.c(byteString);
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.p1, com.google.protobuf.r1
        public CodeGeneratorRequest getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
        public b toBuilder() {
            return this == DEFAULT_INSTANCE ? new b() : new b().m0(this);
        }

        public static CodeGeneratorRequest parseFrom(ByteString byteString, f0 f0Var) throws InvalidProtocolBufferException {
            return PARSER.b(byteString, f0Var);
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
        public b newBuilderForType() {
            return newBuilder();
        }

        private CodeGeneratorRequest() {
            this.memoizedIsInitialized = (byte) -1;
            this.fileToGenerate_ = y0.f15344d;
            this.parameter_ = "";
            this.protoFile_ = Collections.emptyList();
        }

        public static CodeGeneratorRequest parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.a(bArr);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.protobuf.GeneratedMessageV3
        public b newBuilderForType(GeneratedMessageV3.c cVar) {
            return new b(cVar);
        }

        public static CodeGeneratorRequest parseFrom(byte[] bArr, f0 f0Var) throws InvalidProtocolBufferException {
            return PARSER.g(bArr, f0Var);
        }

        public static CodeGeneratorRequest parseFrom(InputStream inputStream) throws IOException {
            return (CodeGeneratorRequest) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
        }

        public static CodeGeneratorRequest parseFrom(InputStream inputStream, f0 f0Var) throws IOException {
            return (CodeGeneratorRequest) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
        }

        /* JADX WARN: Multi-variable type inference failed */
        private CodeGeneratorRequest(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
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
                                ByteString s10 = pVar.s();
                                if (!(z11 & true)) {
                                    this.fileToGenerate_ = new y0();
                                    z11 |= true;
                                }
                                this.fileToGenerate_.X(s10);
                            } else if (L == 18) {
                                ByteString s11 = pVar.s();
                                this.bitField0_ = 1 | this.bitField0_;
                                this.parameter_ = s11;
                            } else if (L == 26) {
                                Version.b builder = (this.bitField0_ & 2) != 0 ? this.compilerVersion_.toBuilder() : null;
                                Version version = (Version) pVar.B(Version.PARSER, f0Var);
                                this.compilerVersion_ = version;
                                if (builder != null) {
                                    builder.g0(version);
                                    this.compilerVersion_ = builder.I();
                                }
                                this.bitField0_ |= 2;
                            } else if (L != 122) {
                                if (!parseUnknownField(pVar, h10, f0Var, L)) {
                                }
                            } else {
                                if (!(z11 & true)) {
                                    this.protoFile_ = new ArrayList();
                                    z11 |= true;
                                }
                                this.protoFile_.add(pVar.B(DescriptorProtos.FileDescriptorProto.PARSER, f0Var));
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
                        this.fileToGenerate_ = this.fileToGenerate_.V0();
                    }
                    if (z11 & true) {
                        this.protoFile_ = Collections.unmodifiableList(this.protoFile_);
                    }
                    this.unknownFields = h10.build();
                    makeExtensionsImmutable();
                }
            }
        }

        public static CodeGeneratorRequest parseFrom(p pVar) throws IOException {
            return (CodeGeneratorRequest) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
        }

        public static CodeGeneratorRequest parseFrom(p pVar, f0 f0Var) throws IOException {
            return (CodeGeneratorRequest) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
        }
    }

    /* loaded from: classes3.dex */
    public static final class CodeGeneratorResponse extends GeneratedMessageV3 implements r1 {
        public static final int ERROR_FIELD_NUMBER = 1;
        public static final int FILE_FIELD_NUMBER = 15;
        public static final int SUPPORTED_FEATURES_FIELD_NUMBER = 2;
        private static final long serialVersionUID = 0;
        private int bitField0_;
        private volatile Object error_;
        private List<File> file_;
        private byte memoizedIsInitialized;
        private long supportedFeatures_;
        private static final CodeGeneratorResponse DEFAULT_INSTANCE = new CodeGeneratorResponse();
        @Deprecated
        public static final e2<CodeGeneratorResponse> PARSER = new a();

        /* loaded from: classes3.dex */
        public enum Feature implements h2 {
            FEATURE_NONE(0),
            FEATURE_PROTO3_OPTIONAL(1);
            
            public static final int FEATURE_NONE_VALUE = 0;
            public static final int FEATURE_PROTO3_OPTIONAL_VALUE = 1;
            private final int value;
            private static final u0.d<Feature> internalValueMap = new a();
            private static final Feature[] VALUES = values();

            /* loaded from: classes3.dex */
            static class a implements u0.d<Feature> {
                a() {
                }

                @Override // com.google.protobuf.u0.d
                /* renamed from: b */
                public Feature a(int i9) {
                    return Feature.forNumber(i9);
                }
            }

            Feature(int i9) {
                this.value = i9;
            }

            public static Feature forNumber(int i9) {
                if (i9 != 0) {
                    if (i9 != 1) {
                        return null;
                    }
                    return FEATURE_PROTO3_OPTIONAL;
                }
                return FEATURE_NONE;
            }

            public static final Descriptors.d getDescriptor() {
                return CodeGeneratorResponse.getDescriptor().k().get(0);
            }

            public static u0.d<Feature> internalGetValueMap() {
                return internalValueMap;
            }

            public final Descriptors.d getDescriptorForType() {
                return getDescriptor();
            }

            @Override // com.google.protobuf.u0.c
            public final int getNumber() {
                return this.value;
            }

            public final Descriptors.e getValueDescriptor() {
                return getDescriptor().k().get(ordinal());
            }

            @Deprecated
            public static Feature valueOf(int i9) {
                return forNumber(i9);
            }

            public static Feature valueOf(Descriptors.e eVar) {
                if (eVar.h() == getDescriptor()) {
                    return VALUES[eVar.g()];
                }
                throw new IllegalArgumentException("EnumValueDescriptor is not for this type.");
            }
        }

        /* loaded from: classes3.dex */
        public static final class File extends GeneratedMessageV3 implements c {
            public static final int CONTENT_FIELD_NUMBER = 15;
            public static final int GENERATED_CODE_INFO_FIELD_NUMBER = 16;
            public static final int INSERTION_POINT_FIELD_NUMBER = 2;
            public static final int NAME_FIELD_NUMBER = 1;
            private static final long serialVersionUID = 0;
            private int bitField0_;
            private volatile Object content_;
            private DescriptorProtos.GeneratedCodeInfo generatedCodeInfo_;
            private volatile Object insertionPoint_;
            private byte memoizedIsInitialized;
            private volatile Object name_;
            private static final File DEFAULT_INSTANCE = new File();
            @Deprecated
            public static final e2<File> PARSER = new a();

            /* loaded from: classes3.dex */
            static class a extends com.google.protobuf.c<File> {
                a() {
                }

                @Override // com.google.protobuf.e2
                /* renamed from: G */
                public File m(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
                    return new File(pVar, f0Var);
                }
            }

            public static File getDefaultInstance() {
                return DEFAULT_INSTANCE;
            }

            public static final Descriptors.b getDescriptor() {
                return PluginProtos.f14887g;
            }

            public static b newBuilder() {
                return DEFAULT_INSTANCE.toBuilder();
            }

            public static File parseDelimitedFrom(InputStream inputStream) throws IOException {
                return (File) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
            }

            public static File parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
                return PARSER.l(byteBuffer);
            }

            public static e2<File> parser() {
                return PARSER;
            }

            @Override // com.google.protobuf.a
            public boolean equals(Object obj) {
                if (obj == this) {
                    return true;
                }
                if (!(obj instanceof File)) {
                    return super.equals(obj);
                }
                File file = (File) obj;
                if (hasName() != file.hasName()) {
                    return false;
                }
                if ((!hasName() || getName().equals(file.getName())) && hasInsertionPoint() == file.hasInsertionPoint()) {
                    if ((!hasInsertionPoint() || getInsertionPoint().equals(file.getInsertionPoint())) && hasContent() == file.hasContent()) {
                        if ((!hasContent() || getContent().equals(file.getContent())) && hasGeneratedCodeInfo() == file.hasGeneratedCodeInfo()) {
                            return (!hasGeneratedCodeInfo() || getGeneratedCodeInfo().equals(file.getGeneratedCodeInfo())) && this.unknownFields.equals(file.unknownFields);
                        }
                        return false;
                    }
                    return false;
                }
                return false;
            }

            public String getContent() {
                Object obj = this.content_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                ByteString byteString = (ByteString) obj;
                String stringUtf8 = byteString.toStringUtf8();
                if (byteString.isValidUtf8()) {
                    this.content_ = stringUtf8;
                }
                return stringUtf8;
            }

            public ByteString getContentBytes() {
                Object obj = this.content_;
                if (obj instanceof String) {
                    ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                    this.content_ = copyFromUtf8;
                    return copyFromUtf8;
                }
                return (ByteString) obj;
            }

            public DescriptorProtos.GeneratedCodeInfo getGeneratedCodeInfo() {
                DescriptorProtos.GeneratedCodeInfo generatedCodeInfo = this.generatedCodeInfo_;
                return generatedCodeInfo == null ? DescriptorProtos.GeneratedCodeInfo.getDefaultInstance() : generatedCodeInfo;
            }

            public DescriptorProtos.l getGeneratedCodeInfoOrBuilder() {
                DescriptorProtos.GeneratedCodeInfo generatedCodeInfo = this.generatedCodeInfo_;
                return generatedCodeInfo == null ? DescriptorProtos.GeneratedCodeInfo.getDefaultInstance() : generatedCodeInfo;
            }

            public String getInsertionPoint() {
                Object obj = this.insertionPoint_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                ByteString byteString = (ByteString) obj;
                String stringUtf8 = byteString.toStringUtf8();
                if (byteString.isValidUtf8()) {
                    this.insertionPoint_ = stringUtf8;
                }
                return stringUtf8;
            }

            public ByteString getInsertionPointBytes() {
                Object obj = this.insertionPoint_;
                if (obj instanceof String) {
                    ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                    this.insertionPoint_ = copyFromUtf8;
                    return copyFromUtf8;
                }
                return (ByteString) obj;
            }

            public String getName() {
                Object obj = this.name_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                ByteString byteString = (ByteString) obj;
                String stringUtf8 = byteString.toStringUtf8();
                if (byteString.isValidUtf8()) {
                    this.name_ = stringUtf8;
                }
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
            public e2<File> getParserForType() {
                return PARSER;
            }

            @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
            public int getSerializedSize() {
                int i9 = this.memoizedSize;
                if (i9 != -1) {
                    return i9;
                }
                int computeStringSize = (this.bitField0_ & 1) != 0 ? 0 + GeneratedMessageV3.computeStringSize(1, this.name_) : 0;
                if ((this.bitField0_ & 2) != 0) {
                    computeStringSize += GeneratedMessageV3.computeStringSize(2, this.insertionPoint_);
                }
                if ((this.bitField0_ & 4) != 0) {
                    computeStringSize += GeneratedMessageV3.computeStringSize(15, this.content_);
                }
                if ((this.bitField0_ & 8) != 0) {
                    computeStringSize += CodedOutputStream.G(16, getGeneratedCodeInfo());
                }
                int serializedSize = computeStringSize + this.unknownFields.getSerializedSize();
                this.memoizedSize = serializedSize;
                return serializedSize;
            }

            @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.r1
            public final h3 getUnknownFields() {
                return this.unknownFields;
            }

            public boolean hasContent() {
                return (this.bitField0_ & 4) != 0;
            }

            public boolean hasGeneratedCodeInfo() {
                return (this.bitField0_ & 8) != 0;
            }

            public boolean hasInsertionPoint() {
                return (this.bitField0_ & 2) != 0;
            }

            public boolean hasName() {
                return (this.bitField0_ & 1) != 0;
            }

            @Override // com.google.protobuf.a
            public int hashCode() {
                int i9 = this.memoizedHashCode;
                if (i9 != 0) {
                    return i9;
                }
                int hashCode = 779 + getDescriptor().hashCode();
                if (hasName()) {
                    hashCode = (((hashCode * 37) + 1) * 53) + getName().hashCode();
                }
                if (hasInsertionPoint()) {
                    hashCode = (((hashCode * 37) + 2) * 53) + getInsertionPoint().hashCode();
                }
                if (hasContent()) {
                    hashCode = (((hashCode * 37) + 15) * 53) + getContent().hashCode();
                }
                if (hasGeneratedCodeInfo()) {
                    hashCode = (((hashCode * 37) + 16) * 53) + getGeneratedCodeInfo().hashCode();
                }
                int hashCode2 = (hashCode * 29) + this.unknownFields.hashCode();
                this.memoizedHashCode = hashCode2;
                return hashCode2;
            }

            @Override // com.google.protobuf.GeneratedMessageV3
            protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
                return PluginProtos.f14888h.d(File.class, b.class);
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
                return new File();
            }

            @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
            public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
                if ((this.bitField0_ & 1) != 0) {
                    GeneratedMessageV3.writeString(codedOutputStream, 1, this.name_);
                }
                if ((this.bitField0_ & 2) != 0) {
                    GeneratedMessageV3.writeString(codedOutputStream, 2, this.insertionPoint_);
                }
                if ((this.bitField0_ & 4) != 0) {
                    GeneratedMessageV3.writeString(codedOutputStream, 15, this.content_);
                }
                if ((this.bitField0_ & 8) != 0) {
                    codedOutputStream.L0(16, getGeneratedCodeInfo());
                }
                this.unknownFields.writeTo(codedOutputStream);
            }

            /* loaded from: classes3.dex */
            public static final class b extends GeneratedMessageV3.b<b> implements c {

                /* renamed from: e  reason: collision with root package name */
                private int f14897e;

                /* renamed from: f  reason: collision with root package name */
                private Object f14898f;

                /* renamed from: g  reason: collision with root package name */
                private Object f14899g;

                /* renamed from: h  reason: collision with root package name */
                private Object f14900h;

                /* renamed from: i  reason: collision with root package name */
                private DescriptorProtos.GeneratedCodeInfo f14901i;

                /* renamed from: j  reason: collision with root package name */
                private q2<DescriptorProtos.GeneratedCodeInfo, DescriptorProtos.GeneratedCodeInfo.c, DescriptorProtos.l> f14902j;

                private q2<DescriptorProtos.GeneratedCodeInfo, DescriptorProtos.GeneratedCodeInfo.c, DescriptorProtos.l> d0() {
                    if (this.f14902j == null) {
                        this.f14902j = new q2<>(b0(), H(), O());
                        this.f14901i = null;
                    }
                    return this.f14902j;
                }

                private void e0() {
                    if (GeneratedMessageV3.alwaysUseFieldBuilders) {
                        d0();
                    }
                }

                @Override // com.google.protobuf.GeneratedMessageV3.b
                protected GeneratedMessageV3.e K() {
                    return PluginProtos.f14888h.d(File.class, b.class);
                }

                @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
                /* renamed from: W */
                public b L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                    return (b) super.L(fieldDescriptor, obj);
                }

                @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
                /* renamed from: X */
                public File build() {
                    File I = I();
                    if (I.isInitialized()) {
                        return I;
                    }
                    throw a.AbstractC0142a.A(I);
                }

                @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
                /* renamed from: Y */
                public File I() {
                    File file = new File(this);
                    int i9 = this.f14897e;
                    int i10 = (i9 & 1) != 0 ? 1 : 0;
                    file.name_ = this.f14898f;
                    if ((i9 & 2) != 0) {
                        i10 |= 2;
                    }
                    file.insertionPoint_ = this.f14899g;
                    if ((i9 & 4) != 0) {
                        i10 |= 4;
                    }
                    file.content_ = this.f14900h;
                    if ((i9 & 8) != 0) {
                        q2<DescriptorProtos.GeneratedCodeInfo, DescriptorProtos.GeneratedCodeInfo.c, DescriptorProtos.l> q2Var = this.f14902j;
                        if (q2Var == null) {
                            file.generatedCodeInfo_ = this.f14901i;
                        } else {
                            file.generatedCodeInfo_ = q2Var.b();
                        }
                        i10 |= 8;
                    }
                    file.bitField0_ = i10;
                    Q();
                    return file;
                }

                @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
                /* renamed from: Z */
                public b n() {
                    return (b) super.n();
                }

                @Override // com.google.protobuf.p1, com.google.protobuf.r1
                /* renamed from: a0 */
                public File getDefaultInstanceForType() {
                    return File.getDefaultInstance();
                }

                public DescriptorProtos.GeneratedCodeInfo b0() {
                    q2<DescriptorProtos.GeneratedCodeInfo, DescriptorProtos.GeneratedCodeInfo.c, DescriptorProtos.l> q2Var = this.f14902j;
                    if (q2Var == null) {
                        DescriptorProtos.GeneratedCodeInfo generatedCodeInfo = this.f14901i;
                        return generatedCodeInfo == null ? DescriptorProtos.GeneratedCodeInfo.getDefaultInstance() : generatedCodeInfo;
                    }
                    return q2Var.d();
                }

                /* JADX WARN: Removed duplicated region for block: B:16:0x0021  */
                @Override // com.google.protobuf.a.AbstractC0142a
                /* renamed from: g0 */
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                    To view partially-correct add '--show-bad-code' argument
                */
                public com.google.protobuf.compiler.PluginProtos.CodeGeneratorResponse.File.b u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
                    /*
                        r2 = this;
                        r0 = 0
                        com.google.protobuf.e2<com.google.protobuf.compiler.PluginProtos$CodeGeneratorResponse$File> r1 = com.google.protobuf.compiler.PluginProtos.CodeGeneratorResponse.File.PARSER     // Catch: java.lang.Throwable -> Lf com.google.protobuf.InvalidProtocolBufferException -> L11
                        java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> Lf com.google.protobuf.InvalidProtocolBufferException -> L11
                        com.google.protobuf.compiler.PluginProtos$CodeGeneratorResponse$File r3 = (com.google.protobuf.compiler.PluginProtos.CodeGeneratorResponse.File) r3     // Catch: java.lang.Throwable -> Lf com.google.protobuf.InvalidProtocolBufferException -> L11
                        if (r3 == 0) goto Le
                        r2.i0(r3)
                    Le:
                        return r2
                    Lf:
                        r3 = move-exception
                        goto L1f
                    L11:
                        r3 = move-exception
                        com.google.protobuf.o1 r4 = r3.getUnfinishedMessage()     // Catch: java.lang.Throwable -> Lf
                        com.google.protobuf.compiler.PluginProtos$CodeGeneratorResponse$File r4 = (com.google.protobuf.compiler.PluginProtos.CodeGeneratorResponse.File) r4     // Catch: java.lang.Throwable -> Lf
                        java.io.IOException r3 = r3.unwrapIOException()     // Catch: java.lang.Throwable -> L1d
                        throw r3     // Catch: java.lang.Throwable -> L1d
                    L1d:
                        r3 = move-exception
                        r0 = r4
                    L1f:
                        if (r0 == 0) goto L24
                        r2.i0(r0)
                    L24:
                        throw r3
                    */
                    throw new UnsupportedOperationException("Method not decompiled: com.google.protobuf.compiler.PluginProtos.CodeGeneratorResponse.File.b.u(com.google.protobuf.p, com.google.protobuf.f0):com.google.protobuf.compiler.PluginProtos$CodeGeneratorResponse$File$b");
                }

                @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
                public Descriptors.b getDescriptorForType() {
                    return PluginProtos.f14887g;
                }

                @Override // com.google.protobuf.a.AbstractC0142a
                /* renamed from: h0 */
                public b v(l1 l1Var) {
                    if (l1Var instanceof File) {
                        return i0((File) l1Var);
                    }
                    super.P0(l1Var);
                    return this;
                }

                public b i0(File file) {
                    if (file == File.getDefaultInstance()) {
                        return this;
                    }
                    if (file.hasName()) {
                        this.f14897e |= 1;
                        this.f14898f = file.name_;
                        R();
                    }
                    if (file.hasInsertionPoint()) {
                        this.f14897e |= 2;
                        this.f14899g = file.insertionPoint_;
                        R();
                    }
                    if (file.hasContent()) {
                        this.f14897e |= 4;
                        this.f14900h = file.content_;
                        R();
                    }
                    if (file.hasGeneratedCodeInfo()) {
                        j0(file.getGeneratedCodeInfo());
                    }
                    z(((GeneratedMessageV3) file).unknownFields);
                    R();
                    return this;
                }

                public b j0(DescriptorProtos.GeneratedCodeInfo generatedCodeInfo) {
                    DescriptorProtos.GeneratedCodeInfo generatedCodeInfo2;
                    q2<DescriptorProtos.GeneratedCodeInfo, DescriptorProtos.GeneratedCodeInfo.c, DescriptorProtos.l> q2Var = this.f14902j;
                    if (q2Var == null) {
                        if ((this.f14897e & 8) != 0 && (generatedCodeInfo2 = this.f14901i) != null && generatedCodeInfo2 != DescriptorProtos.GeneratedCodeInfo.getDefaultInstance()) {
                            this.f14901i = DescriptorProtos.GeneratedCodeInfo.newBuilder(this.f14901i).h0(generatedCodeInfo).I();
                        } else {
                            this.f14901i = generatedCodeInfo;
                        }
                        R();
                    } else {
                        q2Var.e(generatedCodeInfo);
                    }
                    this.f14897e |= 8;
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

                private b() {
                    this.f14898f = "";
                    this.f14899g = "";
                    this.f14900h = "";
                    e0();
                }

                private b(GeneratedMessageV3.c cVar) {
                    super(cVar);
                    this.f14898f = "";
                    this.f14899g = "";
                    this.f14900h = "";
                    e0();
                }
            }

            public static b newBuilder(File file) {
                return DEFAULT_INSTANCE.toBuilder().i0(file);
            }

            public static File parseFrom(ByteBuffer byteBuffer, f0 f0Var) throws InvalidProtocolBufferException {
                return PARSER.f(byteBuffer, f0Var);
            }

            private File(GeneratedMessageV3.b<?> bVar) {
                super(bVar);
                this.memoizedIsInitialized = (byte) -1;
            }

            public static File parseDelimitedFrom(InputStream inputStream, f0 f0Var) throws IOException {
                return (File) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
            }

            public static File parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
                return PARSER.c(byteString);
            }

            @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.p1, com.google.protobuf.r1
            public File getDefaultInstanceForType() {
                return DEFAULT_INSTANCE;
            }

            @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
            public b toBuilder() {
                return this == DEFAULT_INSTANCE ? new b() : new b().i0(this);
            }

            public static File parseFrom(ByteString byteString, f0 f0Var) throws InvalidProtocolBufferException {
                return PARSER.b(byteString, f0Var);
            }

            @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
            public b newBuilderForType() {
                return newBuilder();
            }

            private File() {
                this.memoizedIsInitialized = (byte) -1;
                this.name_ = "";
                this.insertionPoint_ = "";
                this.content_ = "";
            }

            public static File parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
                return PARSER.a(bArr);
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.google.protobuf.GeneratedMessageV3
            public b newBuilderForType(GeneratedMessageV3.c cVar) {
                return new b(cVar);
            }

            public static File parseFrom(byte[] bArr, f0 f0Var) throws InvalidProtocolBufferException {
                return PARSER.g(bArr, f0Var);
            }

            public static File parseFrom(InputStream inputStream) throws IOException {
                return (File) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
            }

            public static File parseFrom(InputStream inputStream, f0 f0Var) throws IOException {
                return (File) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
            }

            private File(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
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
                                        ByteString s10 = pVar.s();
                                        this.bitField0_ = 1 | this.bitField0_;
                                        this.name_ = s10;
                                    } else if (L == 18) {
                                        ByteString s11 = pVar.s();
                                        this.bitField0_ |= 2;
                                        this.insertionPoint_ = s11;
                                    } else if (L == 122) {
                                        ByteString s12 = pVar.s();
                                        this.bitField0_ |= 4;
                                        this.content_ = s12;
                                    } else if (L != 130) {
                                        if (!parseUnknownField(pVar, h10, f0Var, L)) {
                                        }
                                    } else {
                                        DescriptorProtos.GeneratedCodeInfo.c builder = (this.bitField0_ & 8) != 0 ? this.generatedCodeInfo_.toBuilder() : null;
                                        DescriptorProtos.GeneratedCodeInfo generatedCodeInfo = (DescriptorProtos.GeneratedCodeInfo) pVar.B(DescriptorProtos.GeneratedCodeInfo.PARSER, f0Var);
                                        this.generatedCodeInfo_ = generatedCodeInfo;
                                        if (builder != null) {
                                            builder.h0(generatedCodeInfo);
                                            this.generatedCodeInfo_ = builder.I();
                                        }
                                        this.bitField0_ |= 8;
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

            public static File parseFrom(p pVar) throws IOException {
                return (File) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
            }

            public static File parseFrom(p pVar, f0 f0Var) throws IOException {
                return (File) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
            }
        }

        /* loaded from: classes3.dex */
        static class a extends com.google.protobuf.c<CodeGeneratorResponse> {
            a() {
            }

            @Override // com.google.protobuf.e2
            /* renamed from: G */
            public CodeGeneratorResponse m(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
                return new CodeGeneratorResponse(pVar, f0Var);
            }
        }

        /* loaded from: classes3.dex */
        public interface c extends r1 {
        }

        public static CodeGeneratorResponse getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static final Descriptors.b getDescriptor() {
            return PluginProtos.f14885e;
        }

        public static b newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static CodeGeneratorResponse parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (CodeGeneratorResponse) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static CodeGeneratorResponse parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.l(byteBuffer);
        }

        public static e2<CodeGeneratorResponse> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.a
        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof CodeGeneratorResponse)) {
                return super.equals(obj);
            }
            CodeGeneratorResponse codeGeneratorResponse = (CodeGeneratorResponse) obj;
            if (hasError() != codeGeneratorResponse.hasError()) {
                return false;
            }
            if ((!hasError() || getError().equals(codeGeneratorResponse.getError())) && hasSupportedFeatures() == codeGeneratorResponse.hasSupportedFeatures()) {
                return (!hasSupportedFeatures() || getSupportedFeatures() == codeGeneratorResponse.getSupportedFeatures()) && getFileList().equals(codeGeneratorResponse.getFileList()) && this.unknownFields.equals(codeGeneratorResponse.unknownFields);
            }
            return false;
        }

        public String getError() {
            Object obj = this.error_;
            if (obj instanceof String) {
                return (String) obj;
            }
            ByteString byteString = (ByteString) obj;
            String stringUtf8 = byteString.toStringUtf8();
            if (byteString.isValidUtf8()) {
                this.error_ = stringUtf8;
            }
            return stringUtf8;
        }

        public ByteString getErrorBytes() {
            Object obj = this.error_;
            if (obj instanceof String) {
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.error_ = copyFromUtf8;
                return copyFromUtf8;
            }
            return (ByteString) obj;
        }

        public File getFile(int i9) {
            return this.file_.get(i9);
        }

        public int getFileCount() {
            return this.file_.size();
        }

        public List<File> getFileList() {
            return this.file_;
        }

        public c getFileOrBuilder(int i9) {
            return this.file_.get(i9);
        }

        public List<? extends c> getFileOrBuilderList() {
            return this.file_;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
        public e2<CodeGeneratorResponse> getParserForType() {
            return PARSER;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
        public int getSerializedSize() {
            int i9 = this.memoizedSize;
            if (i9 != -1) {
                return i9;
            }
            int computeStringSize = (this.bitField0_ & 1) != 0 ? GeneratedMessageV3.computeStringSize(1, this.error_) + 0 : 0;
            if ((this.bitField0_ & 2) != 0) {
                computeStringSize += CodedOutputStream.a0(2, this.supportedFeatures_);
            }
            for (int i10 = 0; i10 < this.file_.size(); i10++) {
                computeStringSize += CodedOutputStream.G(15, this.file_.get(i10));
            }
            int serializedSize = computeStringSize + this.unknownFields.getSerializedSize();
            this.memoizedSize = serializedSize;
            return serializedSize;
        }

        public long getSupportedFeatures() {
            return this.supportedFeatures_;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.r1
        public final h3 getUnknownFields() {
            return this.unknownFields;
        }

        public boolean hasError() {
            return (this.bitField0_ & 1) != 0;
        }

        public boolean hasSupportedFeatures() {
            return (this.bitField0_ & 2) != 0;
        }

        @Override // com.google.protobuf.a
        public int hashCode() {
            int i9 = this.memoizedHashCode;
            if (i9 != 0) {
                return i9;
            }
            int hashCode = 779 + getDescriptor().hashCode();
            if (hasError()) {
                hashCode = (((hashCode * 37) + 1) * 53) + getError().hashCode();
            }
            if (hasSupportedFeatures()) {
                hashCode = (((hashCode * 37) + 2) * 53) + u0.i(getSupportedFeatures());
            }
            if (getFileCount() > 0) {
                hashCode = (((hashCode * 37) + 15) * 53) + getFileList().hashCode();
            }
            int hashCode2 = (hashCode * 29) + this.unknownFields.hashCode();
            this.memoizedHashCode = hashCode2;
            return hashCode2;
        }

        @Override // com.google.protobuf.GeneratedMessageV3
        protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
            return PluginProtos.f14886f.d(CodeGeneratorResponse.class, b.class);
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
            return new CodeGeneratorResponse();
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
        public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
            if ((this.bitField0_ & 1) != 0) {
                GeneratedMessageV3.writeString(codedOutputStream, 1, this.error_);
            }
            if ((this.bitField0_ & 2) != 0) {
                codedOutputStream.e1(2, this.supportedFeatures_);
            }
            for (int i9 = 0; i9 < this.file_.size(); i9++) {
                codedOutputStream.L0(15, this.file_.get(i9));
            }
            this.unknownFields.writeTo(codedOutputStream);
        }

        /* loaded from: classes3.dex */
        public static final class b extends GeneratedMessageV3.b<b> implements r1 {

            /* renamed from: e  reason: collision with root package name */
            private int f14903e;

            /* renamed from: f  reason: collision with root package name */
            private Object f14904f;

            /* renamed from: g  reason: collision with root package name */
            private long f14905g;

            /* renamed from: h  reason: collision with root package name */
            private List<File> f14906h;

            /* renamed from: i  reason: collision with root package name */
            private l2<File, File.b, c> f14907i;

            private void a0() {
                if ((this.f14903e & 4) == 0) {
                    this.f14906h = new ArrayList(this.f14906h);
                    this.f14903e |= 4;
                }
            }

            private l2<File, File.b, c> d0() {
                if (this.f14907i == null) {
                    this.f14907i = new l2<>(this.f14906h, (this.f14903e & 4) != 0, H(), O());
                    this.f14906h = null;
                }
                return this.f14907i;
            }

            private void e0() {
                if (GeneratedMessageV3.alwaysUseFieldBuilders) {
                    d0();
                }
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b
            protected GeneratedMessageV3.e K() {
                return PluginProtos.f14886f.d(CodeGeneratorResponse.class, b.class);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
            /* renamed from: W */
            public b L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                return (b) super.L(fieldDescriptor, obj);
            }

            @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
            /* renamed from: X */
            public CodeGeneratorResponse build() {
                CodeGeneratorResponse I = I();
                if (I.isInitialized()) {
                    return I;
                }
                throw a.AbstractC0142a.A(I);
            }

            @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
            /* renamed from: Y */
            public CodeGeneratorResponse I() {
                CodeGeneratorResponse codeGeneratorResponse = new CodeGeneratorResponse(this);
                int i9 = this.f14903e;
                int i10 = (i9 & 1) != 0 ? 1 : 0;
                codeGeneratorResponse.error_ = this.f14904f;
                if ((i9 & 2) != 0) {
                    codeGeneratorResponse.supportedFeatures_ = this.f14905g;
                    i10 |= 2;
                }
                l2<File, File.b, c> l2Var = this.f14907i;
                if (l2Var == null) {
                    if ((this.f14903e & 4) != 0) {
                        this.f14906h = Collections.unmodifiableList(this.f14906h);
                        this.f14903e &= -5;
                    }
                    codeGeneratorResponse.file_ = this.f14906h;
                } else {
                    codeGeneratorResponse.file_ = l2Var.e();
                }
                codeGeneratorResponse.bitField0_ = i10;
                Q();
                return codeGeneratorResponse;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
            /* renamed from: Z */
            public b n() {
                return (b) super.n();
            }

            @Override // com.google.protobuf.p1, com.google.protobuf.r1
            /* renamed from: b0 */
            public CodeGeneratorResponse getDefaultInstanceForType() {
                return CodeGeneratorResponse.getDefaultInstance();
            }

            /* JADX WARN: Removed duplicated region for block: B:16:0x0021  */
            @Override // com.google.protobuf.a.AbstractC0142a
            /* renamed from: g0 */
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public com.google.protobuf.compiler.PluginProtos.CodeGeneratorResponse.b u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
                /*
                    r2 = this;
                    r0 = 0
                    com.google.protobuf.e2<com.google.protobuf.compiler.PluginProtos$CodeGeneratorResponse> r1 = com.google.protobuf.compiler.PluginProtos.CodeGeneratorResponse.PARSER     // Catch: java.lang.Throwable -> Lf com.google.protobuf.InvalidProtocolBufferException -> L11
                    java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> Lf com.google.protobuf.InvalidProtocolBufferException -> L11
                    com.google.protobuf.compiler.PluginProtos$CodeGeneratorResponse r3 = (com.google.protobuf.compiler.PluginProtos.CodeGeneratorResponse) r3     // Catch: java.lang.Throwable -> Lf com.google.protobuf.InvalidProtocolBufferException -> L11
                    if (r3 == 0) goto Le
                    r2.i0(r3)
                Le:
                    return r2
                Lf:
                    r3 = move-exception
                    goto L1f
                L11:
                    r3 = move-exception
                    com.google.protobuf.o1 r4 = r3.getUnfinishedMessage()     // Catch: java.lang.Throwable -> Lf
                    com.google.protobuf.compiler.PluginProtos$CodeGeneratorResponse r4 = (com.google.protobuf.compiler.PluginProtos.CodeGeneratorResponse) r4     // Catch: java.lang.Throwable -> Lf
                    java.io.IOException r3 = r3.unwrapIOException()     // Catch: java.lang.Throwable -> L1d
                    throw r3     // Catch: java.lang.Throwable -> L1d
                L1d:
                    r3 = move-exception
                    r0 = r4
                L1f:
                    if (r0 == 0) goto L24
                    r2.i0(r0)
                L24:
                    throw r3
                */
                throw new UnsupportedOperationException("Method not decompiled: com.google.protobuf.compiler.PluginProtos.CodeGeneratorResponse.b.u(com.google.protobuf.p, com.google.protobuf.f0):com.google.protobuf.compiler.PluginProtos$CodeGeneratorResponse$b");
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
            public Descriptors.b getDescriptorForType() {
                return PluginProtos.f14885e;
            }

            @Override // com.google.protobuf.a.AbstractC0142a
            /* renamed from: h0 */
            public b v(l1 l1Var) {
                if (l1Var instanceof CodeGeneratorResponse) {
                    return i0((CodeGeneratorResponse) l1Var);
                }
                super.P0(l1Var);
                return this;
            }

            public b i0(CodeGeneratorResponse codeGeneratorResponse) {
                if (codeGeneratorResponse == CodeGeneratorResponse.getDefaultInstance()) {
                    return this;
                }
                if (codeGeneratorResponse.hasError()) {
                    this.f14903e |= 1;
                    this.f14904f = codeGeneratorResponse.error_;
                    R();
                }
                if (codeGeneratorResponse.hasSupportedFeatures()) {
                    l0(codeGeneratorResponse.getSupportedFeatures());
                }
                if (this.f14907i == null) {
                    if (!codeGeneratorResponse.file_.isEmpty()) {
                        if (this.f14906h.isEmpty()) {
                            this.f14906h = codeGeneratorResponse.file_;
                            this.f14903e &= -5;
                        } else {
                            a0();
                            this.f14906h.addAll(codeGeneratorResponse.file_);
                        }
                        R();
                    }
                } else if (!codeGeneratorResponse.file_.isEmpty()) {
                    if (this.f14907i.k()) {
                        this.f14907i.f();
                        this.f14907i = null;
                        this.f14906h = codeGeneratorResponse.file_;
                        this.f14903e &= -5;
                        this.f14907i = GeneratedMessageV3.alwaysUseFieldBuilders ? d0() : null;
                    } else {
                        this.f14907i.b(codeGeneratorResponse.file_);
                    }
                }
                z(((GeneratedMessageV3) codeGeneratorResponse).unknownFields);
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

            public b l0(long j10) {
                this.f14903e |= 2;
                this.f14905g = j10;
                R();
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
            /* renamed from: m0 */
            public final b f1(h3 h3Var) {
                return (b) super.f1(h3Var);
            }

            private b() {
                this.f14904f = "";
                this.f14906h = Collections.emptyList();
                e0();
            }

            private b(GeneratedMessageV3.c cVar) {
                super(cVar);
                this.f14904f = "";
                this.f14906h = Collections.emptyList();
                e0();
            }
        }

        public static b newBuilder(CodeGeneratorResponse codeGeneratorResponse) {
            return DEFAULT_INSTANCE.toBuilder().i0(codeGeneratorResponse);
        }

        public static CodeGeneratorResponse parseFrom(ByteBuffer byteBuffer, f0 f0Var) throws InvalidProtocolBufferException {
            return PARSER.f(byteBuffer, f0Var);
        }

        private CodeGeneratorResponse(GeneratedMessageV3.b<?> bVar) {
            super(bVar);
            this.memoizedIsInitialized = (byte) -1;
        }

        public static CodeGeneratorResponse parseDelimitedFrom(InputStream inputStream, f0 f0Var) throws IOException {
            return (CodeGeneratorResponse) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
        }

        public static CodeGeneratorResponse parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.c(byteString);
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.p1, com.google.protobuf.r1
        public CodeGeneratorResponse getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
        public b toBuilder() {
            return this == DEFAULT_INSTANCE ? new b() : new b().i0(this);
        }

        public static CodeGeneratorResponse parseFrom(ByteString byteString, f0 f0Var) throws InvalidProtocolBufferException {
            return PARSER.b(byteString, f0Var);
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
        public b newBuilderForType() {
            return newBuilder();
        }

        private CodeGeneratorResponse() {
            this.memoizedIsInitialized = (byte) -1;
            this.error_ = "";
            this.file_ = Collections.emptyList();
        }

        public static CodeGeneratorResponse parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.a(bArr);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.protobuf.GeneratedMessageV3
        public b newBuilderForType(GeneratedMessageV3.c cVar) {
            return new b(cVar);
        }

        public static CodeGeneratorResponse parseFrom(byte[] bArr, f0 f0Var) throws InvalidProtocolBufferException {
            return PARSER.g(bArr, f0Var);
        }

        public static CodeGeneratorResponse parseFrom(InputStream inputStream) throws IOException {
            return (CodeGeneratorResponse) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
        }

        /* JADX WARN: Multi-variable type inference failed */
        private CodeGeneratorResponse(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
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
                                    ByteString s10 = pVar.s();
                                    this.bitField0_ = 1 | this.bitField0_;
                                    this.error_ = s10;
                                } else if (L == 16) {
                                    this.bitField0_ |= 2;
                                    this.supportedFeatures_ = pVar.N();
                                } else if (L != 122) {
                                    if (!parseUnknownField(pVar, h10, f0Var, L)) {
                                    }
                                } else {
                                    if (!(z11 & true)) {
                                        this.file_ = new ArrayList();
                                        z11 |= true;
                                    }
                                    this.file_.add(pVar.B(File.PARSER, f0Var));
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
                        this.file_ = Collections.unmodifiableList(this.file_);
                    }
                    this.unknownFields = h10.build();
                    makeExtensionsImmutable();
                }
            }
        }

        public static CodeGeneratorResponse parseFrom(InputStream inputStream, f0 f0Var) throws IOException {
            return (CodeGeneratorResponse) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
        }

        public static CodeGeneratorResponse parseFrom(p pVar) throws IOException {
            return (CodeGeneratorResponse) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
        }

        public static CodeGeneratorResponse parseFrom(p pVar, f0 f0Var) throws IOException {
            return (CodeGeneratorResponse) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
        }
    }

    /* loaded from: classes3.dex */
    public static final class Version extends GeneratedMessageV3 implements b {
        public static final int MAJOR_FIELD_NUMBER = 1;
        public static final int MINOR_FIELD_NUMBER = 2;
        public static final int PATCH_FIELD_NUMBER = 3;
        public static final int SUFFIX_FIELD_NUMBER = 4;
        private static final long serialVersionUID = 0;
        private int bitField0_;
        private int major_;
        private byte memoizedIsInitialized;
        private int minor_;
        private int patch_;
        private volatile Object suffix_;
        private static final Version DEFAULT_INSTANCE = new Version();
        @Deprecated
        public static final e2<Version> PARSER = new a();

        /* loaded from: classes3.dex */
        static class a extends c<Version> {
            a() {
            }

            @Override // com.google.protobuf.e2
            /* renamed from: G */
            public Version m(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
                return new Version(pVar, f0Var);
            }
        }

        public static Version getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static final Descriptors.b getDescriptor() {
            return PluginProtos.f14881a;
        }

        public static b newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static Version parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (Version) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static Version parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.l(byteBuffer);
        }

        public static e2<Version> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.a
        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof Version)) {
                return super.equals(obj);
            }
            Version version = (Version) obj;
            if (hasMajor() != version.hasMajor()) {
                return false;
            }
            if ((!hasMajor() || getMajor() == version.getMajor()) && hasMinor() == version.hasMinor()) {
                if ((!hasMinor() || getMinor() == version.getMinor()) && hasPatch() == version.hasPatch()) {
                    if ((!hasPatch() || getPatch() == version.getPatch()) && hasSuffix() == version.hasSuffix()) {
                        return (!hasSuffix() || getSuffix().equals(version.getSuffix())) && this.unknownFields.equals(version.unknownFields);
                    }
                    return false;
                }
                return false;
            }
            return false;
        }

        public int getMajor() {
            return this.major_;
        }

        public int getMinor() {
            return this.minor_;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
        public e2<Version> getParserForType() {
            return PARSER;
        }

        public int getPatch() {
            return this.patch_;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
        public int getSerializedSize() {
            int i9 = this.memoizedSize;
            if (i9 != -1) {
                return i9;
            }
            int x10 = (this.bitField0_ & 1) != 0 ? 0 + CodedOutputStream.x(1, this.major_) : 0;
            if ((this.bitField0_ & 2) != 0) {
                x10 += CodedOutputStream.x(2, this.minor_);
            }
            if ((this.bitField0_ & 4) != 0) {
                x10 += CodedOutputStream.x(3, this.patch_);
            }
            if ((this.bitField0_ & 8) != 0) {
                x10 += GeneratedMessageV3.computeStringSize(4, this.suffix_);
            }
            int serializedSize = x10 + this.unknownFields.getSerializedSize();
            this.memoizedSize = serializedSize;
            return serializedSize;
        }

        public String getSuffix() {
            Object obj = this.suffix_;
            if (obj instanceof String) {
                return (String) obj;
            }
            ByteString byteString = (ByteString) obj;
            String stringUtf8 = byteString.toStringUtf8();
            if (byteString.isValidUtf8()) {
                this.suffix_ = stringUtf8;
            }
            return stringUtf8;
        }

        public ByteString getSuffixBytes() {
            Object obj = this.suffix_;
            if (obj instanceof String) {
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.suffix_ = copyFromUtf8;
                return copyFromUtf8;
            }
            return (ByteString) obj;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.r1
        public final h3 getUnknownFields() {
            return this.unknownFields;
        }

        public boolean hasMajor() {
            return (this.bitField0_ & 1) != 0;
        }

        public boolean hasMinor() {
            return (this.bitField0_ & 2) != 0;
        }

        public boolean hasPatch() {
            return (this.bitField0_ & 4) != 0;
        }

        public boolean hasSuffix() {
            return (this.bitField0_ & 8) != 0;
        }

        @Override // com.google.protobuf.a
        public int hashCode() {
            int i9 = this.memoizedHashCode;
            if (i9 != 0) {
                return i9;
            }
            int hashCode = 779 + getDescriptor().hashCode();
            if (hasMajor()) {
                hashCode = (((hashCode * 37) + 1) * 53) + getMajor();
            }
            if (hasMinor()) {
                hashCode = (((hashCode * 37) + 2) * 53) + getMinor();
            }
            if (hasPatch()) {
                hashCode = (((hashCode * 37) + 3) * 53) + getPatch();
            }
            if (hasSuffix()) {
                hashCode = (((hashCode * 37) + 4) * 53) + getSuffix().hashCode();
            }
            int hashCode2 = (hashCode * 29) + this.unknownFields.hashCode();
            this.memoizedHashCode = hashCode2;
            return hashCode2;
        }

        @Override // com.google.protobuf.GeneratedMessageV3
        protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
            return PluginProtos.f14882b.d(Version.class, b.class);
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
            return new Version();
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
        public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
            if ((this.bitField0_ & 1) != 0) {
                codedOutputStream.H0(1, this.major_);
            }
            if ((this.bitField0_ & 2) != 0) {
                codedOutputStream.H0(2, this.minor_);
            }
            if ((this.bitField0_ & 4) != 0) {
                codedOutputStream.H0(3, this.patch_);
            }
            if ((this.bitField0_ & 8) != 0) {
                GeneratedMessageV3.writeString(codedOutputStream, 4, this.suffix_);
            }
            this.unknownFields.writeTo(codedOutputStream);
        }

        /* loaded from: classes3.dex */
        public static final class b extends GeneratedMessageV3.b<b> implements b {

            /* renamed from: e  reason: collision with root package name */
            private int f14908e;

            /* renamed from: f  reason: collision with root package name */
            private int f14909f;

            /* renamed from: g  reason: collision with root package name */
            private int f14910g;

            /* renamed from: h  reason: collision with root package name */
            private int f14911h;

            /* renamed from: i  reason: collision with root package name */
            private Object f14912i;

            private void b0() {
                boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b
            protected GeneratedMessageV3.e K() {
                return PluginProtos.f14882b.d(Version.class, b.class);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
            /* renamed from: W */
            public b L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                return (b) super.L(fieldDescriptor, obj);
            }

            @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
            /* renamed from: X */
            public Version build() {
                Version I = I();
                if (I.isInitialized()) {
                    return I;
                }
                throw a.AbstractC0142a.A(I);
            }

            @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
            /* renamed from: Y */
            public Version I() {
                int i9;
                Version version = new Version(this);
                int i10 = this.f14908e;
                if ((i10 & 1) != 0) {
                    version.major_ = this.f14909f;
                    i9 = 1;
                } else {
                    i9 = 0;
                }
                if ((i10 & 2) != 0) {
                    version.minor_ = this.f14910g;
                    i9 |= 2;
                }
                if ((i10 & 4) != 0) {
                    version.patch_ = this.f14911h;
                    i9 |= 4;
                }
                if ((i10 & 8) != 0) {
                    i9 |= 8;
                }
                version.suffix_ = this.f14912i;
                version.bitField0_ = i9;
                Q();
                return version;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
            /* renamed from: Z */
            public b n() {
                return (b) super.n();
            }

            @Override // com.google.protobuf.p1, com.google.protobuf.r1
            /* renamed from: a0 */
            public Version getDefaultInstanceForType() {
                return Version.getDefaultInstance();
            }

            /* JADX WARN: Removed duplicated region for block: B:16:0x0021  */
            @Override // com.google.protobuf.a.AbstractC0142a
            /* renamed from: d0 */
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public com.google.protobuf.compiler.PluginProtos.Version.b u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
                /*
                    r2 = this;
                    r0 = 0
                    com.google.protobuf.e2<com.google.protobuf.compiler.PluginProtos$Version> r1 = com.google.protobuf.compiler.PluginProtos.Version.PARSER     // Catch: java.lang.Throwable -> Lf com.google.protobuf.InvalidProtocolBufferException -> L11
                    java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> Lf com.google.protobuf.InvalidProtocolBufferException -> L11
                    com.google.protobuf.compiler.PluginProtos$Version r3 = (com.google.protobuf.compiler.PluginProtos.Version) r3     // Catch: java.lang.Throwable -> Lf com.google.protobuf.InvalidProtocolBufferException -> L11
                    if (r3 == 0) goto Le
                    r2.g0(r3)
                Le:
                    return r2
                Lf:
                    r3 = move-exception
                    goto L1f
                L11:
                    r3 = move-exception
                    com.google.protobuf.o1 r4 = r3.getUnfinishedMessage()     // Catch: java.lang.Throwable -> Lf
                    com.google.protobuf.compiler.PluginProtos$Version r4 = (com.google.protobuf.compiler.PluginProtos.Version) r4     // Catch: java.lang.Throwable -> Lf
                    java.io.IOException r3 = r3.unwrapIOException()     // Catch: java.lang.Throwable -> L1d
                    throw r3     // Catch: java.lang.Throwable -> L1d
                L1d:
                    r3 = move-exception
                    r0 = r4
                L1f:
                    if (r0 == 0) goto L24
                    r2.g0(r0)
                L24:
                    throw r3
                */
                throw new UnsupportedOperationException("Method not decompiled: com.google.protobuf.compiler.PluginProtos.Version.b.u(com.google.protobuf.p, com.google.protobuf.f0):com.google.protobuf.compiler.PluginProtos$Version$b");
            }

            @Override // com.google.protobuf.a.AbstractC0142a
            /* renamed from: e0 */
            public b v(l1 l1Var) {
                if (l1Var instanceof Version) {
                    return g0((Version) l1Var);
                }
                super.P0(l1Var);
                return this;
            }

            public b g0(Version version) {
                if (version == Version.getDefaultInstance()) {
                    return this;
                }
                if (version.hasMajor()) {
                    j0(version.getMajor());
                }
                if (version.hasMinor()) {
                    k0(version.getMinor());
                }
                if (version.hasPatch()) {
                    l0(version.getPatch());
                }
                if (version.hasSuffix()) {
                    this.f14908e |= 8;
                    this.f14912i = version.suffix_;
                    R();
                }
                z(((GeneratedMessageV3) version).unknownFields);
                R();
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
            public Descriptors.b getDescriptorForType() {
                return PluginProtos.f14881a;
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

            public b j0(int i9) {
                this.f14908e |= 1;
                this.f14909f = i9;
                R();
                return this;
            }

            public b k0(int i9) {
                this.f14908e |= 2;
                this.f14910g = i9;
                R();
                return this;
            }

            public b l0(int i9) {
                this.f14908e |= 4;
                this.f14911h = i9;
                R();
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
            /* renamed from: m0 */
            public final b f1(h3 h3Var) {
                return (b) super.f1(h3Var);
            }

            private b() {
                this.f14912i = "";
                b0();
            }

            private b(GeneratedMessageV3.c cVar) {
                super(cVar);
                this.f14912i = "";
                b0();
            }
        }

        public static b newBuilder(Version version) {
            return DEFAULT_INSTANCE.toBuilder().g0(version);
        }

        public static Version parseFrom(ByteBuffer byteBuffer, f0 f0Var) throws InvalidProtocolBufferException {
            return PARSER.f(byteBuffer, f0Var);
        }

        private Version(GeneratedMessageV3.b<?> bVar) {
            super(bVar);
            this.memoizedIsInitialized = (byte) -1;
        }

        public static Version parseDelimitedFrom(InputStream inputStream, f0 f0Var) throws IOException {
            return (Version) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
        }

        public static Version parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.c(byteString);
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.p1, com.google.protobuf.r1
        public Version getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
        public b toBuilder() {
            return this == DEFAULT_INSTANCE ? new b() : new b().g0(this);
        }

        public static Version parseFrom(ByteString byteString, f0 f0Var) throws InvalidProtocolBufferException {
            return PARSER.b(byteString, f0Var);
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
        public b newBuilderForType() {
            return newBuilder();
        }

        private Version() {
            this.memoizedIsInitialized = (byte) -1;
            this.suffix_ = "";
        }

        public static Version parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.a(bArr);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.protobuf.GeneratedMessageV3
        public b newBuilderForType(GeneratedMessageV3.c cVar) {
            return new b(cVar);
        }

        public static Version parseFrom(byte[] bArr, f0 f0Var) throws InvalidProtocolBufferException {
            return PARSER.g(bArr, f0Var);
        }

        public static Version parseFrom(InputStream inputStream) throws IOException {
            return (Version) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
        }

        private Version(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
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
                                this.bitField0_ |= 1;
                                this.major_ = pVar.z();
                            } else if (L == 16) {
                                this.bitField0_ |= 2;
                                this.minor_ = pVar.z();
                            } else if (L == 24) {
                                this.bitField0_ |= 4;
                                this.patch_ = pVar.z();
                            } else if (L != 34) {
                                if (!parseUnknownField(pVar, h10, f0Var, L)) {
                                }
                            } else {
                                ByteString s10 = pVar.s();
                                this.bitField0_ |= 8;
                                this.suffix_ = s10;
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

        public static Version parseFrom(InputStream inputStream, f0 f0Var) throws IOException {
            return (Version) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
        }

        public static Version parseFrom(p pVar) throws IOException {
            return (Version) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
        }

        public static Version parseFrom(p pVar, f0 f0Var) throws IOException {
            return (Version) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
        }
    }

    /* loaded from: classes3.dex */
    public interface b extends r1 {
    }

    static {
        Descriptors.b bVar = i().m().get(0);
        f14881a = bVar;
        f14882b = new GeneratedMessageV3.e(bVar, new String[]{"Major", "Minor", "Patch", "Suffix"});
        Descriptors.b bVar2 = i().m().get(1);
        f14883c = bVar2;
        f14884d = new GeneratedMessageV3.e(bVar2, new String[]{"FileToGenerate", "Parameter", "ProtoFile", "CompilerVersion"});
        Descriptors.b bVar3 = i().m().get(2);
        f14885e = bVar3;
        f14886f = new GeneratedMessageV3.e(bVar3, new String[]{"Error", "SupportedFeatures", "File"});
        Descriptors.b bVar4 = bVar3.o().get(0);
        f14887g = bVar4;
        f14888h = new GeneratedMessageV3.e(bVar4, new String[]{"Name", "InsertionPoint", "Content", "GeneratedCodeInfo"});
        DescriptorProtos.c0();
    }

    public static Descriptors.FileDescriptor i() {
        return f14889i;
    }
}
