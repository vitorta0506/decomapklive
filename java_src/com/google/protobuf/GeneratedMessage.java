package com.google.protobuf;

import com.google.protobuf.Descriptors;
import com.google.protobuf.Extension;
import com.google.protobuf.GeneratedMessageLite;
import com.google.protobuf.MessageReflection;
import com.google.protobuf.a;
import com.google.protobuf.h3;
import com.google.protobuf.l1;
import com.google.protobuf.o1;
import java.io.IOException;
import java.io.InputStream;
import java.io.ObjectStreamException;
import java.io.Serializable;
import java.lang.reflect.InvocationTargetException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.TreeMap;
/* loaded from: classes3.dex */
public abstract class GeneratedMessage extends com.google.protobuf.a implements Serializable {
    protected static boolean alwaysUseFieldBuilders = false;
    private static final long serialVersionUID = 1;
    protected h3 unknownFields;

    /* loaded from: classes3.dex */
    class a implements g {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ a.b f14669a;

        a(a.b bVar) {
            this.f14669a = bVar;
        }

        @Override // com.google.protobuf.a.b
        public void a() {
            this.f14669a.a();
        }
    }

    /* loaded from: classes3.dex */
    static class b extends h {

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ l1 f14671b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ int f14672c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        b(l1 l1Var, int i9) {
            super(null);
            this.f14671b = l1Var;
            this.f14672c = i9;
        }

        @Override // com.google.protobuf.GeneratedMessage.h
        public Descriptors.FieldDescriptor b() {
            return this.f14671b.getDescriptorForType().l().get(this.f14672c);
        }
    }

    /* loaded from: classes3.dex */
    static class c extends h {

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ l1 f14673b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ String f14674c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        c(l1 l1Var, String str) {
            super(null);
            this.f14673b = l1Var;
            this.f14674c = str;
        }

        @Override // com.google.protobuf.GeneratedMessage.h
        protected Descriptors.FieldDescriptor b() {
            return this.f14673b.getDescriptorForType().i(this.f14674c);
        }
    }

    /* loaded from: classes3.dex */
    static class d extends h {

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ Class f14675b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ String f14676c;

        /* renamed from: d  reason: collision with root package name */
        final /* synthetic */ String f14677d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        d(Class cls, String str, String str2) {
            super(null);
            this.f14675b = cls;
            this.f14676c = str;
            this.f14677d = str2;
        }

        @Override // com.google.protobuf.GeneratedMessage.h
        protected Descriptors.FieldDescriptor b() {
            try {
                return ((Descriptors.FileDescriptor) this.f14675b.getClassLoader().loadClass(this.f14676c).getField("descriptor").get(null)).i(this.f14677d);
            } catch (Exception e10) {
                throw new RuntimeException("Cannot load descriptors: " + this.f14676c + " is not a valid descriptor class name", e10);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public static /* synthetic */ class e {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f14678a;

        static {
            int[] iArr = new int[Descriptors.FieldDescriptor.JavaType.values().length];
            f14678a = iArr;
            try {
                iArr[Descriptors.FieldDescriptor.JavaType.MESSAGE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f14678a[Descriptors.FieldDescriptor.JavaType.ENUM.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    /* loaded from: classes3.dex */
    public static abstract class f<BuilderType extends f<BuilderType>> extends a.AbstractC0142a<BuilderType> {
    }

    /* loaded from: classes3.dex */
    protected interface g extends a.b {
    }

    /* loaded from: classes3.dex */
    private static abstract class h implements j {

        /* renamed from: a  reason: collision with root package name */
        private volatile Descriptors.FieldDescriptor f14679a;

        private h() {
        }

        /* synthetic */ h(a aVar) {
            this();
        }

        @Override // com.google.protobuf.GeneratedMessage.j
        public Descriptors.FieldDescriptor a() {
            if (this.f14679a == null) {
                synchronized (this) {
                    if (this.f14679a == null) {
                        this.f14679a = b();
                    }
                }
            }
            return this.f14679a;
        }

        protected abstract Descriptors.FieldDescriptor b();
    }

    /* loaded from: classes3.dex */
    public static abstract class i<MessageType extends ExtendableMessage, BuilderType extends i<MessageType, BuilderType>> extends f<BuilderType> implements r1 {
        static /* synthetic */ o0 B(i iVar) {
            throw null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public interface j {
        Descriptors.FieldDescriptor a();
    }

    /* loaded from: classes3.dex */
    public static final class k {

        /* JADX INFO: Access modifiers changed from: private */
        /* loaded from: classes3.dex */
        public interface a {
            Object a(GeneratedMessage generatedMessage, int i9);

            Object b(GeneratedMessage generatedMessage);

            boolean c(GeneratedMessage generatedMessage);

            Object d(GeneratedMessage generatedMessage);

            int e(GeneratedMessage generatedMessage);
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* loaded from: classes3.dex */
        public static class b {
        }

        static /* synthetic */ Descriptors.b a(k kVar) {
            throw null;
        }

        static /* synthetic */ b b(k kVar, Descriptors.i iVar) {
            throw null;
        }

        static /* synthetic */ a c(k kVar, Descriptors.FieldDescriptor fieldDescriptor) {
            throw null;
        }
    }

    /* loaded from: classes3.dex */
    public static class l<ContainingType extends l1, Type> extends Extension<ContainingType, Type> {

        /* renamed from: a  reason: collision with root package name */
        private j f14680a;

        /* renamed from: b  reason: collision with root package name */
        private final Class f14681b;

        /* renamed from: c  reason: collision with root package name */
        private final l1 f14682c;

        /* renamed from: d  reason: collision with root package name */
        private final java.lang.reflect.Method f14683d;

        /* renamed from: e  reason: collision with root package name */
        private final java.lang.reflect.Method f14684e;

        /* renamed from: f  reason: collision with root package name */
        private final Extension.ExtensionType f14685f;

        /* loaded from: classes3.dex */
        class a implements j {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ Descriptors.FieldDescriptor f14686a;

            a(Descriptors.FieldDescriptor fieldDescriptor) {
                this.f14686a = fieldDescriptor;
            }

            @Override // com.google.protobuf.GeneratedMessage.j
            public Descriptors.FieldDescriptor a() {
                return this.f14686a;
            }
        }

        l(j jVar, Class cls, l1 l1Var, Extension.ExtensionType extensionType) {
            if (l1.class.isAssignableFrom(cls) && !cls.isInstance(l1Var)) {
                throw new IllegalArgumentException("Bad messageDefaultInstance for " + cls.getName());
            }
            this.f14680a = jVar;
            this.f14681b = cls;
            this.f14682c = l1Var;
            if (h2.class.isAssignableFrom(cls)) {
                this.f14683d = GeneratedMessage.getMethodOrDie(cls, "valueOf", Descriptors.e.class);
                this.f14684e = GeneratedMessage.getMethodOrDie(cls, "getValueDescriptor", new Class[0]);
            } else {
                this.f14683d = null;
                this.f14684e = null;
            }
            this.f14685f = extensionType;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.protobuf.Extension
        public Object b(Object obj) {
            Descriptors.FieldDescriptor c10 = c();
            if (c10.isRepeated()) {
                if (c10.t() == Descriptors.FieldDescriptor.JavaType.MESSAGE || c10.t() == Descriptors.FieldDescriptor.JavaType.ENUM) {
                    ArrayList arrayList = new ArrayList();
                    for (Object obj2 : (List) obj) {
                        arrayList.add(f(obj2));
                    }
                    return arrayList;
                }
                return obj;
            }
            return f(obj);
        }

        @Override // com.google.protobuf.Extension
        public Descriptors.FieldDescriptor c() {
            j jVar = this.f14680a;
            if (jVar != null) {
                return jVar.a();
            }
            throw new IllegalStateException("getDescriptor() called before internalInit()");
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.protobuf.Extension
        public Extension.ExtensionType d() {
            return this.f14685f;
        }

        @Override // com.google.protobuf.Extension
        public l1 e() {
            return this.f14682c;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.protobuf.Extension
        public Object f(Object obj) {
            int i9 = e.f14678a[c().t().ordinal()];
            return i9 != 1 ? i9 != 2 ? obj : GeneratedMessage.invokeOrDie(this.f14683d, null, (Descriptors.e) obj) : this.f14681b.isInstance(obj) ? obj : this.f14682c.newBuilderForType().P0((l1) obj).build();
        }

        public void g(Descriptors.FieldDescriptor fieldDescriptor) {
            if (this.f14680a == null) {
                this.f14680a = new a(fieldDescriptor);
                return;
            }
            throw new IllegalStateException("Already initialized.");
        }
    }

    protected GeneratedMessage() {
        this.unknownFields = h3.d();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static <MessageType extends ExtendableMessage<MessageType>, T> Extension<MessageType, T> checkNotLite(c0<MessageType, T> c0Var) {
        if (!c0Var.a()) {
            return (Extension) c0Var;
        }
        throw new IllegalArgumentException("Expected non-lite extension.");
    }

    protected static int computeStringSize(int i9, Object obj) {
        if (obj instanceof String) {
            return CodedOutputStream.V(i9, (String) obj);
        }
        return CodedOutputStream.h(i9, (ByteString) obj);
    }

    protected static int computeStringSizeNoTag(Object obj) {
        if (obj instanceof String) {
            return CodedOutputStream.W((String) obj);
        }
        return CodedOutputStream.i((ByteString) obj);
    }

    static void enableAlwaysUseFieldBuildersForTesting() {
        alwaysUseFieldBuilders = true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Map<Descriptors.FieldDescriptor, Object> getAllFieldsMutable(boolean z10) {
        TreeMap treeMap = new TreeMap();
        internalGetFieldAccessorTable();
        List<Descriptors.FieldDescriptor> m10 = k.a(null).m();
        int i9 = 0;
        while (i9 < m10.size()) {
            Descriptors.FieldDescriptor fieldDescriptor = m10.get(i9);
            Descriptors.i m11 = fieldDescriptor.m();
            if (m11 != null) {
                i9 += m11.l() - 1;
                if (hasOneof(m11)) {
                    fieldDescriptor = getOneofFieldDescriptor(m11);
                    if (!z10 && fieldDescriptor.t() == Descriptors.FieldDescriptor.JavaType.STRING) {
                        treeMap.put(fieldDescriptor, getFieldRaw(fieldDescriptor));
                    } else {
                        treeMap.put(fieldDescriptor, getField(fieldDescriptor));
                    }
                    i9++;
                } else {
                    i9++;
                }
            } else {
                if (fieldDescriptor.isRepeated()) {
                    List list = (List) getField(fieldDescriptor);
                    if (!list.isEmpty()) {
                        treeMap.put(fieldDescriptor, list);
                    }
                } else {
                    if (!hasField(fieldDescriptor)) {
                    }
                    if (!z10) {
                    }
                    treeMap.put(fieldDescriptor, getField(fieldDescriptor));
                }
                i9++;
            }
        }
        return treeMap;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static java.lang.reflect.Method getMethodOrDie(Class cls, String str, Class... clsArr) {
        try {
            return cls.getMethod(str, clsArr);
        } catch (NoSuchMethodException e10) {
            throw new RuntimeException("Generated message class \"" + cls.getName() + "\" missing method \"" + str + "\".", e10);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
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

    public static <ContainingType extends l1, Type> l<ContainingType, Type> newFileScopedGeneratedExtension(Class cls, l1 l1Var) {
        return new l<>(null, cls, l1Var, Extension.ExtensionType.IMMUTABLE);
    }

    public static <ContainingType extends l1, Type> l<ContainingType, Type> newMessageScopedGeneratedExtension(l1 l1Var, int i9, Class cls, l1 l1Var2) {
        return new l<>(new b(l1Var, i9), cls, l1Var2, Extension.ExtensionType.IMMUTABLE);
    }

    protected static <M extends l1> M parseDelimitedWithIOException(e2<M> e2Var, InputStream inputStream) throws IOException {
        try {
            return e2Var.e(inputStream);
        } catch (InvalidProtocolBufferException e10) {
            throw e10.unwrapIOException();
        }
    }

    protected static <M extends l1> M parseWithIOException(e2<M> e2Var, InputStream inputStream) throws IOException {
        try {
            return e2Var.j(inputStream);
        } catch (InvalidProtocolBufferException e10) {
            throw e10.unwrapIOException();
        }
    }

    protected static void writeString(CodedOutputStream codedOutputStream, int i9, Object obj) throws IOException {
        if (obj instanceof String) {
            codedOutputStream.Z0(i9, (String) obj);
        } else {
            codedOutputStream.r0(i9, (ByteString) obj);
        }
    }

    protected static void writeStringNoTag(CodedOutputStream codedOutputStream, Object obj) throws IOException {
        if (obj instanceof String) {
            codedOutputStream.a1((String) obj);
        } else {
            codedOutputStream.s0((ByteString) obj);
        }
    }

    @Override // com.google.protobuf.r1
    public Map<Descriptors.FieldDescriptor, Object> getAllFields() {
        return Collections.unmodifiableMap(getAllFieldsMutable(false));
    }

    Map<Descriptors.FieldDescriptor, Object> getAllFieldsRaw() {
        return Collections.unmodifiableMap(getAllFieldsMutable(true));
    }

    @Override // com.google.protobuf.p1, com.google.protobuf.r1
    public abstract /* synthetic */ l1 getDefaultInstanceForType();

    @Override // com.google.protobuf.p1, com.google.protobuf.r1
    public abstract /* synthetic */ o1 getDefaultInstanceForType();

    @Override // com.google.protobuf.r1
    public Descriptors.b getDescriptorForType() {
        internalGetFieldAccessorTable();
        return k.a(null);
    }

    @Override // com.google.protobuf.r1
    public Object getField(Descriptors.FieldDescriptor fieldDescriptor) {
        internalGetFieldAccessorTable();
        return k.c(null, fieldDescriptor).b(this);
    }

    Object getFieldRaw(Descriptors.FieldDescriptor fieldDescriptor) {
        internalGetFieldAccessorTable();
        return k.c(null, fieldDescriptor).d(this);
    }

    @Override // com.google.protobuf.a
    public Descriptors.FieldDescriptor getOneofFieldDescriptor(Descriptors.i iVar) {
        internalGetFieldAccessorTable();
        k.b(null, iVar);
        throw null;
    }

    @Override // com.google.protobuf.o1, com.google.protobuf.l1
    public e2<? extends GeneratedMessage> getParserForType() {
        throw new UnsupportedOperationException("This is supposed to be overridden by subclasses.");
    }

    public Object getRepeatedField(Descriptors.FieldDescriptor fieldDescriptor, int i9) {
        internalGetFieldAccessorTable();
        return k.c(null, fieldDescriptor).a(this, i9);
    }

    public int getRepeatedFieldCount(Descriptors.FieldDescriptor fieldDescriptor) {
        internalGetFieldAccessorTable();
        return k.c(null, fieldDescriptor).e(this);
    }

    @Override // com.google.protobuf.a, com.google.protobuf.o1
    public int getSerializedSize() {
        int i9 = this.memoizedSize;
        if (i9 != -1) {
            return i9;
        }
        int e10 = MessageReflection.e(this, getAllFieldsRaw());
        this.memoizedSize = e10;
        return e10;
    }

    @Override // com.google.protobuf.r1
    public h3 getUnknownFields() {
        throw new UnsupportedOperationException("This is supposed to be overridden by subclasses.");
    }

    @Override // com.google.protobuf.r1
    public boolean hasField(Descriptors.FieldDescriptor fieldDescriptor) {
        internalGetFieldAccessorTable();
        return k.c(null, fieldDescriptor).c(this);
    }

    @Override // com.google.protobuf.a
    public boolean hasOneof(Descriptors.i iVar) {
        internalGetFieldAccessorTable();
        k.b(null, iVar);
        throw null;
    }

    protected abstract k internalGetFieldAccessorTable();

    protected g1 internalGetMapField(int i9) {
        throw new RuntimeException("No map fields found in " + getClass().getName());
    }

    @Override // com.google.protobuf.a, com.google.protobuf.p1
    public boolean isInitialized() {
        for (Descriptors.FieldDescriptor fieldDescriptor : getDescriptorForType().m()) {
            if (fieldDescriptor.F() && !hasField(fieldDescriptor)) {
                return false;
            }
            if (fieldDescriptor.t() == Descriptors.FieldDescriptor.JavaType.MESSAGE) {
                if (fieldDescriptor.isRepeated()) {
                    for (l1 l1Var : (List) getField(fieldDescriptor)) {
                        if (!l1Var.isInitialized()) {
                            return false;
                        }
                    }
                    continue;
                } else if (hasField(fieldDescriptor) && !((l1) getField(fieldDescriptor)).isInitialized()) {
                    return false;
                }
            }
        }
        return true;
    }

    protected void makeExtensionsImmutable() {
    }

    @Override // com.google.protobuf.o1, com.google.protobuf.l1
    public abstract /* synthetic */ l1.a newBuilderForType();

    protected abstract l1.a newBuilderForType(g gVar);

    @Override // com.google.protobuf.a
    protected l1.a newBuilderForType(a.b bVar) {
        return newBuilderForType((g) new a(bVar));
    }

    @Override // com.google.protobuf.o1, com.google.protobuf.l1
    public abstract /* synthetic */ o1.a newBuilderForType();

    protected boolean parseUnknownField(p pVar, h3.b bVar, f0 f0Var, int i9) throws IOException {
        return bVar.k(i9, pVar);
    }

    @Override // com.google.protobuf.o1, com.google.protobuf.l1
    public abstract /* synthetic */ l1.a toBuilder();

    @Override // com.google.protobuf.o1, com.google.protobuf.l1
    public abstract /* synthetic */ o1.a toBuilder();

    protected Object writeReplace() throws ObjectStreamException {
        return new GeneratedMessageLite.SerializedForm(this);
    }

    @Override // com.google.protobuf.a, com.google.protobuf.o1
    public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
        MessageReflection.k(this, getAllFieldsRaw(), codedOutputStream, false);
    }

    /* loaded from: classes3.dex */
    public static abstract class ExtendableMessage<MessageType extends ExtendableMessage> extends GeneratedMessage implements r1 {
        private static final long serialVersionUID = 1;
        private final o0<Descriptors.FieldDescriptor> extensions;

        /* loaded from: classes3.dex */
        protected class a {

            /* renamed from: a  reason: collision with root package name */
            private final Iterator<Map.Entry<Descriptors.FieldDescriptor, Object>> f14665a;

            /* renamed from: b  reason: collision with root package name */
            private Map.Entry<Descriptors.FieldDescriptor, Object> f14666b;

            /* renamed from: c  reason: collision with root package name */
            private final boolean f14667c;

            /* synthetic */ a(ExtendableMessage extendableMessage, boolean z10, a aVar) {
                this(z10);
            }

            private a(boolean z10) {
                Iterator<Map.Entry<Descriptors.FieldDescriptor, Object>> E = ExtendableMessage.this.extensions.E();
                this.f14665a = E;
                if (E.hasNext()) {
                    this.f14666b = E.next();
                }
                this.f14667c = z10;
            }
        }

        protected ExtendableMessage() {
            this.extensions = o0.J();
        }

        private void verifyContainingType(Descriptors.FieldDescriptor fieldDescriptor) {
            if (fieldDescriptor.o() != getDescriptorForType()) {
                throw new IllegalArgumentException("FieldDescriptor does not match message type.");
            }
        }

        private void verifyExtensionContainingType(Extension<MessageType, ?> extension) {
            if (extension.c().o() == getDescriptorForType()) {
                return;
            }
            throw new IllegalArgumentException("Extension is for type \"" + extension.c().o().c() + "\" which does not match message type \"" + getDescriptorForType().c() + "\".");
        }

        protected boolean extensionsAreInitialized() {
            return this.extensions.B();
        }

        protected int extensionsSerializedSize() {
            return this.extensions.w();
        }

        protected int extensionsSerializedSizeAsMessageSet() {
            return this.extensions.s();
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.r1
        public Map<Descriptors.FieldDescriptor, Object> getAllFields() {
            Map allFieldsMutable = getAllFieldsMutable(false);
            allFieldsMutable.putAll(getExtensionFields());
            return Collections.unmodifiableMap(allFieldsMutable);
        }

        @Override // com.google.protobuf.GeneratedMessage
        public Map<Descriptors.FieldDescriptor, Object> getAllFieldsRaw() {
            Map allFieldsMutable = getAllFieldsMutable(false);
            allFieldsMutable.putAll(getExtensionFields());
            return Collections.unmodifiableMap(allFieldsMutable);
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.p1, com.google.protobuf.r1
        public abstract /* synthetic */ l1 getDefaultInstanceForType();

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.p1, com.google.protobuf.r1
        public abstract /* synthetic */ o1 getDefaultInstanceForType();

        public final <Type> Type getExtension(c0<MessageType, Type> c0Var) {
            Extension<MessageType, ?> checkNotLite = GeneratedMessage.checkNotLite(c0Var);
            verifyExtensionContainingType(checkNotLite);
            Descriptors.FieldDescriptor c10 = checkNotLite.c();
            Object r10 = this.extensions.r(c10);
            if (r10 == null) {
                if (c10.isRepeated()) {
                    return (Type) Collections.emptyList();
                }
                if (c10.t() == Descriptors.FieldDescriptor.JavaType.MESSAGE) {
                    return (Type) checkNotLite.e();
                }
                return (Type) checkNotLite.b(c10.p());
            }
            return (Type) checkNotLite.b(r10);
        }

        public final <Type> int getExtensionCount(c0<MessageType, List<Type>> c0Var) {
            Extension<MessageType, ?> checkNotLite = GeneratedMessage.checkNotLite(c0Var);
            verifyExtensionContainingType(checkNotLite);
            return this.extensions.v(checkNotLite.c());
        }

        protected Map<Descriptors.FieldDescriptor, Object> getExtensionFields() {
            return this.extensions.q();
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.r1
        public Object getField(Descriptors.FieldDescriptor fieldDescriptor) {
            if (fieldDescriptor.z()) {
                verifyContainingType(fieldDescriptor);
                Object r10 = this.extensions.r(fieldDescriptor);
                if (r10 == null) {
                    if (fieldDescriptor.isRepeated()) {
                        return Collections.emptyList();
                    }
                    if (fieldDescriptor.t() == Descriptors.FieldDescriptor.JavaType.MESSAGE) {
                        return x.f(fieldDescriptor.v());
                    }
                    return fieldDescriptor.p();
                }
                return r10;
            }
            return super.getField(fieldDescriptor);
        }

        @Override // com.google.protobuf.GeneratedMessage
        public Object getRepeatedField(Descriptors.FieldDescriptor fieldDescriptor, int i9) {
            if (fieldDescriptor.z()) {
                verifyContainingType(fieldDescriptor);
                return this.extensions.u(fieldDescriptor, i9);
            }
            return super.getRepeatedField(fieldDescriptor, i9);
        }

        @Override // com.google.protobuf.GeneratedMessage
        public int getRepeatedFieldCount(Descriptors.FieldDescriptor fieldDescriptor) {
            if (fieldDescriptor.z()) {
                verifyContainingType(fieldDescriptor);
                return this.extensions.v(fieldDescriptor);
            }
            return super.getRepeatedFieldCount(fieldDescriptor);
        }

        public final <Type> boolean hasExtension(c0<MessageType, Type> c0Var) {
            Extension<MessageType, ?> checkNotLite = GeneratedMessage.checkNotLite(c0Var);
            verifyExtensionContainingType(checkNotLite);
            return this.extensions.y(checkNotLite.c());
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.r1
        public boolean hasField(Descriptors.FieldDescriptor fieldDescriptor) {
            if (fieldDescriptor.z()) {
                verifyContainingType(fieldDescriptor);
                return this.extensions.y(fieldDescriptor);
            }
            return super.hasField(fieldDescriptor);
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.a, com.google.protobuf.p1
        public boolean isInitialized() {
            return super.isInitialized() && extensionsAreInitialized();
        }

        @Override // com.google.protobuf.GeneratedMessage
        protected void makeExtensionsImmutable() {
            this.extensions.F();
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.o1, com.google.protobuf.l1
        public abstract /* synthetic */ l1.a newBuilderForType();

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.o1, com.google.protobuf.l1
        public abstract /* synthetic */ o1.a newBuilderForType();

        protected ExtendableMessage<MessageType>.a newExtensionWriter() {
            return new a(this, false, null);
        }

        protected ExtendableMessage<MessageType>.a newMessageSetExtensionWriter() {
            return new a(this, true, null);
        }

        @Override // com.google.protobuf.GeneratedMessage
        protected boolean parseUnknownField(p pVar, h3.b bVar, f0 f0Var, int i9) throws IOException {
            return MessageReflection.g(pVar, bVar, f0Var, getDescriptorForType(), new MessageReflection.c(this.extensions), i9);
        }

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.o1, com.google.protobuf.l1
        public abstract /* synthetic */ l1.a toBuilder();

        @Override // com.google.protobuf.GeneratedMessage, com.google.protobuf.o1, com.google.protobuf.l1
        public abstract /* synthetic */ o1.a toBuilder();

        protected ExtendableMessage(i<MessageType, ?> iVar) {
            super(iVar);
            this.extensions = i.B(iVar);
        }

        public final <Type> boolean hasExtension(Extension<MessageType, Type> extension) {
            return hasExtension((c0) extension);
        }

        public final <Type> int getExtensionCount(Extension<MessageType, List<Type>> extension) {
            return getExtensionCount((c0) extension);
        }

        public final <Type> boolean hasExtension(l<MessageType, Type> lVar) {
            return hasExtension((c0) lVar);
        }

        public final <Type> int getExtensionCount(l<MessageType, List<Type>> lVar) {
            return getExtensionCount((c0) lVar);
        }

        public final <Type> Type getExtension(c0<MessageType, List<Type>> c0Var, int i9) {
            Extension<MessageType, ?> checkNotLite = GeneratedMessage.checkNotLite(c0Var);
            verifyExtensionContainingType(checkNotLite);
            return (Type) checkNotLite.f(this.extensions.u(checkNotLite.c(), i9));
        }

        public final <Type> Type getExtension(Extension<MessageType, Type> extension) {
            return (Type) getExtension((c0<MessageType, Object>) extension);
        }

        public final <Type> Type getExtension(l<MessageType, Type> lVar) {
            return (Type) getExtension((c0<MessageType, Object>) lVar);
        }

        public final <Type> Type getExtension(Extension<MessageType, List<Type>> extension, int i9) {
            return (Type) getExtension((c0<MessageType, List<Object>>) extension, i9);
        }

        public final <Type> Type getExtension(l<MessageType, List<Type>> lVar, int i9) {
            return (Type) getExtension((c0<MessageType, List<Object>>) lVar, i9);
        }
    }

    public static <ContainingType extends l1, Type> l<ContainingType, Type> newFileScopedGeneratedExtension(Class cls, l1 l1Var, String str, String str2) {
        return new l<>(new d(cls, str, str2), cls, l1Var, Extension.ExtensionType.MUTABLE);
    }

    public static <ContainingType extends l1, Type> l<ContainingType, Type> newMessageScopedGeneratedExtension(l1 l1Var, String str, Class cls, l1 l1Var2) {
        return new l<>(new c(l1Var, str), cls, l1Var2, Extension.ExtensionType.MUTABLE);
    }

    protected GeneratedMessage(f<?> fVar) {
        throw null;
    }

    protected static <M extends l1> M parseDelimitedWithIOException(e2<M> e2Var, InputStream inputStream, f0 f0Var) throws IOException {
        try {
            return e2Var.h(inputStream, f0Var);
        } catch (InvalidProtocolBufferException e10) {
            throw e10.unwrapIOException();
        }
    }

    protected static <M extends l1> M parseWithIOException(e2<M> e2Var, InputStream inputStream, f0 f0Var) throws IOException {
        try {
            return e2Var.k(inputStream, f0Var);
        } catch (InvalidProtocolBufferException e10) {
            throw e10.unwrapIOException();
        }
    }

    protected static <M extends l1> M parseWithIOException(e2<M> e2Var, p pVar) throws IOException {
        try {
            return e2Var.d(pVar);
        } catch (InvalidProtocolBufferException e10) {
            throw e10.unwrapIOException();
        }
    }

    protected static <M extends l1> M parseWithIOException(e2<M> e2Var, p pVar, f0 f0Var) throws IOException {
        try {
            return e2Var.i(pVar, f0Var);
        } catch (InvalidProtocolBufferException e10) {
            throw e10.unwrapIOException();
        }
    }
}
