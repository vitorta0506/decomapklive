package io.opencensus.proto.trace.v1;

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
import com.google.protobuf.p;
import com.google.protobuf.q2;
import com.google.protobuf.r1;
import com.google.protobuf.u0;
import io.opencensus.proto.trace.v1.Module;
import io.opencensus.proto.trace.v1.TruncatableString;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Objects;
/* loaded from: classes7.dex */
public final class StackTrace extends GeneratedMessageV3 implements f {
    private static final StackTrace DEFAULT_INSTANCE = new StackTrace();
    private static final e2<StackTrace> PARSER = new a();
    public static final int STACK_FRAMES_FIELD_NUMBER = 1;
    public static final int STACK_TRACE_HASH_ID_FIELD_NUMBER = 2;
    private static final long serialVersionUID = 0;
    private byte memoizedIsInitialized;
    private StackFrames stackFrames_;
    private long stackTraceHashId_;

    /* loaded from: classes7.dex */
    public static final class StackFrame extends GeneratedMessageV3 implements c {
        public static final int COLUMN_NUMBER_FIELD_NUMBER = 5;
        public static final int FILE_NAME_FIELD_NUMBER = 3;
        public static final int FUNCTION_NAME_FIELD_NUMBER = 1;
        public static final int LINE_NUMBER_FIELD_NUMBER = 4;
        public static final int LOAD_MODULE_FIELD_NUMBER = 6;
        public static final int ORIGINAL_FUNCTION_NAME_FIELD_NUMBER = 2;
        public static final int SOURCE_VERSION_FIELD_NUMBER = 7;
        private static final long serialVersionUID = 0;
        private long columnNumber_;
        private TruncatableString fileName_;
        private TruncatableString functionName_;
        private long lineNumber_;
        private Module loadModule_;
        private byte memoizedIsInitialized;
        private TruncatableString originalFunctionName_;
        private TruncatableString sourceVersion_;
        private static final StackFrame DEFAULT_INSTANCE = new StackFrame();
        private static final e2<StackFrame> PARSER = new a();

        /* loaded from: classes7.dex */
        static class a extends com.google.protobuf.c<StackFrame> {
            a() {
            }

            @Override // com.google.protobuf.e2
            /* renamed from: G */
            public StackFrame m(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
                return new StackFrame(pVar, f0Var, null);
            }
        }

        /* loaded from: classes7.dex */
        public static final class b extends GeneratedMessageV3.b<b> implements c {

            /* renamed from: e  reason: collision with root package name */
            private TruncatableString f51188e;

            /* renamed from: f  reason: collision with root package name */
            private q2<TruncatableString, TruncatableString.b, k> f51189f;

            /* renamed from: g  reason: collision with root package name */
            private TruncatableString f51190g;

            /* renamed from: h  reason: collision with root package name */
            private q2<TruncatableString, TruncatableString.b, k> f51191h;

            /* renamed from: i  reason: collision with root package name */
            private TruncatableString f51192i;

            /* renamed from: j  reason: collision with root package name */
            private q2<TruncatableString, TruncatableString.b, k> f51193j;

            /* renamed from: k  reason: collision with root package name */
            private long f51194k;

            /* renamed from: l  reason: collision with root package name */
            private long f51195l;

            /* renamed from: m  reason: collision with root package name */
            private Module f51196m;

            /* renamed from: n  reason: collision with root package name */
            private q2<Module, Module.b, io.opencensus.proto.trace.v1.b> f51197n;

            /* renamed from: o  reason: collision with root package name */
            private TruncatableString f51198o;

            /* renamed from: p  reason: collision with root package name */
            private q2<TruncatableString, TruncatableString.b, k> f51199p;

            /* synthetic */ b(GeneratedMessageV3.c cVar, a aVar) {
                this(cVar);
            }

            private void b0() {
                boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b
            protected GeneratedMessageV3.e K() {
                return j.D.d(StackFrame.class, b.class);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
            /* renamed from: W */
            public b L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                return (b) super.L(fieldDescriptor, obj);
            }

            @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
            /* renamed from: X */
            public StackFrame build() {
                StackFrame I = I();
                if (I.isInitialized()) {
                    return I;
                }
                throw a.AbstractC0142a.A(I);
            }

            @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
            /* renamed from: Y */
            public StackFrame I() {
                StackFrame stackFrame = new StackFrame(this, (a) null);
                q2<TruncatableString, TruncatableString.b, k> q2Var = this.f51189f;
                if (q2Var == null) {
                    stackFrame.functionName_ = this.f51188e;
                } else {
                    stackFrame.functionName_ = q2Var.b();
                }
                q2<TruncatableString, TruncatableString.b, k> q2Var2 = this.f51191h;
                if (q2Var2 == null) {
                    stackFrame.originalFunctionName_ = this.f51190g;
                } else {
                    stackFrame.originalFunctionName_ = q2Var2.b();
                }
                q2<TruncatableString, TruncatableString.b, k> q2Var3 = this.f51193j;
                if (q2Var3 == null) {
                    stackFrame.fileName_ = this.f51192i;
                } else {
                    stackFrame.fileName_ = q2Var3.b();
                }
                stackFrame.lineNumber_ = this.f51194k;
                stackFrame.columnNumber_ = this.f51195l;
                q2<Module, Module.b, io.opencensus.proto.trace.v1.b> q2Var4 = this.f51197n;
                if (q2Var4 == null) {
                    stackFrame.loadModule_ = this.f51196m;
                } else {
                    stackFrame.loadModule_ = q2Var4.b();
                }
                q2<TruncatableString, TruncatableString.b, k> q2Var5 = this.f51199p;
                if (q2Var5 == null) {
                    stackFrame.sourceVersion_ = this.f51198o;
                } else {
                    stackFrame.sourceVersion_ = q2Var5.b();
                }
                Q();
                return stackFrame;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
            /* renamed from: Z */
            public b n() {
                return (b) super.n();
            }

            @Override // com.google.protobuf.p1, com.google.protobuf.r1
            /* renamed from: a0 */
            public StackFrame getDefaultInstanceForType() {
                return StackFrame.getDefaultInstance();
            }

            public b d0(TruncatableString truncatableString) {
                q2<TruncatableString, TruncatableString.b, k> q2Var = this.f51193j;
                if (q2Var == null) {
                    TruncatableString truncatableString2 = this.f51192i;
                    if (truncatableString2 != null) {
                        this.f51192i = TruncatableString.newBuilder(truncatableString2).g0(truncatableString).I();
                    } else {
                        this.f51192i = truncatableString;
                    }
                    R();
                } else {
                    q2Var.e(truncatableString);
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
            public io.opencensus.proto.trace.v1.StackTrace.StackFrame.b u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
                /*
                    r2 = this;
                    r0 = 0
                    com.google.protobuf.e2 r1 = io.opencensus.proto.trace.v1.StackTrace.StackFrame.access$1200()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                    java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                    io.opencensus.proto.trace.v1.StackTrace$StackFrame r3 = (io.opencensus.proto.trace.v1.StackTrace.StackFrame) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
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
                    io.opencensus.proto.trace.v1.StackTrace$StackFrame r4 = (io.opencensus.proto.trace.v1.StackTrace.StackFrame) r4     // Catch: java.lang.Throwable -> L11
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
                throw new UnsupportedOperationException("Method not decompiled: io.opencensus.proto.trace.v1.StackTrace.StackFrame.b.u(com.google.protobuf.p, com.google.protobuf.f0):io.opencensus.proto.trace.v1.StackTrace$StackFrame$b");
            }

            @Override // com.google.protobuf.a.AbstractC0142a
            /* renamed from: g0 */
            public b v(l1 l1Var) {
                if (l1Var instanceof StackFrame) {
                    return h0((StackFrame) l1Var);
                }
                super.P0(l1Var);
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
            public Descriptors.b getDescriptorForType() {
                return j.C;
            }

            public b h0(StackFrame stackFrame) {
                if (stackFrame == StackFrame.getDefaultInstance()) {
                    return this;
                }
                if (stackFrame.hasFunctionName()) {
                    i0(stackFrame.getFunctionName());
                }
                if (stackFrame.hasOriginalFunctionName()) {
                    k0(stackFrame.getOriginalFunctionName());
                }
                if (stackFrame.hasFileName()) {
                    d0(stackFrame.getFileName());
                }
                if (stackFrame.getLineNumber() != 0) {
                    q0(stackFrame.getLineNumber());
                }
                if (stackFrame.getColumnNumber() != 0) {
                    n0(stackFrame.getColumnNumber());
                }
                if (stackFrame.hasLoadModule()) {
                    j0(stackFrame.getLoadModule());
                }
                if (stackFrame.hasSourceVersion()) {
                    l0(stackFrame.getSourceVersion());
                }
                z(((GeneratedMessageV3) stackFrame).unknownFields);
                R();
                return this;
            }

            public b i0(TruncatableString truncatableString) {
                q2<TruncatableString, TruncatableString.b, k> q2Var = this.f51189f;
                if (q2Var == null) {
                    TruncatableString truncatableString2 = this.f51188e;
                    if (truncatableString2 != null) {
                        this.f51188e = TruncatableString.newBuilder(truncatableString2).g0(truncatableString).I();
                    } else {
                        this.f51188e = truncatableString;
                    }
                    R();
                } else {
                    q2Var.e(truncatableString);
                }
                return this;
            }

            public b j0(Module module) {
                q2<Module, Module.b, io.opencensus.proto.trace.v1.b> q2Var = this.f51197n;
                if (q2Var == null) {
                    Module module2 = this.f51196m;
                    if (module2 != null) {
                        this.f51196m = Module.newBuilder(module2).h0(module).I();
                    } else {
                        this.f51196m = module;
                    }
                    R();
                } else {
                    q2Var.e(module);
                }
                return this;
            }

            public b k0(TruncatableString truncatableString) {
                q2<TruncatableString, TruncatableString.b, k> q2Var = this.f51191h;
                if (q2Var == null) {
                    TruncatableString truncatableString2 = this.f51190g;
                    if (truncatableString2 != null) {
                        this.f51190g = TruncatableString.newBuilder(truncatableString2).g0(truncatableString).I();
                    } else {
                        this.f51190g = truncatableString;
                    }
                    R();
                } else {
                    q2Var.e(truncatableString);
                }
                return this;
            }

            public b l0(TruncatableString truncatableString) {
                q2<TruncatableString, TruncatableString.b, k> q2Var = this.f51199p;
                if (q2Var == null) {
                    TruncatableString truncatableString2 = this.f51198o;
                    if (truncatableString2 != null) {
                        this.f51198o = TruncatableString.newBuilder(truncatableString2).g0(truncatableString).I();
                    } else {
                        this.f51198o = truncatableString;
                    }
                    R();
                } else {
                    q2Var.e(truncatableString);
                }
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
            /* renamed from: m0 */
            public final b z(h3 h3Var) {
                return (b) super.z(h3Var);
            }

            public b n0(long j10) {
                this.f51195l = j10;
                R();
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
            /* renamed from: o0 */
            public b c(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                return (b) super.c(fieldDescriptor, obj);
            }

            public b q0(long j10) {
                this.f51194k = j10;
                R();
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
            /* renamed from: r0 */
            public final b f1(h3 h3Var) {
                return (b) super.V(h3Var);
            }

            /* synthetic */ b(a aVar) {
                this();
            }

            private b() {
                this.f51188e = null;
                this.f51190g = null;
                this.f51192i = null;
                this.f51196m = null;
                this.f51198o = null;
                b0();
            }

            private b(GeneratedMessageV3.c cVar) {
                super(cVar);
                this.f51188e = null;
                this.f51190g = null;
                this.f51192i = null;
                this.f51196m = null;
                this.f51198o = null;
                b0();
            }
        }

        /* synthetic */ StackFrame(p pVar, f0 f0Var, a aVar) throws InvalidProtocolBufferException {
            this(pVar, f0Var);
        }

        public static StackFrame getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static final Descriptors.b getDescriptor() {
            return j.C;
        }

        public static b newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static StackFrame parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (StackFrame) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static StackFrame parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.l(byteBuffer);
        }

        public static e2<StackFrame> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.a
        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof StackFrame)) {
                return super.equals(obj);
            }
            StackFrame stackFrame = (StackFrame) obj;
            boolean z10 = hasFunctionName() == stackFrame.hasFunctionName();
            if (hasFunctionName()) {
                z10 = z10 && getFunctionName().equals(stackFrame.getFunctionName());
            }
            boolean z11 = z10 && hasOriginalFunctionName() == stackFrame.hasOriginalFunctionName();
            if (hasOriginalFunctionName()) {
                z11 = z11 && getOriginalFunctionName().equals(stackFrame.getOriginalFunctionName());
            }
            boolean z12 = z11 && hasFileName() == stackFrame.hasFileName();
            if (hasFileName()) {
                z12 = z12 && getFileName().equals(stackFrame.getFileName());
            }
            boolean z13 = ((z12 && (getLineNumber() > stackFrame.getLineNumber() ? 1 : (getLineNumber() == stackFrame.getLineNumber() ? 0 : -1)) == 0) && (getColumnNumber() > stackFrame.getColumnNumber() ? 1 : (getColumnNumber() == stackFrame.getColumnNumber() ? 0 : -1)) == 0) && hasLoadModule() == stackFrame.hasLoadModule();
            if (hasLoadModule()) {
                z13 = z13 && getLoadModule().equals(stackFrame.getLoadModule());
            }
            boolean z14 = z13 && hasSourceVersion() == stackFrame.hasSourceVersion();
            if (hasSourceVersion()) {
                z14 = z14 && getSourceVersion().equals(stackFrame.getSourceVersion());
            }
            return z14 && this.unknownFields.equals(stackFrame.unknownFields);
        }

        public long getColumnNumber() {
            return this.columnNumber_;
        }

        public TruncatableString getFileName() {
            TruncatableString truncatableString = this.fileName_;
            return truncatableString == null ? TruncatableString.getDefaultInstance() : truncatableString;
        }

        public k getFileNameOrBuilder() {
            return getFileName();
        }

        public TruncatableString getFunctionName() {
            TruncatableString truncatableString = this.functionName_;
            return truncatableString == null ? TruncatableString.getDefaultInstance() : truncatableString;
        }

        public k getFunctionNameOrBuilder() {
            return getFunctionName();
        }

        public long getLineNumber() {
            return this.lineNumber_;
        }

        public Module getLoadModule() {
            Module module = this.loadModule_;
            return module == null ? Module.getDefaultInstance() : module;
        }

        public io.opencensus.proto.trace.v1.b getLoadModuleOrBuilder() {
            return getLoadModule();
        }

        public TruncatableString getOriginalFunctionName() {
            TruncatableString truncatableString = this.originalFunctionName_;
            return truncatableString == null ? TruncatableString.getDefaultInstance() : truncatableString;
        }

        public k getOriginalFunctionNameOrBuilder() {
            return getOriginalFunctionName();
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
        public e2<StackFrame> getParserForType() {
            return PARSER;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
        public int getSerializedSize() {
            int i9 = this.memoizedSize;
            if (i9 != -1) {
                return i9;
            }
            int G = this.functionName_ != null ? 0 + CodedOutputStream.G(1, getFunctionName()) : 0;
            if (this.originalFunctionName_ != null) {
                G += CodedOutputStream.G(2, getOriginalFunctionName());
            }
            if (this.fileName_ != null) {
                G += CodedOutputStream.G(3, getFileName());
            }
            long j10 = this.lineNumber_;
            if (j10 != 0) {
                G += CodedOutputStream.z(4, j10);
            }
            long j11 = this.columnNumber_;
            if (j11 != 0) {
                G += CodedOutputStream.z(5, j11);
            }
            if (this.loadModule_ != null) {
                G += CodedOutputStream.G(6, getLoadModule());
            }
            if (this.sourceVersion_ != null) {
                G += CodedOutputStream.G(7, getSourceVersion());
            }
            int serializedSize = G + this.unknownFields.getSerializedSize();
            this.memoizedSize = serializedSize;
            return serializedSize;
        }

        public TruncatableString getSourceVersion() {
            TruncatableString truncatableString = this.sourceVersion_;
            return truncatableString == null ? TruncatableString.getDefaultInstance() : truncatableString;
        }

        public k getSourceVersionOrBuilder() {
            return getSourceVersion();
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.r1
        public final h3 getUnknownFields() {
            return this.unknownFields;
        }

        public boolean hasFileName() {
            return this.fileName_ != null;
        }

        public boolean hasFunctionName() {
            return this.functionName_ != null;
        }

        public boolean hasLoadModule() {
            return this.loadModule_ != null;
        }

        public boolean hasOriginalFunctionName() {
            return this.originalFunctionName_ != null;
        }

        public boolean hasSourceVersion() {
            return this.sourceVersion_ != null;
        }

        @Override // com.google.protobuf.a
        public int hashCode() {
            int i9 = this.memoizedHashCode;
            if (i9 != 0) {
                return i9;
            }
            int hashCode = 779 + getDescriptor().hashCode();
            if (hasFunctionName()) {
                hashCode = (((hashCode * 37) + 1) * 53) + getFunctionName().hashCode();
            }
            if (hasOriginalFunctionName()) {
                hashCode = (((hashCode * 37) + 2) * 53) + getOriginalFunctionName().hashCode();
            }
            if (hasFileName()) {
                hashCode = (((hashCode * 37) + 3) * 53) + getFileName().hashCode();
            }
            int i10 = (((((((hashCode * 37) + 4) * 53) + u0.i(getLineNumber())) * 37) + 5) * 53) + u0.i(getColumnNumber());
            if (hasLoadModule()) {
                i10 = (((i10 * 37) + 6) * 53) + getLoadModule().hashCode();
            }
            if (hasSourceVersion()) {
                i10 = (((i10 * 37) + 7) * 53) + getSourceVersion().hashCode();
            }
            int hashCode2 = (i10 * 29) + this.unknownFields.hashCode();
            this.memoizedHashCode = hashCode2;
            return hashCode2;
        }

        @Override // com.google.protobuf.GeneratedMessageV3
        protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
            return j.D.d(StackFrame.class, b.class);
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
            if (this.functionName_ != null) {
                codedOutputStream.L0(1, getFunctionName());
            }
            if (this.originalFunctionName_ != null) {
                codedOutputStream.L0(2, getOriginalFunctionName());
            }
            if (this.fileName_ != null) {
                codedOutputStream.L0(3, getFileName());
            }
            long j10 = this.lineNumber_;
            if (j10 != 0) {
                codedOutputStream.J0(4, j10);
            }
            long j11 = this.columnNumber_;
            if (j11 != 0) {
                codedOutputStream.J0(5, j11);
            }
            if (this.loadModule_ != null) {
                codedOutputStream.L0(6, getLoadModule());
            }
            if (this.sourceVersion_ != null) {
                codedOutputStream.L0(7, getSourceVersion());
            }
            this.unknownFields.writeTo(codedOutputStream);
        }

        /* synthetic */ StackFrame(GeneratedMessageV3.b bVar, a aVar) {
            this(bVar);
        }

        public static b newBuilder(StackFrame stackFrame) {
            return DEFAULT_INSTANCE.toBuilder().h0(stackFrame);
        }

        public static StackFrame parseFrom(ByteBuffer byteBuffer, f0 f0Var) throws InvalidProtocolBufferException {
            return PARSER.f(byteBuffer, f0Var);
        }

        private StackFrame(GeneratedMessageV3.b<?> bVar) {
            super(bVar);
            this.memoizedIsInitialized = (byte) -1;
        }

        public static StackFrame parseDelimitedFrom(InputStream inputStream, f0 f0Var) throws IOException {
            return (StackFrame) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
        }

        public static StackFrame parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.c(byteString);
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.p1, com.google.protobuf.r1
        public StackFrame getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
        public b toBuilder() {
            return this == DEFAULT_INSTANCE ? new b((a) null) : new b((a) null).h0(this);
        }

        public static StackFrame parseFrom(ByteString byteString, f0 f0Var) throws InvalidProtocolBufferException {
            return PARSER.b(byteString, f0Var);
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
        public b newBuilderForType() {
            return newBuilder();
        }

        private StackFrame() {
            this.memoizedIsInitialized = (byte) -1;
            this.lineNumber_ = 0L;
            this.columnNumber_ = 0L;
        }

        public static StackFrame parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.a(bArr);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.protobuf.GeneratedMessageV3
        public b newBuilderForType(GeneratedMessageV3.c cVar) {
            return new b(cVar, null);
        }

        public static StackFrame parseFrom(byte[] bArr, f0 f0Var) throws InvalidProtocolBufferException {
            return PARSER.g(bArr, f0Var);
        }

        public static StackFrame parseFrom(InputStream inputStream) throws IOException {
            return (StackFrame) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
        }

        private StackFrame(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
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
                                TruncatableString truncatableString = this.functionName_;
                                TruncatableString.b builder = truncatableString != null ? truncatableString.toBuilder() : null;
                                TruncatableString truncatableString2 = (TruncatableString) pVar.B(TruncatableString.parser(), f0Var);
                                this.functionName_ = truncatableString2;
                                if (builder != null) {
                                    builder.g0(truncatableString2);
                                    this.functionName_ = builder.I();
                                }
                            } else if (L == 18) {
                                TruncatableString truncatableString3 = this.originalFunctionName_;
                                TruncatableString.b builder2 = truncatableString3 != null ? truncatableString3.toBuilder() : null;
                                TruncatableString truncatableString4 = (TruncatableString) pVar.B(TruncatableString.parser(), f0Var);
                                this.originalFunctionName_ = truncatableString4;
                                if (builder2 != null) {
                                    builder2.g0(truncatableString4);
                                    this.originalFunctionName_ = builder2.I();
                                }
                            } else if (L == 26) {
                                TruncatableString truncatableString5 = this.fileName_;
                                TruncatableString.b builder3 = truncatableString5 != null ? truncatableString5.toBuilder() : null;
                                TruncatableString truncatableString6 = (TruncatableString) pVar.B(TruncatableString.parser(), f0Var);
                                this.fileName_ = truncatableString6;
                                if (builder3 != null) {
                                    builder3.g0(truncatableString6);
                                    this.fileName_ = builder3.I();
                                }
                            } else if (L == 32) {
                                this.lineNumber_ = pVar.A();
                            } else if (L == 40) {
                                this.columnNumber_ = pVar.A();
                            } else if (L == 50) {
                                Module module = this.loadModule_;
                                Module.b builder4 = module != null ? module.toBuilder() : null;
                                Module module2 = (Module) pVar.B(Module.parser(), f0Var);
                                this.loadModule_ = module2;
                                if (builder4 != null) {
                                    builder4.h0(module2);
                                    this.loadModule_ = builder4.I();
                                }
                            } else if (L != 58) {
                                if (!parseUnknownFieldProto3(pVar, h10, f0Var, L)) {
                                }
                            } else {
                                TruncatableString truncatableString7 = this.sourceVersion_;
                                TruncatableString.b builder5 = truncatableString7 != null ? truncatableString7.toBuilder() : null;
                                TruncatableString truncatableString8 = (TruncatableString) pVar.B(TruncatableString.parser(), f0Var);
                                this.sourceVersion_ = truncatableString8;
                                if (builder5 != null) {
                                    builder5.g0(truncatableString8);
                                    this.sourceVersion_ = builder5.I();
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

        public static StackFrame parseFrom(InputStream inputStream, f0 f0Var) throws IOException {
            return (StackFrame) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
        }

        public static StackFrame parseFrom(p pVar) throws IOException {
            return (StackFrame) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
        }

        public static StackFrame parseFrom(p pVar, f0 f0Var) throws IOException {
            return (StackFrame) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
        }
    }

    /* loaded from: classes7.dex */
    public static final class StackFrames extends GeneratedMessageV3 implements d {
        public static final int DROPPED_FRAMES_COUNT_FIELD_NUMBER = 2;
        public static final int FRAME_FIELD_NUMBER = 1;
        private static final long serialVersionUID = 0;
        private int bitField0_;
        private int droppedFramesCount_;
        private List<StackFrame> frame_;
        private byte memoizedIsInitialized;
        private static final StackFrames DEFAULT_INSTANCE = new StackFrames();
        private static final e2<StackFrames> PARSER = new a();

        /* loaded from: classes7.dex */
        static class a extends com.google.protobuf.c<StackFrames> {
            a() {
            }

            @Override // com.google.protobuf.e2
            /* renamed from: G */
            public StackFrames m(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
                return new StackFrames(pVar, f0Var, null);
            }
        }

        /* loaded from: classes7.dex */
        public static final class b extends GeneratedMessageV3.b<b> implements d {

            /* renamed from: e  reason: collision with root package name */
            private int f51200e;

            /* renamed from: f  reason: collision with root package name */
            private List<StackFrame> f51201f;

            /* renamed from: g  reason: collision with root package name */
            private l2<StackFrame, StackFrame.b, c> f51202g;

            /* renamed from: h  reason: collision with root package name */
            private int f51203h;

            /* synthetic */ b(GeneratedMessageV3.c cVar, a aVar) {
                this(cVar);
            }

            private void a0() {
                if ((this.f51200e & 1) != 1) {
                    this.f51201f = new ArrayList(this.f51201f);
                    this.f51200e |= 1;
                }
            }

            private l2<StackFrame, StackFrame.b, c> d0() {
                if (this.f51202g == null) {
                    this.f51202g = new l2<>(this.f51201f, (this.f51200e & 1) == 1, H(), O());
                    this.f51201f = null;
                }
                return this.f51202g;
            }

            private void e0() {
                if (GeneratedMessageV3.alwaysUseFieldBuilders) {
                    d0();
                }
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b
            protected GeneratedMessageV3.e K() {
                return j.F.d(StackFrames.class, b.class);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
            /* renamed from: W */
            public b L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                return (b) super.L(fieldDescriptor, obj);
            }

            @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
            /* renamed from: X */
            public StackFrames build() {
                StackFrames I = I();
                if (I.isInitialized()) {
                    return I;
                }
                throw a.AbstractC0142a.A(I);
            }

            @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
            /* renamed from: Y */
            public StackFrames I() {
                StackFrames stackFrames = new StackFrames(this, (a) null);
                int i9 = this.f51200e;
                l2<StackFrame, StackFrame.b, c> l2Var = this.f51202g;
                if (l2Var == null) {
                    if ((i9 & 1) == 1) {
                        this.f51201f = Collections.unmodifiableList(this.f51201f);
                        this.f51200e &= -2;
                    }
                    stackFrames.frame_ = this.f51201f;
                } else {
                    stackFrames.frame_ = l2Var.e();
                }
                stackFrames.droppedFramesCount_ = this.f51203h;
                stackFrames.bitField0_ = 0;
                Q();
                return stackFrames;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
            /* renamed from: Z */
            public b n() {
                return (b) super.n();
            }

            @Override // com.google.protobuf.p1, com.google.protobuf.r1
            /* renamed from: b0 */
            public StackFrames getDefaultInstanceForType() {
                return StackFrames.getDefaultInstance();
            }

            /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
            @Override // com.google.protobuf.a.AbstractC0142a
            /* renamed from: g0 */
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public io.opencensus.proto.trace.v1.StackTrace.StackFrames.b u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
                /*
                    r2 = this;
                    r0 = 0
                    com.google.protobuf.e2 r1 = io.opencensus.proto.trace.v1.StackTrace.StackFrames.access$2300()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                    java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                    io.opencensus.proto.trace.v1.StackTrace$StackFrames r3 = (io.opencensus.proto.trace.v1.StackTrace.StackFrames) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
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
                    io.opencensus.proto.trace.v1.StackTrace$StackFrames r4 = (io.opencensus.proto.trace.v1.StackTrace.StackFrames) r4     // Catch: java.lang.Throwable -> L11
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
                throw new UnsupportedOperationException("Method not decompiled: io.opencensus.proto.trace.v1.StackTrace.StackFrames.b.u(com.google.protobuf.p, com.google.protobuf.f0):io.opencensus.proto.trace.v1.StackTrace$StackFrames$b");
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
            public Descriptors.b getDescriptorForType() {
                return j.E;
            }

            @Override // com.google.protobuf.a.AbstractC0142a
            /* renamed from: h0 */
            public b v(l1 l1Var) {
                if (l1Var instanceof StackFrames) {
                    return i0((StackFrames) l1Var);
                }
                super.P0(l1Var);
                return this;
            }

            public b i0(StackFrames stackFrames) {
                if (stackFrames == StackFrames.getDefaultInstance()) {
                    return this;
                }
                if (this.f51202g == null) {
                    if (!stackFrames.frame_.isEmpty()) {
                        if (this.f51201f.isEmpty()) {
                            this.f51201f = stackFrames.frame_;
                            this.f51200e &= -2;
                        } else {
                            a0();
                            this.f51201f.addAll(stackFrames.frame_);
                        }
                        R();
                    }
                } else if (!stackFrames.frame_.isEmpty()) {
                    if (this.f51202g.k()) {
                        this.f51202g.f();
                        this.f51202g = null;
                        this.f51201f = stackFrames.frame_;
                        this.f51200e &= -2;
                        this.f51202g = GeneratedMessageV3.alwaysUseFieldBuilders ? d0() : null;
                    } else {
                        this.f51202g.b(stackFrames.frame_);
                    }
                }
                if (stackFrames.getDroppedFramesCount() != 0) {
                    k0(stackFrames.getDroppedFramesCount());
                }
                z(((GeneratedMessageV3) stackFrames).unknownFields);
                R();
                return this;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
            /* renamed from: j0 */
            public final b z(h3 h3Var) {
                return (b) super.z(h3Var);
            }

            public b k0(int i9) {
                this.f51203h = i9;
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
                this.f51201f = Collections.emptyList();
                e0();
            }

            private b(GeneratedMessageV3.c cVar) {
                super(cVar);
                this.f51201f = Collections.emptyList();
                e0();
            }
        }

        /* synthetic */ StackFrames(p pVar, f0 f0Var, a aVar) throws InvalidProtocolBufferException {
            this(pVar, f0Var);
        }

        public static StackFrames getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static final Descriptors.b getDescriptor() {
            return j.E;
        }

        public static b newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static StackFrames parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (StackFrames) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static StackFrames parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.l(byteBuffer);
        }

        public static e2<StackFrames> parser() {
            return PARSER;
        }

        @Override // com.google.protobuf.a
        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof StackFrames)) {
                return super.equals(obj);
            }
            StackFrames stackFrames = (StackFrames) obj;
            return ((getFrameList().equals(stackFrames.getFrameList())) && getDroppedFramesCount() == stackFrames.getDroppedFramesCount()) && this.unknownFields.equals(stackFrames.unknownFields);
        }

        public int getDroppedFramesCount() {
            return this.droppedFramesCount_;
        }

        public StackFrame getFrame(int i9) {
            return this.frame_.get(i9);
        }

        public int getFrameCount() {
            return this.frame_.size();
        }

        public List<StackFrame> getFrameList() {
            return this.frame_;
        }

        public c getFrameOrBuilder(int i9) {
            return this.frame_.get(i9);
        }

        public List<? extends c> getFrameOrBuilderList() {
            return this.frame_;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
        public e2<StackFrames> getParserForType() {
            return PARSER;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
        public int getSerializedSize() {
            int i9 = this.memoizedSize;
            if (i9 != -1) {
                return i9;
            }
            int i10 = 0;
            for (int i11 = 0; i11 < this.frame_.size(); i11++) {
                i10 += CodedOutputStream.G(1, this.frame_.get(i11));
            }
            int i12 = this.droppedFramesCount_;
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
            if (getFrameCount() > 0) {
                hashCode = (((hashCode * 37) + 1) * 53) + getFrameList().hashCode();
            }
            int droppedFramesCount = (((((hashCode * 37) + 2) * 53) + getDroppedFramesCount()) * 29) + this.unknownFields.hashCode();
            this.memoizedHashCode = droppedFramesCount;
            return droppedFramesCount;
        }

        @Override // com.google.protobuf.GeneratedMessageV3
        protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
            return j.F.d(StackFrames.class, b.class);
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
            for (int i9 = 0; i9 < this.frame_.size(); i9++) {
                codedOutputStream.L0(1, this.frame_.get(i9));
            }
            int i10 = this.droppedFramesCount_;
            if (i10 != 0) {
                codedOutputStream.H0(2, i10);
            }
            this.unknownFields.writeTo(codedOutputStream);
        }

        /* synthetic */ StackFrames(GeneratedMessageV3.b bVar, a aVar) {
            this(bVar);
        }

        public static b newBuilder(StackFrames stackFrames) {
            return DEFAULT_INSTANCE.toBuilder().i0(stackFrames);
        }

        public static StackFrames parseFrom(ByteBuffer byteBuffer, f0 f0Var) throws InvalidProtocolBufferException {
            return PARSER.f(byteBuffer, f0Var);
        }

        private StackFrames(GeneratedMessageV3.b<?> bVar) {
            super(bVar);
            this.memoizedIsInitialized = (byte) -1;
        }

        public static StackFrames parseDelimitedFrom(InputStream inputStream, f0 f0Var) throws IOException {
            return (StackFrames) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
        }

        public static StackFrames parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.c(byteString);
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.p1, com.google.protobuf.r1
        public StackFrames getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
        public b toBuilder() {
            return this == DEFAULT_INSTANCE ? new b((a) null) : new b((a) null).i0(this);
        }

        public static StackFrames parseFrom(ByteString byteString, f0 f0Var) throws InvalidProtocolBufferException {
            return PARSER.b(byteString, f0Var);
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
        public b newBuilderForType() {
            return newBuilder();
        }

        private StackFrames() {
            this.memoizedIsInitialized = (byte) -1;
            this.frame_ = Collections.emptyList();
            this.droppedFramesCount_ = 0;
        }

        public static StackFrames parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.a(bArr);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.protobuf.GeneratedMessageV3
        public b newBuilderForType(GeneratedMessageV3.c cVar) {
            return new b(cVar, null);
        }

        public static StackFrames parseFrom(byte[] bArr, f0 f0Var) throws InvalidProtocolBufferException {
            return PARSER.g(bArr, f0Var);
        }

        public static StackFrames parseFrom(InputStream inputStream) throws IOException {
            return (StackFrames) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
        }

        /* JADX WARN: Multi-variable type inference failed */
        private StackFrames(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
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
                                    this.frame_ = new ArrayList();
                                    z11 |= true;
                                }
                                this.frame_.add(pVar.B(StackFrame.parser(), f0Var));
                            } else if (L != 16) {
                                if (!parseUnknownFieldProto3(pVar, h10, f0Var, L)) {
                                }
                            } else {
                                this.droppedFramesCount_ = pVar.z();
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
                        this.frame_ = Collections.unmodifiableList(this.frame_);
                    }
                    this.unknownFields = h10.build();
                    makeExtensionsImmutable();
                }
            }
        }

        public static StackFrames parseFrom(InputStream inputStream, f0 f0Var) throws IOException {
            return (StackFrames) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
        }

        public static StackFrames parseFrom(p pVar) throws IOException {
            return (StackFrames) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
        }

        public static StackFrames parseFrom(p pVar, f0 f0Var) throws IOException {
            return (StackFrames) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes7.dex */
    public static class a extends com.google.protobuf.c<StackTrace> {
        a() {
        }

        @Override // com.google.protobuf.e2
        /* renamed from: G */
        public StackTrace m(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
            return new StackTrace(pVar, f0Var, null);
        }
    }

    /* loaded from: classes7.dex */
    public static final class b extends GeneratedMessageV3.b<b> implements f {

        /* renamed from: e  reason: collision with root package name */
        private StackFrames f51204e;

        /* renamed from: f  reason: collision with root package name */
        private q2<StackFrames, StackFrames.b, d> f51205f;

        /* renamed from: g  reason: collision with root package name */
        private long f51206g;

        /* synthetic */ b(GeneratedMessageV3.c cVar, a aVar) {
            this(cVar);
        }

        private void b0() {
            boolean unused = GeneratedMessageV3.alwaysUseFieldBuilders;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b
        protected GeneratedMessageV3.e K() {
            return j.B.d(StackTrace.class, b.class);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: W */
        public b L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (b) super.L(fieldDescriptor, obj);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: X */
        public StackTrace build() {
            StackTrace I = I();
            if (I.isInitialized()) {
                return I;
            }
            throw a.AbstractC0142a.A(I);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: Y */
        public StackTrace I() {
            StackTrace stackTrace = new StackTrace(this, (a) null);
            q2<StackFrames, StackFrames.b, d> q2Var = this.f51205f;
            if (q2Var == null) {
                stackTrace.stackFrames_ = this.f51204e;
            } else {
                stackTrace.stackFrames_ = q2Var.b();
            }
            stackTrace.stackTraceHashId_ = this.f51206g;
            Q();
            return stackTrace;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.a.AbstractC0142a
        /* renamed from: Z */
        public b n() {
            return (b) super.n();
        }

        @Override // com.google.protobuf.p1, com.google.protobuf.r1
        /* renamed from: a0 */
        public StackTrace getDefaultInstanceForType() {
            return StackTrace.getDefaultInstance();
        }

        /* JADX WARN: Removed duplicated region for block: B:16:0x0023  */
        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: d0 */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public io.opencensus.proto.trace.v1.StackTrace.b u(com.google.protobuf.p r3, com.google.protobuf.f0 r4) throws java.io.IOException {
            /*
                r2 = this;
                r0 = 0
                com.google.protobuf.e2 r1 = io.opencensus.proto.trace.v1.StackTrace.access$3200()     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                java.lang.Object r3 = r1.m(r3, r4)     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
                io.opencensus.proto.trace.v1.StackTrace r3 = (io.opencensus.proto.trace.v1.StackTrace) r3     // Catch: java.lang.Throwable -> L11 com.google.protobuf.InvalidProtocolBufferException -> L13
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
                io.opencensus.proto.trace.v1.StackTrace r4 = (io.opencensus.proto.trace.v1.StackTrace) r4     // Catch: java.lang.Throwable -> L11
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
            throw new UnsupportedOperationException("Method not decompiled: io.opencensus.proto.trace.v1.StackTrace.b.u(com.google.protobuf.p, com.google.protobuf.f0):io.opencensus.proto.trace.v1.StackTrace$b");
        }

        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: e0 */
        public b v(l1 l1Var) {
            if (l1Var instanceof StackTrace) {
                return g0((StackTrace) l1Var);
            }
            super.P0(l1Var);
            return this;
        }

        public b g0(StackTrace stackTrace) {
            if (stackTrace == StackTrace.getDefaultInstance()) {
                return this;
            }
            if (stackTrace.hasStackFrames()) {
                h0(stackTrace.getStackFrames());
            }
            if (stackTrace.getStackTraceHashId() != 0) {
                k0(stackTrace.getStackTraceHashId());
            }
            z(((GeneratedMessageV3) stackTrace).unknownFields);
            R();
            return this;
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a, com.google.protobuf.r1
        public Descriptors.b getDescriptorForType() {
            return j.A;
        }

        public b h0(StackFrames stackFrames) {
            q2<StackFrames, StackFrames.b, d> q2Var = this.f51205f;
            if (q2Var == null) {
                StackFrames stackFrames2 = this.f51204e;
                if (stackFrames2 != null) {
                    this.f51204e = StackFrames.newBuilder(stackFrames2).i0(stackFrames).I();
                } else {
                    this.f51204e = stackFrames;
                }
                R();
            } else {
                q2Var.e(stackFrames);
            }
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

        public b k0(long j10) {
            this.f51206g = j10;
            R();
            return this;
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
            this.f51204e = null;
            b0();
        }

        private b(GeneratedMessageV3.c cVar) {
            super(cVar);
            this.f51204e = null;
            b0();
        }
    }

    /* loaded from: classes7.dex */
    public interface c extends r1 {
    }

    /* loaded from: classes7.dex */
    public interface d extends r1 {
    }

    /* synthetic */ StackTrace(p pVar, f0 f0Var, a aVar) throws InvalidProtocolBufferException {
        this(pVar, f0Var);
    }

    public static StackTrace getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static final Descriptors.b getDescriptor() {
        return j.A;
    }

    public static b newBuilder() {
        return DEFAULT_INSTANCE.toBuilder();
    }

    public static StackTrace parseDelimitedFrom(InputStream inputStream) throws IOException {
        return (StackTrace) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
    }

    public static StackTrace parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
        return PARSER.l(byteBuffer);
    }

    public static e2<StackTrace> parser() {
        return PARSER;
    }

    @Override // com.google.protobuf.a
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof StackTrace)) {
            return super.equals(obj);
        }
        StackTrace stackTrace = (StackTrace) obj;
        boolean z10 = hasStackFrames() == stackTrace.hasStackFrames();
        if (hasStackFrames()) {
            z10 = z10 && getStackFrames().equals(stackTrace.getStackFrames());
        }
        return (z10 && (getStackTraceHashId() > stackTrace.getStackTraceHashId() ? 1 : (getStackTraceHashId() == stackTrace.getStackTraceHashId() ? 0 : -1)) == 0) && this.unknownFields.equals(stackTrace.unknownFields);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public e2<StackTrace> getParserForType() {
        return PARSER;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.o1
    public int getSerializedSize() {
        int i9 = this.memoizedSize;
        if (i9 != -1) {
            return i9;
        }
        int G = this.stackFrames_ != null ? 0 + CodedOutputStream.G(1, getStackFrames()) : 0;
        long j10 = this.stackTraceHashId_;
        if (j10 != 0) {
            G += CodedOutputStream.a0(2, j10);
        }
        int serializedSize = G + this.unknownFields.getSerializedSize();
        this.memoizedSize = serializedSize;
        return serializedSize;
    }

    public StackFrames getStackFrames() {
        StackFrames stackFrames = this.stackFrames_;
        return stackFrames == null ? StackFrames.getDefaultInstance() : stackFrames;
    }

    public d getStackFramesOrBuilder() {
        return getStackFrames();
    }

    public long getStackTraceHashId() {
        return this.stackTraceHashId_;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.r1
    public final h3 getUnknownFields() {
        return this.unknownFields;
    }

    public boolean hasStackFrames() {
        return this.stackFrames_ != null;
    }

    @Override // com.google.protobuf.a
    public int hashCode() {
        int i9 = this.memoizedHashCode;
        if (i9 != 0) {
            return i9;
        }
        int hashCode = 779 + getDescriptor().hashCode();
        if (hasStackFrames()) {
            hashCode = (((hashCode * 37) + 1) * 53) + getStackFrames().hashCode();
        }
        int i10 = (((((hashCode * 37) + 2) * 53) + u0.i(getStackTraceHashId())) * 29) + this.unknownFields.hashCode();
        this.memoizedHashCode = i10;
        return i10;
    }

    @Override // com.google.protobuf.GeneratedMessageV3
    protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
        return j.B.d(StackTrace.class, b.class);
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
        if (this.stackFrames_ != null) {
            codedOutputStream.L0(1, getStackFrames());
        }
        long j10 = this.stackTraceHashId_;
        if (j10 != 0) {
            codedOutputStream.e1(2, j10);
        }
        this.unknownFields.writeTo(codedOutputStream);
    }

    /* synthetic */ StackTrace(GeneratedMessageV3.b bVar, a aVar) {
        this(bVar);
    }

    public static b newBuilder(StackTrace stackTrace) {
        return DEFAULT_INSTANCE.toBuilder().g0(stackTrace);
    }

    public static StackTrace parseFrom(ByteBuffer byteBuffer, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.f(byteBuffer, f0Var);
    }

    private StackTrace(GeneratedMessageV3.b<?> bVar) {
        super(bVar);
        this.memoizedIsInitialized = (byte) -1;
    }

    public static StackTrace parseDelimitedFrom(InputStream inputStream, f0 f0Var) throws IOException {
        return (StackTrace) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, f0Var);
    }

    public static StackTrace parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
        return PARSER.c(byteString);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.p1, com.google.protobuf.r1
    public StackTrace getDefaultInstanceForType() {
        return DEFAULT_INSTANCE;
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public b toBuilder() {
        return this == DEFAULT_INSTANCE ? new b((a) null) : new b((a) null).g0(this);
    }

    public static StackTrace parseFrom(ByteString byteString, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.b(byteString, f0Var);
    }

    @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
    public b newBuilderForType() {
        return newBuilder();
    }

    private StackTrace() {
        this.memoizedIsInitialized = (byte) -1;
        this.stackTraceHashId_ = 0L;
    }

    public static StackTrace parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
        return PARSER.a(bArr);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.protobuf.GeneratedMessageV3
    public b newBuilderForType(GeneratedMessageV3.c cVar) {
        return new b(cVar, null);
    }

    public static StackTrace parseFrom(byte[] bArr, f0 f0Var) throws InvalidProtocolBufferException {
        return PARSER.g(bArr, f0Var);
    }

    public static StackTrace parseFrom(InputStream inputStream) throws IOException {
        return (StackTrace) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
    }

    private StackTrace(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
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
                            StackFrames stackFrames = this.stackFrames_;
                            StackFrames.b builder = stackFrames != null ? stackFrames.toBuilder() : null;
                            StackFrames stackFrames2 = (StackFrames) pVar.B(StackFrames.parser(), f0Var);
                            this.stackFrames_ = stackFrames2;
                            if (builder != null) {
                                builder.i0(stackFrames2);
                                this.stackFrames_ = builder.I();
                            }
                        } else if (L != 16) {
                            if (!parseUnknownFieldProto3(pVar, h10, f0Var, L)) {
                            }
                        } else {
                            this.stackTraceHashId_ = pVar.N();
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

    public static StackTrace parseFrom(InputStream inputStream, f0 f0Var) throws IOException {
        return (StackTrace) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, f0Var);
    }

    public static StackTrace parseFrom(p pVar) throws IOException {
        return (StackTrace) GeneratedMessageV3.parseWithIOException(PARSER, pVar);
    }

    public static StackTrace parseFrom(p pVar, f0 f0Var) throws IOException {
        return (StackTrace) GeneratedMessageV3.parseWithIOException(PARSER, pVar, f0Var);
    }
}
