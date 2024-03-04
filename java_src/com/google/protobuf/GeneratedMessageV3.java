package com.google.protobuf;

import com.google.protobuf.Descriptors;
import com.google.protobuf.GeneratedMessage;
import com.google.protobuf.GeneratedMessageLite;
import com.google.protobuf.MessageReflection;
import com.google.protobuf.WireFormat;
import com.google.protobuf.a;
import com.google.protobuf.h3;
import com.google.protobuf.l1;
import com.google.protobuf.o0;
import com.google.protobuf.o1;
import com.google.protobuf.u0;
import com.google.protobuf.w0;
import java.io.IOException;
import java.io.InputStream;
import java.io.ObjectStreamException;
import java.io.Serializable;
import java.lang.reflect.InvocationTargetException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.TreeMap;
/* loaded from: classes3.dex */
public abstract class GeneratedMessageV3 extends com.google.protobuf.a implements Serializable {
    protected static boolean alwaysUseFieldBuilders = false;
    private static final long serialVersionUID = 1;
    protected h3 unknownFields;

    /* loaded from: classes3.dex */
    class a implements c {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ a.b f14706a;

        a(a.b bVar) {
            this.f14706a = bVar;
        }

        @Override // com.google.protobuf.a.b
        public void a() {
            this.f14706a.a();
        }
    }

    /* loaded from: classes3.dex */
    public static abstract class b<BuilderType extends b<BuilderType>> extends a.AbstractC0142a<BuilderType> {

        /* renamed from: a  reason: collision with root package name */
        private c f14708a;

        /* renamed from: b  reason: collision with root package name */
        private b<BuilderType>.a f14709b;

        /* renamed from: c  reason: collision with root package name */
        private boolean f14710c;

        /* renamed from: d  reason: collision with root package name */
        private h3 f14711d;

        /* loaded from: classes3.dex */
        private class a implements c {
            private a() {
            }

            @Override // com.google.protobuf.a.b
            public void a() {
                b.this.R();
            }

            /* synthetic */ a(b bVar, a aVar) {
                this();
            }
        }

        /* JADX INFO: Access modifiers changed from: protected */
        public b() {
            this(null);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public Map<Descriptors.FieldDescriptor, Object> E() {
            TreeMap treeMap = new TreeMap();
            List<Descriptors.FieldDescriptor> m10 = K().f14714a.m();
            int i9 = 0;
            while (i9 < m10.size()) {
                Descriptors.FieldDescriptor fieldDescriptor = m10.get(i9);
                Descriptors.i m11 = fieldDescriptor.m();
                if (m11 != null) {
                    i9 += m11.l() - 1;
                    if (J(m11)) {
                        fieldDescriptor = G(m11);
                        treeMap.put(fieldDescriptor, getField(fieldDescriptor));
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
                        treeMap.put(fieldDescriptor, getField(fieldDescriptor));
                    }
                    i9++;
                }
            }
            return treeMap;
        }

        private BuilderType U(h3 h3Var) {
            this.f14711d = h3Var;
            R();
            return this;
        }

        @Override // com.google.protobuf.l1.a
        /* renamed from: C */
        public BuilderType L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            K().e(fieldDescriptor).e(this, obj);
            return this;
        }

        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: D */
        public BuilderType n() {
            BuilderType buildertype = (BuilderType) getDefaultInstanceForType().newBuilderForType();
            buildertype.P0(I());
            return buildertype;
        }

        @Override // com.google.protobuf.l1.a
        public l1.a F0(Descriptors.FieldDescriptor fieldDescriptor) {
            return K().e(fieldDescriptor).j();
        }

        public Descriptors.FieldDescriptor G(Descriptors.i iVar) {
            return K().f(iVar).a(this);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        public c H() {
            if (this.f14709b == null) {
                this.f14709b = new a(this, null);
            }
            return this.f14709b;
        }

        public boolean J(Descriptors.i iVar) {
            return K().f(iVar).c(this);
        }

        protected abstract e K();

        protected g1 M(int i9) {
            throw new RuntimeException("No map fields found in " + getClass().getName());
        }

        protected g1 N(int i9) {
            throw new RuntimeException("No map fields found in " + getClass().getName());
        }

        /* JADX INFO: Access modifiers changed from: protected */
        public boolean O() {
            return this.f14710c;
        }

        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: P */
        public BuilderType z(h3 h3Var) {
            return f1(h3.i(this.f14711d).p(h3Var).build());
        }

        /* JADX INFO: Access modifiers changed from: protected */
        public void Q() {
            if (this.f14708a != null) {
                q();
            }
        }

        /* JADX INFO: Access modifiers changed from: protected */
        public final void R() {
            c cVar;
            if (!this.f14710c || (cVar = this.f14708a) == null) {
                return;
            }
            cVar.a();
            this.f14710c = false;
        }

        @Override // com.google.protobuf.l1.a
        /* renamed from: S */
        public BuilderType c(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            K().e(fieldDescriptor).d(this, obj);
            return this;
        }

        @Override // com.google.protobuf.l1.a
        /* renamed from: T */
        public BuilderType f1(h3 h3Var) {
            return U(h3Var);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        public BuilderType V(h3 h3Var) {
            return U(h3Var);
        }

        @Override // com.google.protobuf.r1
        public Map<Descriptors.FieldDescriptor, Object> getAllFields() {
            return Collections.unmodifiableMap(E());
        }

        public Descriptors.b getDescriptorForType() {
            return K().f14714a;
        }

        @Override // com.google.protobuf.r1
        public Object getField(Descriptors.FieldDescriptor fieldDescriptor) {
            Object b10 = K().e(fieldDescriptor).b(this);
            return fieldDescriptor.isRepeated() ? Collections.unmodifiableList((List) b10) : b10;
        }

        @Override // com.google.protobuf.r1
        public final h3 getUnknownFields() {
            return this.f14711d;
        }

        @Override // com.google.protobuf.r1
        public boolean hasField(Descriptors.FieldDescriptor fieldDescriptor) {
            return K().e(fieldDescriptor).h(this);
        }

        @Override // com.google.protobuf.a.AbstractC0142a
        void o() {
            this.f14708a = null;
        }

        @Override // com.google.protobuf.a.AbstractC0142a
        protected void q() {
            this.f14710c = true;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        public b(c cVar) {
            this.f14711d = h3.d();
            this.f14708a = cVar;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* loaded from: classes3.dex */
    public interface c extends a.b {
    }

    /* loaded from: classes3.dex */
    public static abstract class d<MessageType extends ExtendableMessage, BuilderType extends d<MessageType, BuilderType>> extends b<BuilderType> implements r1 {

        /* renamed from: e  reason: collision with root package name */
        private o0.b<Descriptors.FieldDescriptor> f14713e;

        /* JADX INFO: Access modifiers changed from: protected */
        public d() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public o0<Descriptors.FieldDescriptor> Y() {
            o0.b<Descriptors.FieldDescriptor> bVar = this.f14713e;
            if (bVar == null) {
                return o0.p();
            }
            return bVar.b();
        }

        private void Z() {
            if (this.f14713e == null) {
                this.f14713e = o0.I();
            }
        }

        private void d0(Descriptors.FieldDescriptor fieldDescriptor) {
            if (fieldDescriptor.o() != getDescriptorForType()) {
                throw new IllegalArgumentException("FieldDescriptor does not match message type.");
            }
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        public l1.a F0(Descriptors.FieldDescriptor fieldDescriptor) {
            if (fieldDescriptor.z()) {
                return x.i(fieldDescriptor.v());
            }
            return super.F0(fieldDescriptor);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: X */
        public BuilderType L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            if (fieldDescriptor.z()) {
                d0(fieldDescriptor);
                Z();
                this.f14713e.a(fieldDescriptor, obj);
                R();
                return this;
            }
            return (BuilderType) super.L(fieldDescriptor, obj);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        public final void a0(ExtendableMessage extendableMessage) {
            if (extendableMessage.extensions != null) {
                Z();
                this.f14713e.h(extendableMessage.extensions);
                R();
            }
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.l1.a
        /* renamed from: b0 */
        public BuilderType c(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            if (fieldDescriptor.z()) {
                d0(fieldDescriptor);
                Z();
                this.f14713e.n(fieldDescriptor, obj);
                R();
                return this;
            }
            return (BuilderType) super.c(fieldDescriptor, obj);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.r1
        public Map<Descriptors.FieldDescriptor, Object> getAllFields() {
            Map E = E();
            o0.b<Descriptors.FieldDescriptor> bVar = this.f14713e;
            if (bVar != null) {
                E.putAll(bVar.d());
            }
            return Collections.unmodifiableMap(E);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.r1
        public Object getField(Descriptors.FieldDescriptor fieldDescriptor) {
            if (fieldDescriptor.z()) {
                d0(fieldDescriptor);
                o0.b<Descriptors.FieldDescriptor> bVar = this.f14713e;
                Object e10 = bVar == null ? null : bVar.e(fieldDescriptor);
                if (e10 == null) {
                    if (fieldDescriptor.t() == Descriptors.FieldDescriptor.JavaType.MESSAGE) {
                        return x.f(fieldDescriptor.v());
                    }
                    return fieldDescriptor.p();
                }
                return e10;
            }
            return super.getField(fieldDescriptor);
        }

        @Override // com.google.protobuf.GeneratedMessageV3.b, com.google.protobuf.r1
        public boolean hasField(Descriptors.FieldDescriptor fieldDescriptor) {
            if (fieldDescriptor.z()) {
                d0(fieldDescriptor);
                o0.b<Descriptors.FieldDescriptor> bVar = this.f14713e;
                if (bVar == null) {
                    return false;
                }
                return bVar.g(fieldDescriptor);
            }
            return super.hasField(fieldDescriptor);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        public d(c cVar) {
            super(cVar);
        }
    }

    /* loaded from: classes3.dex */
    public static final class e {

        /* renamed from: a  reason: collision with root package name */
        private final Descriptors.b f14714a;

        /* renamed from: b  reason: collision with root package name */
        private final a[] f14715b;

        /* renamed from: c  reason: collision with root package name */
        private String[] f14716c;

        /* renamed from: d  reason: collision with root package name */
        private final c[] f14717d;

        /* renamed from: e  reason: collision with root package name */
        private volatile boolean f14718e = false;

        /* JADX INFO: Access modifiers changed from: private */
        /* loaded from: classes3.dex */
        public interface a {
            Object a(GeneratedMessageV3 generatedMessageV3);

            Object b(b bVar);

            int c(GeneratedMessageV3 generatedMessageV3);

            void d(b bVar, Object obj);

            void e(b bVar, Object obj);

            boolean f(GeneratedMessageV3 generatedMessageV3);

            Object g(GeneratedMessageV3 generatedMessageV3, int i9);

            boolean h(b bVar);

            Object i(GeneratedMessageV3 generatedMessageV3);

            l1.a j();
        }

        /* loaded from: classes3.dex */
        private static class b implements a {

            /* renamed from: a  reason: collision with root package name */
            private final Descriptors.FieldDescriptor f14719a;

            /* renamed from: b  reason: collision with root package name */
            private final l1 f14720b;

            b(Descriptors.FieldDescriptor fieldDescriptor, String str, Class<? extends GeneratedMessageV3> cls, Class<? extends b> cls2) {
                this.f14719a = fieldDescriptor;
                this.f14720b = n((GeneratedMessageV3) GeneratedMessageV3.invokeOrDie(GeneratedMessageV3.getMethodOrDie(cls, "getDefaultInstance", new Class[0]), null, new Object[0])).j();
            }

            private l1 l(l1 l1Var) {
                if (l1Var == null) {
                    return null;
                }
                return this.f14720b.getClass().isInstance(l1Var) ? l1Var : this.f14720b.toBuilder().P0(l1Var).build();
            }

            private g1<?, ?> m(b bVar) {
                return bVar.M(this.f14719a.getNumber());
            }

            private g1<?, ?> n(GeneratedMessageV3 generatedMessageV3) {
                return generatedMessageV3.internalGetMapField(this.f14719a.getNumber());
            }

            private g1<?, ?> o(b bVar) {
                return bVar.N(this.f14719a.getNumber());
            }

            @Override // com.google.protobuf.GeneratedMessageV3.e.a
            public Object a(GeneratedMessageV3 generatedMessageV3) {
                ArrayList arrayList = new ArrayList();
                for (int i9 = 0; i9 < c(generatedMessageV3); i9++) {
                    arrayList.add(g(generatedMessageV3, i9));
                }
                return Collections.unmodifiableList(arrayList);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.e.a
            public Object b(b bVar) {
                ArrayList arrayList = new ArrayList();
                for (int i9 = 0; i9 < q(bVar); i9++) {
                    arrayList.add(p(bVar, i9));
                }
                return Collections.unmodifiableList(arrayList);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.e.a
            public int c(GeneratedMessageV3 generatedMessageV3) {
                return n(generatedMessageV3).h().size();
            }

            @Override // com.google.protobuf.GeneratedMessageV3.e.a
            public void d(b bVar, Object obj) {
                k(bVar);
                for (Object obj2 : (List) obj) {
                    e(bVar, obj2);
                }
            }

            @Override // com.google.protobuf.GeneratedMessageV3.e.a
            public void e(b bVar, Object obj) {
                o(bVar).k().add(l((l1) obj));
            }

            @Override // com.google.protobuf.GeneratedMessageV3.e.a
            public boolean f(GeneratedMessageV3 generatedMessageV3) {
                throw new UnsupportedOperationException("hasField() is not supported for repeated fields.");
            }

            @Override // com.google.protobuf.GeneratedMessageV3.e.a
            public Object g(GeneratedMessageV3 generatedMessageV3, int i9) {
                return n(generatedMessageV3).h().get(i9);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.e.a
            public boolean h(b bVar) {
                throw new UnsupportedOperationException("hasField() is not supported for repeated fields.");
            }

            @Override // com.google.protobuf.GeneratedMessageV3.e.a
            public Object i(GeneratedMessageV3 generatedMessageV3) {
                return a(generatedMessageV3);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.e.a
            public l1.a j() {
                return this.f14720b.newBuilderForType();
            }

            public void k(b bVar) {
                o(bVar).k().clear();
            }

            public Object p(b bVar, int i9) {
                return m(bVar).h().get(i9);
            }

            public int q(b bVar) {
                return m(bVar).h().size();
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* loaded from: classes3.dex */
        public static class c {

            /* renamed from: a  reason: collision with root package name */
            private final Descriptors.b f14721a;

            /* renamed from: b  reason: collision with root package name */
            private final java.lang.reflect.Method f14722b;

            /* renamed from: c  reason: collision with root package name */
            private final java.lang.reflect.Method f14723c;

            /* renamed from: d  reason: collision with root package name */
            private final java.lang.reflect.Method f14724d;

            /* renamed from: e  reason: collision with root package name */
            private final Descriptors.FieldDescriptor f14725e;

            c(Descriptors.b bVar, int i9, String str, Class<? extends GeneratedMessageV3> cls, Class<? extends b> cls2) {
                this.f14721a = bVar;
                Descriptors.i iVar = bVar.p().get(i9);
                if (iVar.p()) {
                    this.f14722b = null;
                    this.f14723c = null;
                    this.f14725e = iVar.m().get(0);
                } else {
                    this.f14722b = GeneratedMessageV3.getMethodOrDie(cls, "get" + str + "Case", new Class[0]);
                    this.f14723c = GeneratedMessageV3.getMethodOrDie(cls2, "get" + str + "Case", new Class[0]);
                    this.f14725e = null;
                }
                this.f14724d = GeneratedMessageV3.getMethodOrDie(cls2, "clear" + str, new Class[0]);
            }

            public Descriptors.FieldDescriptor a(b bVar) {
                Descriptors.FieldDescriptor fieldDescriptor = this.f14725e;
                if (fieldDescriptor != null) {
                    if (bVar.hasField(fieldDescriptor)) {
                        return this.f14725e;
                    }
                    return null;
                }
                int number = ((u0.c) GeneratedMessageV3.invokeOrDie(this.f14723c, bVar, new Object[0])).getNumber();
                if (number > 0) {
                    return this.f14721a.j(number);
                }
                return null;
            }

            public Descriptors.FieldDescriptor b(GeneratedMessageV3 generatedMessageV3) {
                Descriptors.FieldDescriptor fieldDescriptor = this.f14725e;
                if (fieldDescriptor != null) {
                    if (generatedMessageV3.hasField(fieldDescriptor)) {
                        return this.f14725e;
                    }
                    return null;
                }
                int number = ((u0.c) GeneratedMessageV3.invokeOrDie(this.f14722b, generatedMessageV3, new Object[0])).getNumber();
                if (number > 0) {
                    return this.f14721a.j(number);
                }
                return null;
            }

            public boolean c(b bVar) {
                Descriptors.FieldDescriptor fieldDescriptor = this.f14725e;
                if (fieldDescriptor != null) {
                    return bVar.hasField(fieldDescriptor);
                }
                return ((u0.c) GeneratedMessageV3.invokeOrDie(this.f14723c, bVar, new Object[0])).getNumber() != 0;
            }

            public boolean d(GeneratedMessageV3 generatedMessageV3) {
                Descriptors.FieldDescriptor fieldDescriptor = this.f14725e;
                if (fieldDescriptor != null) {
                    return generatedMessageV3.hasField(fieldDescriptor);
                }
                return ((u0.c) GeneratedMessageV3.invokeOrDie(this.f14722b, generatedMessageV3, new Object[0])).getNumber() != 0;
            }
        }

        /* loaded from: classes3.dex */
        private static final class d extends C0140e {

            /* renamed from: c  reason: collision with root package name */
            private Descriptors.d f14726c;

            /* renamed from: d  reason: collision with root package name */
            private final java.lang.reflect.Method f14727d;

            /* renamed from: e  reason: collision with root package name */
            private final java.lang.reflect.Method f14728e;

            /* renamed from: f  reason: collision with root package name */
            private boolean f14729f;

            /* renamed from: g  reason: collision with root package name */
            private java.lang.reflect.Method f14730g;

            /* renamed from: h  reason: collision with root package name */
            private java.lang.reflect.Method f14731h;

            /* renamed from: i  reason: collision with root package name */
            private java.lang.reflect.Method f14732i;

            /* renamed from: j  reason: collision with root package name */
            private java.lang.reflect.Method f14733j;

            d(Descriptors.FieldDescriptor fieldDescriptor, String str, Class<? extends GeneratedMessageV3> cls, Class<? extends b> cls2) {
                super(fieldDescriptor, str, cls, cls2);
                this.f14726c = fieldDescriptor.q();
                this.f14727d = GeneratedMessageV3.getMethodOrDie(this.f14734a, "valueOf", Descriptors.e.class);
                this.f14728e = GeneratedMessageV3.getMethodOrDie(this.f14734a, "getValueDescriptor", new Class[0]);
                boolean x10 = fieldDescriptor.b().x();
                this.f14729f = x10;
                if (x10) {
                    Class cls3 = Integer.TYPE;
                    this.f14730g = GeneratedMessageV3.getMethodOrDie(cls, "get" + str + "Value", cls3);
                    this.f14731h = GeneratedMessageV3.getMethodOrDie(cls2, "get" + str + "Value", cls3);
                    this.f14732i = GeneratedMessageV3.getMethodOrDie(cls2, "set" + str + "Value", cls3, cls3);
                    this.f14733j = GeneratedMessageV3.getMethodOrDie(cls2, "add" + str + "Value", cls3);
                }
            }

            @Override // com.google.protobuf.GeneratedMessageV3.e.C0140e, com.google.protobuf.GeneratedMessageV3.e.a
            public Object a(GeneratedMessageV3 generatedMessageV3) {
                ArrayList arrayList = new ArrayList();
                int c10 = c(generatedMessageV3);
                for (int i9 = 0; i9 < c10; i9++) {
                    arrayList.add(g(generatedMessageV3, i9));
                }
                return Collections.unmodifiableList(arrayList);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.e.C0140e, com.google.protobuf.GeneratedMessageV3.e.a
            public Object b(b bVar) {
                ArrayList arrayList = new ArrayList();
                int n9 = n(bVar);
                for (int i9 = 0; i9 < n9; i9++) {
                    arrayList.add(m(bVar, i9));
                }
                return Collections.unmodifiableList(arrayList);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.e.C0140e, com.google.protobuf.GeneratedMessageV3.e.a
            public void e(b bVar, Object obj) {
                if (this.f14729f) {
                    GeneratedMessageV3.invokeOrDie(this.f14733j, bVar, Integer.valueOf(((Descriptors.e) obj).getNumber()));
                } else {
                    super.e(bVar, GeneratedMessageV3.invokeOrDie(this.f14727d, null, obj));
                }
            }

            @Override // com.google.protobuf.GeneratedMessageV3.e.C0140e, com.google.protobuf.GeneratedMessageV3.e.a
            public Object g(GeneratedMessageV3 generatedMessageV3, int i9) {
                if (this.f14729f) {
                    return this.f14726c.j(((Integer) GeneratedMessageV3.invokeOrDie(this.f14730g, generatedMessageV3, Integer.valueOf(i9))).intValue());
                }
                return GeneratedMessageV3.invokeOrDie(this.f14728e, super.g(generatedMessageV3, i9), new Object[0]);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.e.C0140e
            public Object m(b bVar, int i9) {
                if (this.f14729f) {
                    return this.f14726c.j(((Integer) GeneratedMessageV3.invokeOrDie(this.f14731h, bVar, Integer.valueOf(i9))).intValue());
                }
                return GeneratedMessageV3.invokeOrDie(this.f14728e, super.m(bVar, i9), new Object[0]);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: com.google.protobuf.GeneratedMessageV3$e$e  reason: collision with other inner class name */
        /* loaded from: classes3.dex */
        public static class C0140e implements a {

            /* renamed from: a  reason: collision with root package name */
            protected final Class f14734a;

            /* renamed from: b  reason: collision with root package name */
            protected final a f14735b;

            /* JADX INFO: Access modifiers changed from: package-private */
            /* renamed from: com.google.protobuf.GeneratedMessageV3$e$e$a */
            /* loaded from: classes3.dex */
            public interface a {
                Object a(GeneratedMessageV3 generatedMessageV3);

                Object b(b<?> bVar);

                int c(GeneratedMessageV3 generatedMessageV3);

                int d(b<?> bVar);

                void e(b<?> bVar, Object obj);

                void f(b<?> bVar);

                Object g(GeneratedMessageV3 generatedMessageV3, int i9);

                Object h(b<?> bVar, int i9);
            }

            /* renamed from: com.google.protobuf.GeneratedMessageV3$e$e$b */
            /* loaded from: classes3.dex */
            private static final class b implements a {

                /* renamed from: a  reason: collision with root package name */
                protected final java.lang.reflect.Method f14736a;

                /* renamed from: b  reason: collision with root package name */
                protected final java.lang.reflect.Method f14737b;

                /* renamed from: c  reason: collision with root package name */
                protected final java.lang.reflect.Method f14738c;

                /* renamed from: d  reason: collision with root package name */
                protected final java.lang.reflect.Method f14739d;

                /* renamed from: e  reason: collision with root package name */
                protected final java.lang.reflect.Method f14740e;

                /* renamed from: f  reason: collision with root package name */
                protected final java.lang.reflect.Method f14741f;

                /* renamed from: g  reason: collision with root package name */
                protected final java.lang.reflect.Method f14742g;

                /* renamed from: h  reason: collision with root package name */
                protected final java.lang.reflect.Method f14743h;

                /* renamed from: i  reason: collision with root package name */
                protected final java.lang.reflect.Method f14744i;

                b(Descriptors.FieldDescriptor fieldDescriptor, String str, Class<? extends GeneratedMessageV3> cls, Class<? extends b> cls2) {
                    this.f14736a = GeneratedMessageV3.getMethodOrDie(cls, "get" + str + "List", new Class[0]);
                    this.f14737b = GeneratedMessageV3.getMethodOrDie(cls2, "get" + str + "List", new Class[0]);
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append("get");
                    sb2.append(str);
                    String sb3 = sb2.toString();
                    Class cls3 = Integer.TYPE;
                    java.lang.reflect.Method methodOrDie = GeneratedMessageV3.getMethodOrDie(cls, sb3, cls3);
                    this.f14738c = methodOrDie;
                    this.f14739d = GeneratedMessageV3.getMethodOrDie(cls2, "get" + str, cls3);
                    Class<?> returnType = methodOrDie.getReturnType();
                    this.f14740e = GeneratedMessageV3.getMethodOrDie(cls2, "set" + str, cls3, returnType);
                    this.f14741f = GeneratedMessageV3.getMethodOrDie(cls2, "add" + str, returnType);
                    this.f14742g = GeneratedMessageV3.getMethodOrDie(cls, "get" + str + "Count", new Class[0]);
                    this.f14743h = GeneratedMessageV3.getMethodOrDie(cls2, "get" + str + "Count", new Class[0]);
                    StringBuilder sb4 = new StringBuilder();
                    sb4.append("clear");
                    sb4.append(str);
                    this.f14744i = GeneratedMessageV3.getMethodOrDie(cls2, sb4.toString(), new Class[0]);
                }

                @Override // com.google.protobuf.GeneratedMessageV3.e.C0140e.a
                public Object a(GeneratedMessageV3 generatedMessageV3) {
                    return GeneratedMessageV3.invokeOrDie(this.f14736a, generatedMessageV3, new Object[0]);
                }

                @Override // com.google.protobuf.GeneratedMessageV3.e.C0140e.a
                public Object b(b<?> bVar) {
                    return GeneratedMessageV3.invokeOrDie(this.f14737b, bVar, new Object[0]);
                }

                @Override // com.google.protobuf.GeneratedMessageV3.e.C0140e.a
                public int c(GeneratedMessageV3 generatedMessageV3) {
                    return ((Integer) GeneratedMessageV3.invokeOrDie(this.f14742g, generatedMessageV3, new Object[0])).intValue();
                }

                @Override // com.google.protobuf.GeneratedMessageV3.e.C0140e.a
                public int d(b<?> bVar) {
                    return ((Integer) GeneratedMessageV3.invokeOrDie(this.f14743h, bVar, new Object[0])).intValue();
                }

                @Override // com.google.protobuf.GeneratedMessageV3.e.C0140e.a
                public void e(b<?> bVar, Object obj) {
                    GeneratedMessageV3.invokeOrDie(this.f14741f, bVar, obj);
                }

                @Override // com.google.protobuf.GeneratedMessageV3.e.C0140e.a
                public void f(b<?> bVar) {
                    GeneratedMessageV3.invokeOrDie(this.f14744i, bVar, new Object[0]);
                }

                @Override // com.google.protobuf.GeneratedMessageV3.e.C0140e.a
                public Object g(GeneratedMessageV3 generatedMessageV3, int i9) {
                    return GeneratedMessageV3.invokeOrDie(this.f14738c, generatedMessageV3, Integer.valueOf(i9));
                }

                @Override // com.google.protobuf.GeneratedMessageV3.e.C0140e.a
                public Object h(b<?> bVar, int i9) {
                    return GeneratedMessageV3.invokeOrDie(this.f14739d, bVar, Integer.valueOf(i9));
                }
            }

            C0140e(Descriptors.FieldDescriptor fieldDescriptor, String str, Class<? extends GeneratedMessageV3> cls, Class<? extends b> cls2) {
                b bVar = new b(fieldDescriptor, str, cls, cls2);
                this.f14734a = bVar.f14738c.getReturnType();
                this.f14735b = l(bVar);
            }

            static a l(b bVar) {
                return bVar;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.e.a
            public Object a(GeneratedMessageV3 generatedMessageV3) {
                return this.f14735b.a(generatedMessageV3);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.e.a
            public Object b(b bVar) {
                return this.f14735b.b(bVar);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.e.a
            public int c(GeneratedMessageV3 generatedMessageV3) {
                return this.f14735b.c(generatedMessageV3);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.e.a
            public void d(b bVar, Object obj) {
                k(bVar);
                for (Object obj2 : (List) obj) {
                    e(bVar, obj2);
                }
            }

            @Override // com.google.protobuf.GeneratedMessageV3.e.a
            public void e(b bVar, Object obj) {
                this.f14735b.e(bVar, obj);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.e.a
            public boolean f(GeneratedMessageV3 generatedMessageV3) {
                throw new UnsupportedOperationException("hasField() called on a repeated field.");
            }

            @Override // com.google.protobuf.GeneratedMessageV3.e.a
            public Object g(GeneratedMessageV3 generatedMessageV3, int i9) {
                return this.f14735b.g(generatedMessageV3, i9);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.e.a
            public boolean h(b bVar) {
                throw new UnsupportedOperationException("hasField() called on a repeated field.");
            }

            @Override // com.google.protobuf.GeneratedMessageV3.e.a
            public Object i(GeneratedMessageV3 generatedMessageV3) {
                return a(generatedMessageV3);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.e.a
            public l1.a j() {
                throw new UnsupportedOperationException("newBuilderForField() called on a non-Message type.");
            }

            public void k(b bVar) {
                this.f14735b.f(bVar);
            }

            public Object m(b bVar, int i9) {
                return this.f14735b.h(bVar, i9);
            }

            public int n(b bVar) {
                return this.f14735b.d(bVar);
            }
        }

        /* loaded from: classes3.dex */
        private static final class f extends C0140e {

            /* renamed from: c  reason: collision with root package name */
            private final java.lang.reflect.Method f14745c;

            /* renamed from: d  reason: collision with root package name */
            private final java.lang.reflect.Method f14746d;

            f(Descriptors.FieldDescriptor fieldDescriptor, String str, Class<? extends GeneratedMessageV3> cls, Class<? extends b> cls2) {
                super(fieldDescriptor, str, cls, cls2);
                this.f14745c = GeneratedMessageV3.getMethodOrDie(this.f14734a, "newBuilder", new Class[0]);
                this.f14746d = GeneratedMessageV3.getMethodOrDie(cls2, "get" + str + "Builder", Integer.TYPE);
            }

            private Object o(Object obj) {
                return this.f14734a.isInstance(obj) ? obj : ((l1.a) GeneratedMessageV3.invokeOrDie(this.f14745c, null, new Object[0])).P0((l1) obj).build();
            }

            @Override // com.google.protobuf.GeneratedMessageV3.e.C0140e, com.google.protobuf.GeneratedMessageV3.e.a
            public void e(b bVar, Object obj) {
                super.e(bVar, o(obj));
            }

            @Override // com.google.protobuf.GeneratedMessageV3.e.C0140e, com.google.protobuf.GeneratedMessageV3.e.a
            public l1.a j() {
                return (l1.a) GeneratedMessageV3.invokeOrDie(this.f14745c, null, new Object[0]);
            }
        }

        /* loaded from: classes3.dex */
        private static final class g extends h {

            /* renamed from: f  reason: collision with root package name */
            private Descriptors.d f14747f;

            /* renamed from: g  reason: collision with root package name */
            private java.lang.reflect.Method f14748g;

            /* renamed from: h  reason: collision with root package name */
            private java.lang.reflect.Method f14749h;

            /* renamed from: i  reason: collision with root package name */
            private boolean f14750i;

            /* renamed from: j  reason: collision with root package name */
            private java.lang.reflect.Method f14751j;

            /* renamed from: k  reason: collision with root package name */
            private java.lang.reflect.Method f14752k;

            /* renamed from: l  reason: collision with root package name */
            private java.lang.reflect.Method f14753l;

            g(Descriptors.FieldDescriptor fieldDescriptor, String str, Class<? extends GeneratedMessageV3> cls, Class<? extends b> cls2, String str2) {
                super(fieldDescriptor, str, cls, cls2, str2);
                this.f14747f = fieldDescriptor.q();
                this.f14748g = GeneratedMessageV3.getMethodOrDie(this.f14754a, "valueOf", Descriptors.e.class);
                this.f14749h = GeneratedMessageV3.getMethodOrDie(this.f14754a, "getValueDescriptor", new Class[0]);
                boolean x10 = fieldDescriptor.b().x();
                this.f14750i = x10;
                if (x10) {
                    this.f14751j = GeneratedMessageV3.getMethodOrDie(cls, "get" + str + "Value", new Class[0]);
                    this.f14752k = GeneratedMessageV3.getMethodOrDie(cls2, "get" + str + "Value", new Class[0]);
                    this.f14753l = GeneratedMessageV3.getMethodOrDie(cls2, "set" + str + "Value", Integer.TYPE);
                }
            }

            @Override // com.google.protobuf.GeneratedMessageV3.e.h, com.google.protobuf.GeneratedMessageV3.e.a
            public Object a(GeneratedMessageV3 generatedMessageV3) {
                if (this.f14750i) {
                    return this.f14747f.j(((Integer) GeneratedMessageV3.invokeOrDie(this.f14751j, generatedMessageV3, new Object[0])).intValue());
                }
                return GeneratedMessageV3.invokeOrDie(this.f14749h, super.a(generatedMessageV3), new Object[0]);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.e.h, com.google.protobuf.GeneratedMessageV3.e.a
            public Object b(b bVar) {
                if (this.f14750i) {
                    return this.f14747f.j(((Integer) GeneratedMessageV3.invokeOrDie(this.f14752k, bVar, new Object[0])).intValue());
                }
                return GeneratedMessageV3.invokeOrDie(this.f14749h, super.b(bVar), new Object[0]);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.e.h, com.google.protobuf.GeneratedMessageV3.e.a
            public void d(b bVar, Object obj) {
                if (this.f14750i) {
                    GeneratedMessageV3.invokeOrDie(this.f14753l, bVar, Integer.valueOf(((Descriptors.e) obj).getNumber()));
                } else {
                    super.d(bVar, GeneratedMessageV3.invokeOrDie(this.f14748g, null, obj));
                }
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* loaded from: classes3.dex */
        public static class h implements a {

            /* renamed from: a  reason: collision with root package name */
            protected final Class<?> f14754a;

            /* renamed from: b  reason: collision with root package name */
            protected final Descriptors.FieldDescriptor f14755b;

            /* renamed from: c  reason: collision with root package name */
            protected final boolean f14756c;

            /* renamed from: d  reason: collision with root package name */
            protected final boolean f14757d;

            /* renamed from: e  reason: collision with root package name */
            protected final a f14758e;

            /* JADX INFO: Access modifiers changed from: private */
            /* loaded from: classes3.dex */
            public interface a {
                Object a(GeneratedMessageV3 generatedMessageV3);

                Object b(b<?> bVar);

                int c(GeneratedMessageV3 generatedMessageV3);

                void d(b<?> bVar, Object obj);

                int e(b<?> bVar);

                boolean f(GeneratedMessageV3 generatedMessageV3);

                boolean h(b<?> bVar);
            }

            /* loaded from: classes3.dex */
            private static final class b implements a {

                /* renamed from: a  reason: collision with root package name */
                protected final java.lang.reflect.Method f14759a;

                /* renamed from: b  reason: collision with root package name */
                protected final java.lang.reflect.Method f14760b;

                /* renamed from: c  reason: collision with root package name */
                protected final java.lang.reflect.Method f14761c;

                /* renamed from: d  reason: collision with root package name */
                protected final java.lang.reflect.Method f14762d;

                /* renamed from: e  reason: collision with root package name */
                protected final java.lang.reflect.Method f14763e;

                /* renamed from: f  reason: collision with root package name */
                protected final java.lang.reflect.Method f14764f;

                /* renamed from: g  reason: collision with root package name */
                protected final java.lang.reflect.Method f14765g;

                /* renamed from: h  reason: collision with root package name */
                protected final java.lang.reflect.Method f14766h;

                b(Descriptors.FieldDescriptor fieldDescriptor, String str, Class<? extends GeneratedMessageV3> cls, Class<? extends b> cls2, String str2, boolean z10, boolean z11) {
                    java.lang.reflect.Method method;
                    java.lang.reflect.Method method2;
                    java.lang.reflect.Method method3;
                    java.lang.reflect.Method methodOrDie = GeneratedMessageV3.getMethodOrDie(cls, "get" + str, new Class[0]);
                    this.f14759a = methodOrDie;
                    this.f14760b = GeneratedMessageV3.getMethodOrDie(cls2, "get" + str, new Class[0]);
                    this.f14761c = GeneratedMessageV3.getMethodOrDie(cls2, "set" + str, methodOrDie.getReturnType());
                    java.lang.reflect.Method method4 = null;
                    if (z11) {
                        method = GeneratedMessageV3.getMethodOrDie(cls, "has" + str, new Class[0]);
                    } else {
                        method = null;
                    }
                    this.f14762d = method;
                    if (z11) {
                        method2 = GeneratedMessageV3.getMethodOrDie(cls2, "has" + str, new Class[0]);
                    } else {
                        method2 = null;
                    }
                    this.f14763e = method2;
                    this.f14764f = GeneratedMessageV3.getMethodOrDie(cls2, "clear" + str, new Class[0]);
                    if (z10) {
                        method3 = GeneratedMessageV3.getMethodOrDie(cls, "get" + str2 + "Case", new Class[0]);
                    } else {
                        method3 = null;
                    }
                    this.f14765g = method3;
                    if (z10) {
                        method4 = GeneratedMessageV3.getMethodOrDie(cls2, "get" + str2 + "Case", new Class[0]);
                    }
                    this.f14766h = method4;
                }

                @Override // com.google.protobuf.GeneratedMessageV3.e.h.a
                public Object a(GeneratedMessageV3 generatedMessageV3) {
                    return GeneratedMessageV3.invokeOrDie(this.f14759a, generatedMessageV3, new Object[0]);
                }

                @Override // com.google.protobuf.GeneratedMessageV3.e.h.a
                public Object b(b<?> bVar) {
                    return GeneratedMessageV3.invokeOrDie(this.f14760b, bVar, new Object[0]);
                }

                @Override // com.google.protobuf.GeneratedMessageV3.e.h.a
                public int c(GeneratedMessageV3 generatedMessageV3) {
                    return ((u0.c) GeneratedMessageV3.invokeOrDie(this.f14765g, generatedMessageV3, new Object[0])).getNumber();
                }

                @Override // com.google.protobuf.GeneratedMessageV3.e.h.a
                public void d(b<?> bVar, Object obj) {
                    GeneratedMessageV3.invokeOrDie(this.f14761c, bVar, obj);
                }

                @Override // com.google.protobuf.GeneratedMessageV3.e.h.a
                public int e(b<?> bVar) {
                    return ((u0.c) GeneratedMessageV3.invokeOrDie(this.f14766h, bVar, new Object[0])).getNumber();
                }

                @Override // com.google.protobuf.GeneratedMessageV3.e.h.a
                public boolean f(GeneratedMessageV3 generatedMessageV3) {
                    return ((Boolean) GeneratedMessageV3.invokeOrDie(this.f14762d, generatedMessageV3, new Object[0])).booleanValue();
                }

                @Override // com.google.protobuf.GeneratedMessageV3.e.h.a
                public boolean h(b<?> bVar) {
                    return ((Boolean) GeneratedMessageV3.invokeOrDie(this.f14763e, bVar, new Object[0])).booleanValue();
                }
            }

            h(Descriptors.FieldDescriptor fieldDescriptor, String str, Class<? extends GeneratedMessageV3> cls, Class<? extends b> cls2, String str2) {
                boolean z10 = (fieldDescriptor.m() == null || fieldDescriptor.m().p()) ? false : true;
                this.f14756c = z10;
                boolean z11 = fieldDescriptor.b().r() == Descriptors.FileDescriptor.Syntax.PROTO2 || fieldDescriptor.y() || (!z10 && fieldDescriptor.t() == Descriptors.FieldDescriptor.JavaType.MESSAGE);
                this.f14757d = z11;
                b bVar = new b(fieldDescriptor, str, cls, cls2, str2, z10, z11);
                this.f14755b = fieldDescriptor;
                this.f14754a = bVar.f14759a.getReturnType();
                this.f14758e = k(bVar);
            }

            static a k(b bVar) {
                return bVar;
            }

            @Override // com.google.protobuf.GeneratedMessageV3.e.a
            public Object a(GeneratedMessageV3 generatedMessageV3) {
                return this.f14758e.a(generatedMessageV3);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.e.a
            public Object b(b bVar) {
                return this.f14758e.b(bVar);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.e.a
            public int c(GeneratedMessageV3 generatedMessageV3) {
                throw new UnsupportedOperationException("getRepeatedFieldSize() called on a singular field.");
            }

            @Override // com.google.protobuf.GeneratedMessageV3.e.a
            public void d(b bVar, Object obj) {
                this.f14758e.d(bVar, obj);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.e.a
            public void e(b bVar, Object obj) {
                throw new UnsupportedOperationException("addRepeatedField() called on a singular field.");
            }

            @Override // com.google.protobuf.GeneratedMessageV3.e.a
            public boolean f(GeneratedMessageV3 generatedMessageV3) {
                if (!this.f14757d) {
                    if (this.f14756c) {
                        return this.f14758e.c(generatedMessageV3) == this.f14755b.getNumber();
                    }
                    return !a(generatedMessageV3).equals(this.f14755b.p());
                }
                return this.f14758e.f(generatedMessageV3);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.e.a
            public Object g(GeneratedMessageV3 generatedMessageV3, int i9) {
                throw new UnsupportedOperationException("getRepeatedField() called on a singular field.");
            }

            @Override // com.google.protobuf.GeneratedMessageV3.e.a
            public boolean h(b bVar) {
                if (!this.f14757d) {
                    if (this.f14756c) {
                        return this.f14758e.e(bVar) == this.f14755b.getNumber();
                    }
                    return !b(bVar).equals(this.f14755b.p());
                }
                return this.f14758e.h(bVar);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.e.a
            public Object i(GeneratedMessageV3 generatedMessageV3) {
                return a(generatedMessageV3);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.e.a
            public l1.a j() {
                throw new UnsupportedOperationException("newBuilderForField() called on a non-Message type.");
            }
        }

        /* loaded from: classes3.dex */
        private static final class i extends h {

            /* renamed from: f  reason: collision with root package name */
            private final java.lang.reflect.Method f14767f;

            /* renamed from: g  reason: collision with root package name */
            private final java.lang.reflect.Method f14768g;

            i(Descriptors.FieldDescriptor fieldDescriptor, String str, Class<? extends GeneratedMessageV3> cls, Class<? extends b> cls2, String str2) {
                super(fieldDescriptor, str, cls, cls2, str2);
                this.f14767f = GeneratedMessageV3.getMethodOrDie(this.f14754a, "newBuilder", new Class[0]);
                this.f14768g = GeneratedMessageV3.getMethodOrDie(cls2, "get" + str + "Builder", new Class[0]);
            }

            private Object l(Object obj) {
                return this.f14754a.isInstance(obj) ? obj : ((l1.a) GeneratedMessageV3.invokeOrDie(this.f14767f, null, new Object[0])).P0((l1) obj).I();
            }

            @Override // com.google.protobuf.GeneratedMessageV3.e.h, com.google.protobuf.GeneratedMessageV3.e.a
            public void d(b bVar, Object obj) {
                super.d(bVar, l(obj));
            }

            @Override // com.google.protobuf.GeneratedMessageV3.e.h, com.google.protobuf.GeneratedMessageV3.e.a
            public l1.a j() {
                return (l1.a) GeneratedMessageV3.invokeOrDie(this.f14767f, null, new Object[0]);
            }
        }

        /* loaded from: classes3.dex */
        private static final class j extends h {

            /* renamed from: f  reason: collision with root package name */
            private final java.lang.reflect.Method f14769f;

            /* renamed from: g  reason: collision with root package name */
            private final java.lang.reflect.Method f14770g;

            /* renamed from: h  reason: collision with root package name */
            private final java.lang.reflect.Method f14771h;

            j(Descriptors.FieldDescriptor fieldDescriptor, String str, Class<? extends GeneratedMessageV3> cls, Class<? extends b> cls2, String str2) {
                super(fieldDescriptor, str, cls, cls2, str2);
                this.f14769f = GeneratedMessageV3.getMethodOrDie(cls, "get" + str + "Bytes", new Class[0]);
                this.f14770g = GeneratedMessageV3.getMethodOrDie(cls2, "get" + str + "Bytes", new Class[0]);
                this.f14771h = GeneratedMessageV3.getMethodOrDie(cls2, "set" + str + "Bytes", ByteString.class);
            }

            @Override // com.google.protobuf.GeneratedMessageV3.e.h, com.google.protobuf.GeneratedMessageV3.e.a
            public void d(b bVar, Object obj) {
                if (obj instanceof ByteString) {
                    GeneratedMessageV3.invokeOrDie(this.f14771h, bVar, obj);
                } else {
                    super.d(bVar, obj);
                }
            }

            @Override // com.google.protobuf.GeneratedMessageV3.e.h, com.google.protobuf.GeneratedMessageV3.e.a
            public Object i(GeneratedMessageV3 generatedMessageV3) {
                return GeneratedMessageV3.invokeOrDie(this.f14769f, generatedMessageV3, new Object[0]);
            }
        }

        public e(Descriptors.b bVar, String[] strArr) {
            this.f14714a = bVar;
            this.f14716c = strArr;
            this.f14715b = new a[bVar.m().size()];
            this.f14717d = new c[bVar.p().size()];
        }

        /* JADX INFO: Access modifiers changed from: private */
        public a e(Descriptors.FieldDescriptor fieldDescriptor) {
            if (fieldDescriptor.o() == this.f14714a) {
                if (!fieldDescriptor.z()) {
                    return this.f14715b[fieldDescriptor.s()];
                }
                throw new IllegalArgumentException("This type does not have extensions.");
            }
            throw new IllegalArgumentException("FieldDescriptor does not match message type.");
        }

        /* JADX INFO: Access modifiers changed from: private */
        public c f(Descriptors.i iVar) {
            if (iVar.k() == this.f14714a) {
                return this.f14717d[iVar.o()];
            }
            throw new IllegalArgumentException("OneofDescriptor does not match message type.");
        }

        public e d(Class<? extends GeneratedMessageV3> cls, Class<? extends b> cls2) {
            if (this.f14718e) {
                return this;
            }
            synchronized (this) {
                if (this.f14718e) {
                    return this;
                }
                int length = this.f14715b.length;
                int i9 = 0;
                while (true) {
                    if (i9 >= length) {
                        break;
                    }
                    Descriptors.FieldDescriptor fieldDescriptor = this.f14714a.m().get(i9);
                    String str = fieldDescriptor.m() != null ? this.f14716c[fieldDescriptor.m().o() + length] : null;
                    if (fieldDescriptor.isRepeated()) {
                        if (fieldDescriptor.t() == Descriptors.FieldDescriptor.JavaType.MESSAGE) {
                            if (fieldDescriptor.A()) {
                                this.f14715b[i9] = new b(fieldDescriptor, this.f14716c[i9], cls, cls2);
                            } else {
                                this.f14715b[i9] = new f(fieldDescriptor, this.f14716c[i9], cls, cls2);
                            }
                        } else if (fieldDescriptor.t() == Descriptors.FieldDescriptor.JavaType.ENUM) {
                            this.f14715b[i9] = new d(fieldDescriptor, this.f14716c[i9], cls, cls2);
                        } else {
                            this.f14715b[i9] = new C0140e(fieldDescriptor, this.f14716c[i9], cls, cls2);
                        }
                    } else if (fieldDescriptor.t() == Descriptors.FieldDescriptor.JavaType.MESSAGE) {
                        this.f14715b[i9] = new i(fieldDescriptor, this.f14716c[i9], cls, cls2, str);
                    } else if (fieldDescriptor.t() == Descriptors.FieldDescriptor.JavaType.ENUM) {
                        this.f14715b[i9] = new g(fieldDescriptor, this.f14716c[i9], cls, cls2, str);
                    } else if (fieldDescriptor.t() == Descriptors.FieldDescriptor.JavaType.STRING) {
                        this.f14715b[i9] = new j(fieldDescriptor, this.f14716c[i9], cls, cls2, str);
                    } else {
                        this.f14715b[i9] = new h(fieldDescriptor, this.f14716c[i9], cls, cls2, str);
                    }
                    i9++;
                }
                int length2 = this.f14717d.length;
                for (int i10 = 0; i10 < length2; i10++) {
                    this.f14717d[i10] = new c(this.f14714a, i10, this.f14716c[i10 + length], cls, cls2);
                }
                this.f14718e = true;
                this.f14716c = null;
                return this;
            }
        }
    }

    /* loaded from: classes3.dex */
    protected static final class f {

        /* renamed from: a  reason: collision with root package name */
        static final f f14772a = new f();

        private f() {
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public GeneratedMessageV3() {
        this.unknownFields = h3.d();
    }

    protected static boolean canUseUnsafe() {
        return m3.J() && m3.K();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static <MessageType extends ExtendableMessage<MessageType>, T> Extension<MessageType, T> checkNotLite(c0<MessageType, T> c0Var) {
        if (!c0Var.a()) {
            return (Extension) c0Var;
        }
        throw new IllegalArgumentException("Expected non-lite extension.");
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static int computeStringSize(int i9, Object obj) {
        if (obj instanceof String) {
            return CodedOutputStream.V(i9, (String) obj);
        }
        return CodedOutputStream.h(i9, (ByteString) obj);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static int computeStringSizeNoTag(Object obj) {
        if (obj instanceof String) {
            return CodedOutputStream.W((String) obj);
        }
        return CodedOutputStream.i((ByteString) obj);
    }

    protected static u0.a emptyBooleanList() {
        return m.n();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static u0.b emptyDoubleList() {
        return t.m();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static u0.f emptyFloatList() {
        return p0.m();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static u0.g emptyIntList() {
        return t0.m();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static u0.i emptyLongList() {
        return c1.m();
    }

    static void enableAlwaysUseFieldBuildersForTesting() {
        setAlwaysUseFieldBuildersForTesting(true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Map<Descriptors.FieldDescriptor, Object> getAllFieldsMutable(boolean z10) {
        TreeMap treeMap = new TreeMap();
        List<Descriptors.FieldDescriptor> m10 = internalGetFieldAccessorTable().f14714a.m();
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

    /* JADX INFO: Access modifiers changed from: protected */
    public static boolean isStringEmpty(Object obj) {
        if (obj instanceof String) {
            return ((String) obj).isEmpty();
        }
        return ((ByteString) obj).isEmpty();
    }

    private static <V> void maybeSerializeBooleanEntryTo(CodedOutputStream codedOutputStream, Map<Boolean, V> map, e1<Boolean, V> e1Var, int i9, boolean z10) throws IOException {
        if (map.containsKey(Boolean.valueOf(z10))) {
            codedOutputStream.L0(i9, e1Var.newBuilderForType().N(Boolean.valueOf(z10)).P(map.get(Boolean.valueOf(z10))).build());
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* JADX WARN: Type inference failed for: r1v1, types: [com.google.protobuf.u0$g] */
    public static u0.g mutableCopy(u0.g gVar) {
        int size = gVar.size();
        return gVar.b(size == 0 ? 10 : size * 2);
    }

    protected static u0.a newBooleanList() {
        return new m();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static u0.b newDoubleList() {
        return new t();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static u0.f newFloatList() {
        return new p0();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static u0.g newIntList() {
        return new t0();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static u0.i newLongList() {
        return new c1();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static <M extends l1> M parseDelimitedWithIOException(e2<M> e2Var, InputStream inputStream) throws IOException {
        try {
            return e2Var.e(inputStream);
        } catch (InvalidProtocolBufferException e10) {
            throw e10.unwrapIOException();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static <M extends l1> M parseWithIOException(e2<M> e2Var, InputStream inputStream) throws IOException {
        try {
            return e2Var.j(inputStream);
        } catch (InvalidProtocolBufferException e10) {
            throw e10.unwrapIOException();
        }
    }

    protected static <V> void serializeBooleanMapTo(CodedOutputStream codedOutputStream, g1<Boolean, V> g1Var, e1<Boolean, V> e1Var, int i9) throws IOException {
        Map<Boolean, V> i10 = g1Var.i();
        if (!codedOutputStream.g0()) {
            serializeMapTo(codedOutputStream, i10, e1Var, i9);
            return;
        }
        maybeSerializeBooleanEntryTo(codedOutputStream, i10, e1Var, i9, false);
        maybeSerializeBooleanEntryTo(codedOutputStream, i10, e1Var, i9, true);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static <V> void serializeIntegerMapTo(CodedOutputStream codedOutputStream, g1<Integer, V> g1Var, e1<Integer, V> e1Var, int i9) throws IOException {
        Map<Integer, V> i10 = g1Var.i();
        if (!codedOutputStream.g0()) {
            serializeMapTo(codedOutputStream, i10, e1Var, i9);
            return;
        }
        int size = i10.size();
        int[] iArr = new int[size];
        int i11 = 0;
        for (Integer num : i10.keySet()) {
            iArr[i11] = num.intValue();
            i11++;
        }
        Arrays.sort(iArr);
        for (int i12 = 0; i12 < size; i12++) {
            int i13 = iArr[i12];
            codedOutputStream.L0(i9, e1Var.newBuilderForType().N(Integer.valueOf(i13)).P(i10.get(Integer.valueOf(i13))).build());
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static <V> void serializeLongMapTo(CodedOutputStream codedOutputStream, g1<Long, V> g1Var, e1<Long, V> e1Var, int i9) throws IOException {
        Map<Long, V> i10 = g1Var.i();
        if (!codedOutputStream.g0()) {
            serializeMapTo(codedOutputStream, i10, e1Var, i9);
            return;
        }
        int size = i10.size();
        long[] jArr = new long[size];
        int i11 = 0;
        for (Long l10 : i10.keySet()) {
            jArr[i11] = l10.longValue();
            i11++;
        }
        Arrays.sort(jArr);
        for (int i12 = 0; i12 < size; i12++) {
            long j10 = jArr[i12];
            codedOutputStream.L0(i9, e1Var.newBuilderForType().N(Long.valueOf(j10)).P(i10.get(Long.valueOf(j10))).build());
        }
    }

    private static <K, V> void serializeMapTo(CodedOutputStream codedOutputStream, Map<K, V> map, e1<K, V> e1Var, int i9) throws IOException {
        for (Map.Entry<K, V> entry : map.entrySet()) {
            codedOutputStream.L0(i9, e1Var.newBuilderForType().N(entry.getKey()).P(entry.getValue()).build());
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static <V> void serializeStringMapTo(CodedOutputStream codedOutputStream, g1<String, V> g1Var, e1<String, V> e1Var, int i9) throws IOException {
        Map<String, V> i10 = g1Var.i();
        if (!codedOutputStream.g0()) {
            serializeMapTo(codedOutputStream, i10, e1Var, i9);
            return;
        }
        String[] strArr = (String[]) i10.keySet().toArray(new String[i10.size()]);
        Arrays.sort(strArr);
        for (String str : strArr) {
            codedOutputStream.L0(i9, e1Var.newBuilderForType().N(str).P(i10.get(str)).build());
        }
    }

    static void setAlwaysUseFieldBuildersForTesting(boolean z10) {
        alwaysUseFieldBuilders = z10;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static void writeString(CodedOutputStream codedOutputStream, int i9, Object obj) throws IOException {
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
        return internalGetFieldAccessorTable().f14714a;
    }

    @Override // com.google.protobuf.r1
    public Object getField(Descriptors.FieldDescriptor fieldDescriptor) {
        return internalGetFieldAccessorTable().e(fieldDescriptor).a(this);
    }

    Object getFieldRaw(Descriptors.FieldDescriptor fieldDescriptor) {
        return internalGetFieldAccessorTable().e(fieldDescriptor).i(this);
    }

    @Override // com.google.protobuf.a
    public Descriptors.FieldDescriptor getOneofFieldDescriptor(Descriptors.i iVar) {
        return internalGetFieldAccessorTable().f(iVar).b(this);
    }

    @Override // com.google.protobuf.o1, com.google.protobuf.l1
    public e2<? extends GeneratedMessageV3> getParserForType() {
        throw new UnsupportedOperationException("This is supposed to be overridden by subclasses.");
    }

    public Object getRepeatedField(Descriptors.FieldDescriptor fieldDescriptor, int i9) {
        return internalGetFieldAccessorTable().e(fieldDescriptor).g(this, i9);
    }

    public int getRepeatedFieldCount(Descriptors.FieldDescriptor fieldDescriptor) {
        return internalGetFieldAccessorTable().e(fieldDescriptor).c(this);
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

    public h3 getUnknownFields() {
        throw new UnsupportedOperationException("This is supposed to be overridden by subclasses.");
    }

    @Override // com.google.protobuf.r1
    public boolean hasField(Descriptors.FieldDescriptor fieldDescriptor) {
        return internalGetFieldAccessorTable().e(fieldDescriptor).f(this);
    }

    @Override // com.google.protobuf.a
    public boolean hasOneof(Descriptors.i iVar) {
        return internalGetFieldAccessorTable().f(iVar).d(this);
    }

    protected abstract e internalGetFieldAccessorTable();

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

    /* JADX INFO: Access modifiers changed from: protected */
    public void makeExtensionsImmutable() {
    }

    protected void mergeFromAndMakeImmutableInternal(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
        n2 e10 = g2.a().e(this);
        try {
            e10.i(this, q.Q(pVar), f0Var);
            e10.e(this);
        } catch (InvalidProtocolBufferException e11) {
            throw e11.setUnfinishedMessage(this);
        } catch (IOException e12) {
            throw new InvalidProtocolBufferException(e12).setUnfinishedMessage(this);
        }
    }

    @Override // com.google.protobuf.o1, com.google.protobuf.l1
    public abstract /* synthetic */ l1.a newBuilderForType();

    protected abstract l1.a newBuilderForType(c cVar);

    @Override // com.google.protobuf.a
    protected l1.a newBuilderForType(a.b bVar) {
        return newBuilderForType((c) new a(bVar));
    }

    @Override // com.google.protobuf.o1, com.google.protobuf.l1
    public abstract /* synthetic */ o1.a newBuilderForType();

    /* JADX INFO: Access modifiers changed from: protected */
    public Object newInstance(f fVar) {
        throw new UnsupportedOperationException("This method must be overridden by the subclass.");
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public boolean parseUnknownField(p pVar, h3.b bVar, f0 f0Var, int i9) throws IOException {
        if (pVar.P()) {
            return pVar.Q(i9);
        }
        return bVar.k(i9, pVar);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public boolean parseUnknownFieldProto3(p pVar, h3.b bVar, f0 f0Var, int i9) throws IOException {
        return parseUnknownField(pVar, bVar, f0Var, i9);
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
    public static abstract class ExtendableMessage<MessageType extends ExtendableMessage> extends GeneratedMessageV3 implements r1 {
        private static final long serialVersionUID = 1;
        private final o0<Descriptors.FieldDescriptor> extensions;

        /* loaded from: classes3.dex */
        protected class a {

            /* renamed from: a  reason: collision with root package name */
            private final Iterator<Map.Entry<Descriptors.FieldDescriptor, Object>> f14702a;

            /* renamed from: b  reason: collision with root package name */
            private Map.Entry<Descriptors.FieldDescriptor, Object> f14703b;

            /* renamed from: c  reason: collision with root package name */
            private final boolean f14704c;

            /* synthetic */ a(ExtendableMessage extendableMessage, boolean z10, a aVar) {
                this(z10);
            }

            public void a(int i9, CodedOutputStream codedOutputStream) throws IOException {
                while (true) {
                    Map.Entry<Descriptors.FieldDescriptor, Object> entry = this.f14703b;
                    if (entry == null || entry.getKey().getNumber() >= i9) {
                        return;
                    }
                    Descriptors.FieldDescriptor key = this.f14703b.getKey();
                    if (this.f14704c && key.s0() == WireFormat.JavaType.MESSAGE && !key.isRepeated()) {
                        if (this.f14703b instanceof w0.b) {
                            codedOutputStream.P0(key.getNumber(), ((w0.b) this.f14703b).a().f());
                        } else {
                            codedOutputStream.O0(key.getNumber(), (l1) this.f14703b.getValue());
                        }
                    } else {
                        o0.P(key, this.f14703b.getValue(), codedOutputStream);
                    }
                    if (this.f14702a.hasNext()) {
                        this.f14703b = this.f14702a.next();
                    } else {
                        this.f14703b = null;
                    }
                }
            }

            private a(boolean z10) {
                Iterator<Map.Entry<Descriptors.FieldDescriptor, Object>> E = ExtendableMessage.this.extensions.E();
                this.f14702a = E;
                if (E.hasNext()) {
                    this.f14703b = E.next();
                }
                this.f14704c = z10;
            }
        }

        /* JADX INFO: Access modifiers changed from: protected */
        public ExtendableMessage() {
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

        /* JADX INFO: Access modifiers changed from: protected */
        public boolean extensionsAreInitialized() {
            return this.extensions.B();
        }

        /* JADX INFO: Access modifiers changed from: protected */
        public int extensionsSerializedSize() {
            return this.extensions.w();
        }

        protected int extensionsSerializedSizeAsMessageSet() {
            return this.extensions.s();
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.r1
        public Map<Descriptors.FieldDescriptor, Object> getAllFields() {
            Map allFieldsMutable = getAllFieldsMutable(false);
            allFieldsMutable.putAll(getExtensionFields());
            return Collections.unmodifiableMap(allFieldsMutable);
        }

        @Override // com.google.protobuf.GeneratedMessageV3
        public Map<Descriptors.FieldDescriptor, Object> getAllFieldsRaw() {
            Map allFieldsMutable = getAllFieldsMutable(false);
            allFieldsMutable.putAll(getExtensionFields());
            return Collections.unmodifiableMap(allFieldsMutable);
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.p1, com.google.protobuf.r1
        public abstract /* synthetic */ l1 getDefaultInstanceForType();

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.p1, com.google.protobuf.r1
        public abstract /* synthetic */ o1 getDefaultInstanceForType();

        public final <Type> Type getExtension(c0<MessageType, Type> c0Var) {
            Extension<MessageType, ?> checkNotLite = GeneratedMessageV3.checkNotLite(c0Var);
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
            Extension<MessageType, ?> checkNotLite = GeneratedMessageV3.checkNotLite(c0Var);
            verifyExtensionContainingType(checkNotLite);
            return this.extensions.v(checkNotLite.c());
        }

        /* JADX INFO: Access modifiers changed from: protected */
        public Map<Descriptors.FieldDescriptor, Object> getExtensionFields() {
            return this.extensions.q();
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.r1
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

        @Override // com.google.protobuf.GeneratedMessageV3
        public Object getRepeatedField(Descriptors.FieldDescriptor fieldDescriptor, int i9) {
            if (fieldDescriptor.z()) {
                verifyContainingType(fieldDescriptor);
                return this.extensions.u(fieldDescriptor, i9);
            }
            return super.getRepeatedField(fieldDescriptor, i9);
        }

        @Override // com.google.protobuf.GeneratedMessageV3
        public int getRepeatedFieldCount(Descriptors.FieldDescriptor fieldDescriptor) {
            if (fieldDescriptor.z()) {
                verifyContainingType(fieldDescriptor);
                return this.extensions.v(fieldDescriptor);
            }
            return super.getRepeatedFieldCount(fieldDescriptor);
        }

        public final <Type> boolean hasExtension(c0<MessageType, Type> c0Var) {
            Extension<MessageType, ?> checkNotLite = GeneratedMessageV3.checkNotLite(c0Var);
            verifyExtensionContainingType(checkNotLite);
            return this.extensions.y(checkNotLite.c());
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.r1
        public boolean hasField(Descriptors.FieldDescriptor fieldDescriptor) {
            if (fieldDescriptor.z()) {
                verifyContainingType(fieldDescriptor);
                return this.extensions.y(fieldDescriptor);
            }
            return super.hasField(fieldDescriptor);
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.a, com.google.protobuf.p1
        public boolean isInitialized() {
            return super.isInitialized() && extensionsAreInitialized();
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.protobuf.GeneratedMessageV3
        public void makeExtensionsImmutable() {
            this.extensions.F();
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
        public abstract /* synthetic */ l1.a newBuilderForType();

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
        public abstract /* synthetic */ o1.a newBuilderForType();

        /* JADX INFO: Access modifiers changed from: protected */
        public ExtendableMessage<MessageType>.a newExtensionWriter() {
            return new a(this, false, null);
        }

        protected ExtendableMessage<MessageType>.a newMessageSetExtensionWriter() {
            return new a(this, true, null);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.protobuf.GeneratedMessageV3
        public boolean parseUnknownField(p pVar, h3.b bVar, f0 f0Var, int i9) throws IOException {
            if (pVar.P()) {
                bVar = null;
            }
            return MessageReflection.g(pVar, bVar, f0Var, getDescriptorForType(), new MessageReflection.c(this.extensions), i9);
        }

        @Override // com.google.protobuf.GeneratedMessageV3
        protected boolean parseUnknownFieldProto3(p pVar, h3.b bVar, f0 f0Var, int i9) throws IOException {
            return parseUnknownField(pVar, bVar, f0Var, i9);
        }

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
        public abstract /* synthetic */ l1.a toBuilder();

        @Override // com.google.protobuf.GeneratedMessageV3, com.google.protobuf.o1, com.google.protobuf.l1
        public abstract /* synthetic */ o1.a toBuilder();

        /* JADX INFO: Access modifiers changed from: protected */
        public ExtendableMessage(d<MessageType, ?> dVar) {
            super(dVar);
            this.extensions = dVar.Y();
        }

        public final <Type> boolean hasExtension(Extension<MessageType, Type> extension) {
            return hasExtension((c0) extension);
        }

        public final <Type> int getExtensionCount(Extension<MessageType, List<Type>> extension) {
            return getExtensionCount((c0) extension);
        }

        public final <Type> boolean hasExtension(GeneratedMessage.l<MessageType, Type> lVar) {
            return hasExtension((c0) lVar);
        }

        public final <Type> int getExtensionCount(GeneratedMessage.l<MessageType, List<Type>> lVar) {
            return getExtensionCount((c0) lVar);
        }

        public final <Type> Type getExtension(c0<MessageType, List<Type>> c0Var, int i9) {
            Extension<MessageType, ?> checkNotLite = GeneratedMessageV3.checkNotLite(c0Var);
            verifyExtensionContainingType(checkNotLite);
            return (Type) checkNotLite.f(this.extensions.u(checkNotLite.c(), i9));
        }

        public final <Type> Type getExtension(Extension<MessageType, Type> extension) {
            return (Type) getExtension((c0<MessageType, Object>) extension);
        }

        public final <Type> Type getExtension(GeneratedMessage.l<MessageType, Type> lVar) {
            return (Type) getExtension((c0<MessageType, Object>) lVar);
        }

        public final <Type> Type getExtension(Extension<MessageType, List<Type>> extension, int i9) {
            return (Type) getExtension((c0<MessageType, List<Object>>) extension, i9);
        }

        public final <Type> Type getExtension(GeneratedMessage.l<MessageType, List<Type>> lVar, int i9) {
            return (Type) getExtension((c0<MessageType, List<Object>>) lVar, i9);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public GeneratedMessageV3(b<?> bVar) {
        this.unknownFields = bVar.getUnknownFields();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* JADX WARN: Type inference failed for: r1v1, types: [com.google.protobuf.u0$i] */
    public static u0.i mutableCopy(u0.i iVar) {
        int size = iVar.size();
        return iVar.b(size == 0 ? 10 : size * 2);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static <M extends l1> M parseDelimitedWithIOException(e2<M> e2Var, InputStream inputStream, f0 f0Var) throws IOException {
        try {
            return e2Var.h(inputStream, f0Var);
        } catch (InvalidProtocolBufferException e10) {
            throw e10.unwrapIOException();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static <M extends l1> M parseWithIOException(e2<M> e2Var, InputStream inputStream, f0 f0Var) throws IOException {
        try {
            return e2Var.k(inputStream, f0Var);
        } catch (InvalidProtocolBufferException e10) {
            throw e10.unwrapIOException();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* JADX WARN: Type inference failed for: r1v1, types: [com.google.protobuf.u0$f] */
    public static u0.f mutableCopy(u0.f fVar) {
        int size = fVar.size();
        return fVar.b(size == 0 ? 10 : size * 2);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static <M extends l1> M parseWithIOException(e2<M> e2Var, p pVar) throws IOException {
        try {
            return e2Var.d(pVar);
        } catch (InvalidProtocolBufferException e10) {
            throw e10.unwrapIOException();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* JADX WARN: Type inference failed for: r1v1, types: [com.google.protobuf.u0$b] */
    public static u0.b mutableCopy(u0.b bVar) {
        int size = bVar.size();
        return bVar.b(size == 0 ? 10 : size * 2);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static <M extends l1> M parseWithIOException(e2<M> e2Var, p pVar, f0 f0Var) throws IOException {
        try {
            return e2Var.i(pVar, f0Var);
        } catch (InvalidProtocolBufferException e10) {
            throw e10.unwrapIOException();
        }
    }

    /* JADX WARN: Type inference failed for: r1v1, types: [com.google.protobuf.u0$a] */
    protected static u0.a mutableCopy(u0.a aVar) {
        int size = aVar.size();
        return aVar.b(size == 0 ? 10 : size * 2);
    }
}
