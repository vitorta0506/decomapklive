package io.grpc.xds.shaded.udpa.annotations;

import com.google.protobuf.ByteString;
import com.google.protobuf.CodedOutputStream;
import com.google.protobuf.DescriptorProtos;
import com.google.protobuf.Descriptors;
import com.google.protobuf.GeneratedMessage;
import com.google.protobuf.GeneratedMessageV3;
import com.google.protobuf.InvalidProtocolBufferException;
import com.google.protobuf.a;
import com.google.protobuf.c;
import com.google.protobuf.e2;
import com.google.protobuf.f0;
import com.google.protobuf.h2;
import com.google.protobuf.h3;
import com.google.protobuf.l1;
import com.google.protobuf.p;
import com.google.protobuf.r1;
import com.google.protobuf.u0;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.Objects;
/* loaded from: classes5.dex */
public final class Status {

    /* renamed from: a  reason: collision with root package name */
    public static final GeneratedMessage.l<DescriptorProtos.FileOptions, StatusAnnotation> f50839a;

    /* renamed from: b  reason: collision with root package name */
    private static final Descriptors.b f50840b;

    /* renamed from: c  reason: collision with root package name */
    private static final GeneratedMessageV3.e f50841c;

    /* renamed from: d  reason: collision with root package name */
    private static Descriptors.FileDescriptor f50842d;

    /* loaded from: classes5.dex */
    public enum PackageVersionStatus implements h2 {
        UNKNOWN(0),
        FROZEN(1),
        ACTIVE(2),
        NEXT_MAJOR_VERSION_CANDIDATE(3),
        UNRECOGNIZED(-1);
        
        public static final int ACTIVE_VALUE = 2;
        public static final int FROZEN_VALUE = 1;
        public static final int NEXT_MAJOR_VERSION_CANDIDATE_VALUE = 3;
        public static final int UNKNOWN_VALUE = 0;
        private final int value;
        private static final u0.d<PackageVersionStatus> internalValueMap = new a();
        private static final PackageVersionStatus[] VALUES = values();

        /* loaded from: classes5.dex */
        class a implements u0.d<PackageVersionStatus> {
            a() {
            }

            @Override // com.google.protobuf.u0.d
            /* renamed from: b */
            public PackageVersionStatus a(int i9) {
                return PackageVersionStatus.forNumber(i9);
            }
        }

        PackageVersionStatus(int i9) {
            this.value = i9;
        }

        public static PackageVersionStatus forNumber(int i9) {
            if (i9 != 0) {
                if (i9 != 1) {
                    if (i9 != 2) {
                        if (i9 != 3) {
                            return null;
                        }
                        return NEXT_MAJOR_VERSION_CANDIDATE;
                    }
                    return ACTIVE;
                }
                return FROZEN;
            }
            return UNKNOWN;
        }

        public static final Descriptors.d getDescriptor() {
            return Status.c().k().get(0);
        }

        public static u0.d<PackageVersionStatus> internalGetValueMap() {
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
            if (this != UNRECOGNIZED) {
                return getDescriptor().k().get(ordinal());
            }
            throw new IllegalStateException("Can't get the descriptor of an unrecognized enum value.");
        }

        @Deprecated
        public static PackageVersionStatus valueOf(int i9) {
            return forNumber(i9);
        }

        public static PackageVersionStatus valueOf(Descriptors.e eVar) {
            if (eVar.h() == getDescriptor()) {
                if (eVar.g() == -1) {
                    return UNRECOGNIZED;
                }
                return VALUES[eVar.g()];
            }
            throw new IllegalArgumentException("EnumValueDescriptor is not for this type.");
        }
    }

    /* loaded from: classes5.dex */
    public static final class StatusAnnotation extends GeneratedMessageV3 implements r1 {
        public static final int PACKAGE_VERSION_STATUS_FIELD_NUMBER = 2;
        public static final int WORK_IN_PROGRESS_FIELD_NUMBER = 1;
        private static final long serialVersionUID = 0;
        private byte memoizedIsInitialized;
        private int packageVersionStatus_;
        private boolean workInProgress_;
        private static final StatusAnnotation DEFAULT_INSTANCE = new StatusAnnotation();
        private static final e2<StatusAnnotation> PARSER = new a();

        /* loaded from: classes5.dex */
        class a extends c<StatusAnnotation> {
            a() {
            }

            @Override // com.google.protobuf.e2
            /* renamed from: G */
            public StatusAnnotation m(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
                return new StatusAnnotation(pVar, f0Var);
            }
        }

        public static StatusAnnotation getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static final Descriptors.b getDescriptor() {
            return Status.f50840b;
        }

        public static b newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static StatusAnnotation parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (StatusAnnotation) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static StatusAnnotation parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.l(byteBuffer);
        }

        public static e2<StatusAnnotation> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.a
        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof StatusAnnotation)) {
                return super.equals(obj);
            }
            StatusAnnotation statusAnnotation = (StatusAnnotation) obj;
            return getWorkInProgress() == statusAnnotation.getWorkInProgress() && this.packageVersionStatus_ == statusAnnotation.packageVersionStatus_ && this.unknownFields.equals(statusAnnotation.unknownFields);
        }

        public PackageVersionStatus getPackageVersionStatus() {
            PackageVersionStatus valueOf = PackageVersionStatus.valueOf(this.packageVersionStatus_);
            return valueOf == null ? PackageVersionStatus.UNRECOGNIZED : valueOf;
        }

        public int getPackageVersionStatusValue() {
            return this.packageVersionStatus_;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
        public e2<StatusAnnotation> getParserForType() {
            return PARSER;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
        public int getSerializedSize() {
            int i9 = this.memoizedSize;
            if (i9 != -1) {
                return i9;
            }
            boolean z10 = this.workInProgress_;
            int e10 = z10 ? 0 + CodedOutputStream.e(1, z10) : 0;
            if (this.packageVersionStatus_ != PackageVersionStatus.UNKNOWN.getNumber()) {
                e10 += CodedOutputStream.l(2, this.packageVersionStatus_);
            }
            int serializedSize = e10 + this.unknownFields.getSerializedSize();
            this.memoizedSize = serializedSize;
            return serializedSize;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.r1
        public final h3 getUnknownFields() {
            return this.unknownFields;
        }

        public boolean getWorkInProgress() {
            return this.workInProgress_;
        }

        @Override // com.google.protobuf.a
        public int hashCode() {
            int i9 = this.memoizedHashCode;
            if (i9 != 0) {
                return i9;
            }
            int hashCode = ((((((((((779 + getDescriptor().hashCode()) * 37) + 1) * 53) + u0.d(getWorkInProgress())) * 37) + 2) * 53) + this.packageVersionStatus_) * 29) + this.unknownFields.hashCode();
            this.memoizedHashCode = hashCode;
            return hashCode;
        }

        @Override // com.google.protobuf.GeneratedMessageV3
        protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
            return Status.f50841c.d(StatusAnnotation.class, b.class);
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
            return new StatusAnnotation();
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
        public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
            boolean z10 = this.workInProgress_;
            if (z10) {
                codedOutputStream.n0(1, z10);
            }
            if (this.packageVersionStatus_ != PackageVersionStatus.UNKNOWN.getNumber()) {
                codedOutputStream.v0(2, this.packageVersionStatus_);
            }
            this.unknownFields.writeTo(codedOutputStream);
        }

        /* loaded from: classes5.dex */
        public static final class b extends GeneratedMessageV3.b<b> implements r1 {

            /* renamed from: e  reason: collision with root package name */
            private boolean f50843e;

            /* renamed from: f  reason: collision with root package name */
            private int f50844f;

            private void b0() {
                boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b
            protected GeneratedMessageV3.e K() {
                return Status.f50841c.d(StatusAnnotation.class, b.class);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
            /* renamed from: W */
            public b L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                return (b) super.L(fieldDescriptor, obj);
            }

            @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
            /* renamed from: X */
            public StatusAnnotation build() {
                StatusAnnotation I = I();
                if (I.isInitialized()) {
                    return I;
                }
                throw a.AbstractC0142a.A(I);
            }

            @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
            /* renamed from: Y */
            public StatusAnnotation I() {
                StatusAnnotation statusAnnotation = new StatusAnnotation(this);
                statusAnnotation.workInProgress_ = this.f50843e;
                statusAnnotation.packageVersionStatus_ = this.f50844f;
                Q();
                return statusAnnotation;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
            /* renamed from: Z */
            public b n() {
                return (b) super.n();
            }

            @Override // com.google.protobuf.p1, com.google.protobuf.r1
            /* renamed from: a0 */
            public StatusAnnotation getDefaultInstanceForType() {
                return StatusAnnotation.getDefaultInstance();
            }

            /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
            @Override // com.google.protobuf.a.AbstractC0142a
            /* renamed from: d0 */
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public io.grpc.xds.shaded.udpa.annotations.Status.StatusAnnotation.b u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
                /*
                    r2 = this;
                    r0 = 0
                    com.google.protobuf.e2 r1 = io.grpc.xds.shaded.udpa.annotations.Status.StatusAnnotation.access$900()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                    java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                    io.grpc.xds.shaded.udpa.annotations.Status$StatusAnnotation r3 = (io.grpc.xds.shaded.udpa.annotations.Status.StatusAnnotation) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
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
                    io.grpc.xds.shaded.udpa.annotations.Status$StatusAnnotation r4 = (io.grpc.xds.shaded.udpa.annotations.Status.StatusAnnotation) r4     // Catch: java.lang.Throwable -> L11
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
                throw new UnsupportedOperationException("Method not decompiled: io.grpc.xds.shaded.udpa.annotations.Status.StatusAnnotation.b.u(com.google.protobuf.p, com.google.protobuf.f0):io.grpc.xds.shaded.udpa.annotations.Status$StatusAnnotation$b");
            }

            @Override // com.google.protobuf.a.AbstractC0142a
            /* renamed from: e0 */
            public b v(l1 l1Var) {
                if (l1Var instanceof StatusAnnotation) {
                    return g0((StatusAnnotation) l1Var);
                }
                super.P0(l1Var);
                return this;
            }

            public b g0(StatusAnnotation statusAnnotation) {
                if (statusAnnotation == StatusAnnotation.getDefaultInstance()) {
                    return this;
                }
                if (statusAnnotation.getWorkInProgress()) {
                    l0(statusAnnotation.getWorkInProgress());
                }
                if (statusAnnotation.packageVersionStatus_ != 0) {
                    j0(statusAnnotation.getPackageVersionStatusValue());
                }
                z(((GeneratedMessageV3) statusAnnotation).unknownFields);
                R();
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
            public Descriptors.b getDescriptorForType() {
                return Status.f50840b;
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
                this.f50844f = i9;
                R();
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
            /* renamed from: k0 */
            public final b f1(h3 h3Var) {
                return (b) super.f1(h3Var);
            }

            public b l0(boolean z10) {
                this.f50843e = z10;
                R();
                return this;
            }

            private b() {
                this.f50844f = 0;
                b0();
            }

            private b(GeneratedMessageV3.c cVar) {
                super(cVar);
                this.f50844f = 0;
                b0();
            }
        }

        public static b newBuilder(StatusAnnotation statusAnnotation) {
            return DEFAULT_INSTANCE.toBuilder().g0(statusAnnotation);
        }

        public static StatusAnnotation parseFrom(ByteBuffer byteBuffer, f0 f0Var) throws InvalidProtocolBufferException {
            return PARSER.f(byteBuffer, f0Var);
        }

        private StatusAnnotation(GeneratedMessageV3.b<?> bVar) {
            super(bVar);
            this.memoizedIsInitialized = (byte) -1;
        }

        public static StatusAnnotation parseDelimitedFrom(InputStream inputStream, f0 f0Var) throws IOException {
            return (StatusAnnotation) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
        }

        public static StatusAnnotation parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.c(byteString);
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.p1, com.google.protobuf.r1
        public StatusAnnotation getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
        public b toBuilder() {
            return this == DEFAULT_INSTANCE ? new b() : new b().g0(this);
        }

        public static StatusAnnotation parseFrom(ByteString byteString, f0 f0Var) throws InvalidProtocolBufferException {
            return PARSER.b(byteString, f0Var);
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
        public b newBuilderForType() {
            return newBuilder();
        }

        private StatusAnnotation() {
            this.memoizedIsInitialized = (byte) -1;
            this.packageVersionStatus_ = 0;
        }

        public static StatusAnnotation parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.a(bArr);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.protobuf.GeneratedMessageV3
        public b newBuilderForType(GeneratedMessageV3.c cVar) {
            return new b(cVar);
        }

        public static StatusAnnotation parseFrom(byte[] bArr, f0 f0Var) throws InvalidProtocolBufferException {
            return PARSER.g(bArr, f0Var);
        }

        public static StatusAnnotation parseFrom(InputStream inputStream) throws IOException {
            return (StatusAnnotation) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
        }

        private StatusAnnotation(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
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
                                if (L == 8) {
                                    this.workInProgress_ = pVar.r();
                                } else if (L != 16) {
                                    if (!parseUnknownField(pVar, h10, f0Var, L)) {
                                    }
                                } else {
                                    this.packageVersionStatus_ = pVar.u();
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

        public static StatusAnnotation parseFrom(InputStream inputStream, f0 f0Var) throws IOException {
            return (StatusAnnotation) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
        }

        public static StatusAnnotation parseFrom(p pVar) throws IOException {
            return (StatusAnnotation) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
        }

        public static StatusAnnotation parseFrom(p pVar, f0 f0Var) throws IOException {
            return (StatusAnnotation) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
        }
    }

    static {
        GeneratedMessage.l<DescriptorProtos.FileOptions, StatusAnnotation> newFileScopedGeneratedExtension = GeneratedMessage.newFileScopedGeneratedExtension(StatusAnnotation.class, StatusAnnotation.getDefaultInstance());
        f50839a = newFileScopedGeneratedExtension;
        f50842d = Descriptors.FileDescriptor.s(new String[]{"\n\u001dudpa/annotations/status.proto\u0012\u0010udpa.annotations\u001a google/protobuf/descriptor.proto\"t\n\u0010StatusAnnotation\u0012\u0018\n\u0010work_in_progress\u0018\u0001 \u0001(\b\u0012F\n\u0016package_version_status\u0018\u0002 \u0001(\u000e2&.udpa.annotations.PackageVersionStatus*]\n\u0014PackageVersionStatus\u0012\u000b\n\u0007UNKNOWN\u0010\u0000\u0012\n\n\u0006FROZEN\u0010\u0001\u0012\n\n\u0006ACTIVE\u0010\u0002\u0012 \n\u001cNEXT_MAJOR_VERSION_CANDIDATE\u0010\u0003:X\n\u000bfile_status\u0012\u001c.google.protobuf.FileOptions\u0018\u0087\u0080\u0099j \u0001(\u000b2\".udpa.annotations.StatusAnnotationB$Z\"github.com/cncf/xds/go/annotationsb\u0006proto3"}, new Descriptors.FileDescriptor[]{DescriptorProtos.c0()});
        Descriptors.b bVar = c().m().get(0);
        f50840b = bVar;
        f50841c = new GeneratedMessageV3.e(bVar, new String[]{"WorkInProgress", "PackageVersionStatus"});
        newFileScopedGeneratedExtension.g(f50842d.l().get(0));
        DescriptorProtos.c0();
    }

    public static Descriptors.FileDescriptor c() {
        return f50842d;
    }
}
