package com.google.protobuf;

import com.google.protobuf.GeneratedMessageLite;
import com.google.protobuf.GeneratedMessageLite.a;
import com.google.protobuf.WireFormat;
import com.google.protobuf.b;
import com.google.protobuf.j;
import com.google.protobuf.o0;
import com.google.protobuf.o1;
import com.google.protobuf.u0;
import java.io.IOException;
import java.io.ObjectStreamException;
import java.io.Serializable;
import java.lang.reflect.InvocationTargetException;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
/* loaded from: classes3.dex */
public abstract class GeneratedMessageLite<MessageType extends GeneratedMessageLite<MessageType, BuilderType>, BuilderType extends a<MessageType, BuilderType>> extends com.google.protobuf.b<MessageType, BuilderType> {

    /* renamed from: c  reason: collision with root package name */
    private static Map<Object, GeneratedMessageLite<?, ?>> f14688c = new ConcurrentHashMap();

    /* renamed from: a  reason: collision with root package name */
    protected i3 f14689a = i3.c();

    /* renamed from: b  reason: collision with root package name */
    protected int f14690b = -1;

    /* loaded from: classes3.dex */
    public enum MethodToInvoke {
        GET_MEMOIZED_IS_INITIALIZED,
        SET_MEMOIZED_IS_INITIALIZED,
        BUILD_MESSAGE_INFO,
        NEW_MUTABLE_INSTANCE,
        NEW_BUILDER,
        GET_DEFAULT_INSTANCE,
        GET_PARSER
    }

    /* loaded from: classes3.dex */
    protected static final class SerializedForm implements Serializable {
        private static final long serialVersionUID = 0;
        private final byte[] asBytes;
        private final Class<?> messageClass;
        private final String messageClassName;

        /* JADX INFO: Access modifiers changed from: package-private */
        public SerializedForm(o1 o1Var) {
            Class<?> cls = o1Var.getClass();
            this.messageClass = cls;
            this.messageClassName = cls.getName();
            this.asBytes = o1Var.toByteArray();
        }

        public static SerializedForm of(o1 o1Var) {
            return new SerializedForm(o1Var);
        }

        @Deprecated
        private Object readResolveFallback() throws ObjectStreamException {
            try {
                java.lang.reflect.Field declaredField = resolveMessageClass().getDeclaredField("defaultInstance");
                declaredField.setAccessible(true);
                return ((o1) declaredField.get(null)).newBuilderForType().E0(this.asBytes).I();
            } catch (InvalidProtocolBufferException e10) {
                throw new RuntimeException("Unable to understand proto buffer", e10);
            } catch (ClassNotFoundException e11) {
                throw new RuntimeException("Unable to find proto buffer class: " + this.messageClassName, e11);
            } catch (IllegalAccessException e12) {
                throw new RuntimeException("Unable to call parsePartialFrom", e12);
            } catch (NoSuchFieldException e13) {
                throw new RuntimeException("Unable to find defaultInstance in " + this.messageClassName, e13);
            } catch (SecurityException e14) {
                throw new RuntimeException("Unable to call defaultInstance in " + this.messageClassName, e14);
            }
        }

        private Class<?> resolveMessageClass() throws ClassNotFoundException {
            Class<?> cls = this.messageClass;
            return cls != null ? cls : Class.forName(this.messageClassName);
        }

        protected Object readResolve() throws ObjectStreamException {
            try {
                java.lang.reflect.Field declaredField = resolveMessageClass().getDeclaredField("DEFAULT_INSTANCE");
                declaredField.setAccessible(true);
                return ((o1) declaredField.get(null)).newBuilderForType().E0(this.asBytes).I();
            } catch (InvalidProtocolBufferException e10) {
                throw new RuntimeException("Unable to understand proto buffer", e10);
            } catch (ClassNotFoundException e11) {
                throw new RuntimeException("Unable to find proto buffer class: " + this.messageClassName, e11);
            } catch (IllegalAccessException e12) {
                throw new RuntimeException("Unable to call parsePartialFrom", e12);
            } catch (NoSuchFieldException unused) {
                return readResolveFallback();
            } catch (SecurityException e13) {
                throw new RuntimeException("Unable to call DEFAULT_INSTANCE in " + this.messageClassName, e13);
            }
        }
    }

    /* loaded from: classes3.dex */
    public static abstract class a<MessageType extends GeneratedMessageLite<MessageType, BuilderType>, BuilderType extends a<MessageType, BuilderType>> extends b.a<MessageType, BuilderType> {

        /* renamed from: a  reason: collision with root package name */
        private final MessageType f14691a;

        /* renamed from: b  reason: collision with root package name */
        protected MessageType f14692b;

        /* renamed from: c  reason: collision with root package name */
        protected boolean f14693c;

        private void y(MessageType messagetype, MessageType messagetype2) {
            g2.a().e(messagetype).a(messagetype, messagetype2);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: n */
        public final MessageType build() {
            MessageType I = I();
            if (I.isInitialized()) {
                return I;
            }
            throw b.a.m(I);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: o */
        public MessageType I() {
            if (this.f14693c) {
                return this.f14692b;
            }
            this.f14692b.i();
            this.f14693c = true;
            return this.f14692b;
        }

        /* renamed from: p */
        public BuilderType clone() {
            BuilderType buildertype = (BuilderType) getDefaultInstanceForType().newBuilderForType();
            buildertype.v(I());
            return buildertype;
        }

        protected final void q() {
            if (this.f14693c) {
                r();
                this.f14693c = false;
            }
        }

        protected void r() {
            MessageType messagetype = (MessageType) this.f14692b.b(MethodToInvoke.NEW_MUTABLE_INSTANCE);
            y(messagetype, this.f14692b);
            this.f14692b = messagetype;
        }

        @Override // com.google.protobuf.p1, com.google.protobuf.r1
        /* renamed from: s */
        public MessageType getDefaultInstanceForType() {
            return this.f14691a;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.protobuf.b.a
        /* renamed from: t */
        public BuilderType e(MessageType messagetype) {
            return v(messagetype);
        }

        @Override // com.google.protobuf.b.a
        /* renamed from: u */
        public BuilderType i(p pVar, f0 f0Var) throws IOException {
            q();
            try {
                g2.a().e(this.f14692b).i(this.f14692b, q.Q(pVar), f0Var);
                return this;
            } catch (RuntimeException e10) {
                if (e10.getCause() instanceof IOException) {
                    throw ((IOException) e10.getCause());
                }
                throw e10;
            }
        }

        public BuilderType v(MessageType messagetype) {
            q();
            y(this.f14692b, messagetype);
            return this;
        }

        @Override // com.google.protobuf.b.a
        /* renamed from: w */
        public BuilderType l(byte[] bArr, int i9, int i10) throws InvalidProtocolBufferException {
            return x(bArr, i9, i10, f0.b());
        }

        public BuilderType x(byte[] bArr, int i9, int i10, f0 f0Var) throws InvalidProtocolBufferException {
            q();
            try {
                g2.a().e(this.f14692b).j(this.f14692b, bArr, i9, i9 + i10, new j.b(f0Var));
                return this;
            } catch (InvalidProtocolBufferException e10) {
                throw e10;
            } catch (IOException e11) {
                throw new RuntimeException("Reading from byte array should not throw IOException.", e11);
            } catch (IndexOutOfBoundsException unused) {
                throw InvalidProtocolBufferException.truncatedMessage();
            }
        }
    }

    /* loaded from: classes3.dex */
    public static abstract class b<MessageType extends b<MessageType, BuilderType>, BuilderType> extends GeneratedMessageLite<MessageType, BuilderType> implements p1 {

        /* renamed from: d  reason: collision with root package name */
        protected o0<c> f14694d = o0.p();

        @Override // com.google.protobuf.GeneratedMessageLite, com.google.protobuf.p1, com.google.protobuf.r1
        public /* bridge */ /* synthetic */ o1 getDefaultInstanceForType() {
            return super.getDefaultInstanceForType();
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public o0<c> l() {
            if (this.f14694d.A()) {
                this.f14694d = this.f14694d.clone();
            }
            return this.f14694d;
        }

        @Override // com.google.protobuf.GeneratedMessageLite, com.google.protobuf.o1, com.google.protobuf.l1
        public /* bridge */ /* synthetic */ o1.a newBuilderForType() {
            return super.newBuilderForType();
        }

        @Override // com.google.protobuf.GeneratedMessageLite, com.google.protobuf.o1, com.google.protobuf.l1
        public /* bridge */ /* synthetic */ o1.a toBuilder() {
            return super.toBuilder();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public static final class c implements o0.c<c> {

        /* renamed from: a  reason: collision with root package name */
        final u0.d<?> f14695a;

        /* renamed from: b  reason: collision with root package name */
        final int f14696b;

        /* renamed from: c  reason: collision with root package name */
        final WireFormat.FieldType f14697c;

        /* renamed from: d  reason: collision with root package name */
        final boolean f14698d;

        /* renamed from: e  reason: collision with root package name */
        final boolean f14699e;

        @Override // java.lang.Comparable
        /* renamed from: a */
        public int compareTo(c cVar) {
            return this.f14696b - cVar.f14696b;
        }

        public u0.d<?> b() {
            return this.f14695a;
        }

        @Override // com.google.protobuf.o0.c
        public WireFormat.FieldType e0() {
            return this.f14697c;
        }

        @Override // com.google.protobuf.o0.c
        public int getNumber() {
            return this.f14696b;
        }

        @Override // com.google.protobuf.o0.c
        public boolean isPacked() {
            return this.f14699e;
        }

        @Override // com.google.protobuf.o0.c
        public boolean isRepeated() {
            return this.f14698d;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.google.protobuf.o0.c
        public o1.a n(o1.a aVar, o1 o1Var) {
            return ((a) aVar).v((GeneratedMessageLite) o1Var);
        }

        @Override // com.google.protobuf.o0.c
        public WireFormat.JavaType s0() {
            return this.f14697c.getJavaType();
        }
    }

    /* loaded from: classes3.dex */
    public static class d<ContainingType extends o1, Type> extends c0<ContainingType, Type> {

        /* renamed from: a  reason: collision with root package name */
        final o1 f14700a;

        /* renamed from: b  reason: collision with root package name */
        final c f14701b;

        public WireFormat.FieldType b() {
            return this.f14701b.e0();
        }

        public o1 c() {
            return this.f14700a;
        }

        public int d() {
            return this.f14701b.getNumber();
        }

        public boolean e() {
            return this.f14701b.f14698d;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <T extends GeneratedMessageLite<?, ?>> T f(Class<T> cls) {
        GeneratedMessageLite<?, ?> generatedMessageLite = f14688c.get(cls);
        if (generatedMessageLite == null) {
            try {
                Class.forName(cls.getName(), true, cls.getClassLoader());
                generatedMessageLite = f14688c.get(cls);
            } catch (ClassNotFoundException e10) {
                throw new IllegalStateException("Class initialization cannot fail.", e10);
            }
        }
        if (generatedMessageLite == null) {
            generatedMessageLite = (T) ((GeneratedMessageLite) m3.l(cls)).getDefaultInstanceForType();
            if (generatedMessageLite != null) {
                f14688c.put(cls, generatedMessageLite);
            } else {
                throw new IllegalStateException();
            }
        }
        return (T) generatedMessageLite;
    }

    protected static final <T extends GeneratedMessageLite<T, ?>> boolean h(T t10, boolean z10) {
        byte byteValue = ((Byte) t10.b(MethodToInvoke.GET_MEMOIZED_IS_INITIALIZED)).byteValue();
        if (byteValue == 1) {
            return true;
        }
        if (byteValue == 0) {
            return false;
        }
        boolean f10 = g2.a().e(t10).f(t10);
        if (z10) {
            t10.d(MethodToInvoke.SET_MEMOIZED_IS_INITIALIZED, f10 ? t10 : null);
        }
        return f10;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Object invokeOrDie(java.lang.reflect.Method method, Object obj, Object... objArr) {
        try {
            return method.invoke(obj, objArr);
        } catch (IllegalAccessException e10) {
            throw new RuntimeException("Couldn't use Java reflection to implement protocol message reflection.", e10);
        } catch (InvocationTargetException e11) {
            Throwable cause = e11.getCause();
            if (!(cause instanceof RuntimeException)) {
                if (cause instanceof Error) {
                    throw ((Error) cause);
                }
                throw new RuntimeException("Unexpected exception thrown by generated accessor method.", cause);
            }
            throw ((RuntimeException) cause);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Object a() throws Exception {
        return b(MethodToInvoke.BUILD_MESSAGE_INFO);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public Object b(MethodToInvoke methodToInvoke) {
        return e(methodToInvoke, null, null);
    }

    protected Object d(MethodToInvoke methodToInvoke, Object obj) {
        return e(methodToInvoke, obj, null);
    }

    protected abstract Object e(MethodToInvoke methodToInvoke, Object obj, Object obj2);

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && getClass() == obj.getClass()) {
            return g2.a().e(this).c(this, (GeneratedMessageLite) obj);
        }
        return false;
    }

    @Override // com.google.protobuf.p1, com.google.protobuf.r1
    /* renamed from: g */
    public final MessageType getDefaultInstanceForType() {
        return (MessageType) b(MethodToInvoke.GET_DEFAULT_INSTANCE);
    }

    @Override // com.google.protobuf.b
    int getMemoizedSerializedSize() {
        return this.f14690b;
    }

    @Override // com.google.protobuf.o1, com.google.protobuf.l1
    public final e2<MessageType> getParserForType() {
        return (e2) b(MethodToInvoke.GET_PARSER);
    }

    @Override // com.google.protobuf.o1
    public int getSerializedSize() {
        if (this.f14690b == -1) {
            this.f14690b = g2.a().e(this).g(this);
        }
        return this.f14690b;
    }

    public int hashCode() {
        int i9 = this.memoizedHashCode;
        if (i9 != 0) {
            return i9;
        }
        int b10 = g2.a().e(this).b(this);
        this.memoizedHashCode = b10;
        return b10;
    }

    protected void i() {
        g2.a().e(this).e(this);
    }

    @Override // com.google.protobuf.p1
    public final boolean isInitialized() {
        return h(this, true);
    }

    @Override // com.google.protobuf.o1, com.google.protobuf.l1
    /* renamed from: j */
    public final BuilderType newBuilderForType() {
        return (BuilderType) b(MethodToInvoke.NEW_BUILDER);
    }

    @Override // com.google.protobuf.o1, com.google.protobuf.l1
    /* renamed from: k */
    public final BuilderType toBuilder() {
        BuilderType buildertype = (BuilderType) b(MethodToInvoke.NEW_BUILDER);
        buildertype.v(this);
        return buildertype;
    }

    @Override // com.google.protobuf.b
    void setMemoizedSerializedSize(int i9) {
        this.f14690b = i9;
    }

    public String toString() {
        return q1.e(this, super.toString());
    }

    @Override // com.google.protobuf.o1
    public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
        g2.a().e(this).d(this, r.T(codedOutputStream));
    }
}
