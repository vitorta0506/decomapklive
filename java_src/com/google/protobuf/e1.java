package com.google.protobuf;

import com.google.protobuf.Descriptors;
import com.google.protobuf.WireFormat;
import com.google.protobuf.a;
import com.google.protobuf.f1;
import com.google.protobuf.l1;
import java.io.IOException;
import java.util.Collections;
import java.util.Map;
import java.util.TreeMap;
/* loaded from: classes3.dex */
public final class e1<K, V> extends com.google.protobuf.a {

    /* renamed from: a  reason: collision with root package name */
    private final K f14936a;

    /* renamed from: b  reason: collision with root package name */
    private final V f14937b;

    /* renamed from: c  reason: collision with root package name */
    private final c<K, V> f14938c;

    /* renamed from: d  reason: collision with root package name */
    private volatile int f14939d;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes3.dex */
    public static final class c<K, V> extends f1.b<K, V> {

        /* renamed from: e  reason: collision with root package name */
        public final Descriptors.b f14945e;

        /* renamed from: f  reason: collision with root package name */
        public final e2<e1<K, V>> f14946f;

        /* loaded from: classes3.dex */
        class a extends com.google.protobuf.c<e1<K, V>> {
            a() {
            }

            @Override // com.google.protobuf.e2
            /* renamed from: G */
            public e1<K, V> m(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
                return new e1<>(c.this, pVar, f0Var);
            }
        }

        public c(Descriptors.b bVar, e1<K, V> e1Var, WireFormat.FieldType fieldType, WireFormat.FieldType fieldType2) {
            super(fieldType, ((e1) e1Var).f14936a, fieldType2, ((e1) e1Var).f14937b);
            this.f14945e = bVar;
            this.f14946f = new a();
        }
    }

    private void d(Descriptors.FieldDescriptor fieldDescriptor) {
        if (fieldDescriptor.o() == this.f14938c.f14945e) {
            return;
        }
        throw new RuntimeException("Wrong FieldDescriptor \"" + fieldDescriptor.c() + "\" used in message \"" + this.f14938c.f14945e.c());
    }

    private static <V> boolean i(c cVar, V v10) {
        if (cVar.f14959c.getJavaType() == WireFormat.JavaType.MESSAGE) {
            return ((o1) v10).isInitialized();
        }
        return true;
    }

    public static <K, V> e1<K, V> k(Descriptors.b bVar, WireFormat.FieldType fieldType, K k10, WireFormat.FieldType fieldType2, V v10) {
        return new e1<>(bVar, fieldType, k10, fieldType2, v10);
    }

    @Override // com.google.protobuf.p1, com.google.protobuf.r1
    /* renamed from: e */
    public e1<K, V> getDefaultInstanceForType() {
        c<K, V> cVar = this.f14938c;
        return new e1<>(cVar, cVar.f14958b, cVar.f14960d);
    }

    public K f() {
        return this.f14936a;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final c<K, V> g() {
        return this.f14938c;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.protobuf.r1
    public Map<Descriptors.FieldDescriptor, Object> getAllFields() {
        TreeMap treeMap = new TreeMap();
        for (Descriptors.FieldDescriptor fieldDescriptor : this.f14938c.f14945e.m()) {
            if (hasField(fieldDescriptor)) {
                treeMap.put(fieldDescriptor, getField(fieldDescriptor));
            }
        }
        return Collections.unmodifiableMap(treeMap);
    }

    @Override // com.google.protobuf.r1
    public Descriptors.b getDescriptorForType() {
        return this.f14938c.f14945e;
    }

    @Override // com.google.protobuf.r1
    public Object getField(Descriptors.FieldDescriptor fieldDescriptor) {
        d(fieldDescriptor);
        Object f10 = fieldDescriptor.getNumber() == 1 ? f() : h();
        return fieldDescriptor.x() == Descriptors.FieldDescriptor.Type.ENUM ? fieldDescriptor.q().j(((Integer) f10).intValue()) : f10;
    }

    @Override // com.google.protobuf.o1, com.google.protobuf.l1
    public e2<e1<K, V>> getParserForType() {
        return this.f14938c.f14946f;
    }

    @Override // com.google.protobuf.a, com.google.protobuf.o1
    public int getSerializedSize() {
        if (this.f14939d != -1) {
            return this.f14939d;
        }
        int b10 = f1.b(this.f14938c, this.f14936a, this.f14937b);
        this.f14939d = b10;
        return b10;
    }

    @Override // com.google.protobuf.r1
    public h3 getUnknownFields() {
        return h3.d();
    }

    public V h() {
        return this.f14937b;
    }

    @Override // com.google.protobuf.r1
    public boolean hasField(Descriptors.FieldDescriptor fieldDescriptor) {
        d(fieldDescriptor);
        return true;
    }

    @Override // com.google.protobuf.a, com.google.protobuf.p1
    public boolean isInitialized() {
        return i(this.f14938c, this.f14937b);
    }

    @Override // com.google.protobuf.o1, com.google.protobuf.l1
    /* renamed from: j */
    public b<K, V> newBuilderForType() {
        return new b<>(this.f14938c);
    }

    @Override // com.google.protobuf.o1, com.google.protobuf.l1
    /* renamed from: l */
    public b<K, V> toBuilder() {
        return new b<>(this.f14938c, this.f14936a, this.f14937b, true, true);
    }

    @Override // com.google.protobuf.a, com.google.protobuf.o1
    public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
        f1.f(codedOutputStream, this.f14938c, this.f14936a, this.f14937b);
    }

    /* loaded from: classes3.dex */
    public static class b<K, V> extends a.AbstractC0142a<b<K, V>> {

        /* renamed from: a  reason: collision with root package name */
        private final c<K, V> f14940a;

        /* renamed from: b  reason: collision with root package name */
        private K f14941b;

        /* renamed from: c  reason: collision with root package name */
        private V f14942c;

        /* renamed from: d  reason: collision with root package name */
        private boolean f14943d;

        /* renamed from: e  reason: collision with root package name */
        private boolean f14944e;

        private void E(Descriptors.FieldDescriptor fieldDescriptor) {
            if (fieldDescriptor.o() == this.f14940a.f14945e) {
                return;
            }
            throw new RuntimeException("Wrong FieldDescriptor \"" + fieldDescriptor.c() + "\" used in message \"" + this.f14940a.f14945e.c());
        }

        @Override // com.google.protobuf.l1.a
        /* renamed from: B */
        public b<K, V> L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            throw new RuntimeException("There is no repeated field in a map entry message.");
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: C */
        public e1<K, V> build() {
            e1<K, V> I = I();
            if (I.isInitialized()) {
                return I;
            }
            throw a.AbstractC0142a.A(I);
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: D */
        public e1<K, V> I() {
            return new e1<>(this.f14940a, this.f14941b, this.f14942c);
        }

        @Override // com.google.protobuf.l1.a
        public l1.a F0(Descriptors.FieldDescriptor fieldDescriptor) {
            E(fieldDescriptor);
            if (fieldDescriptor.getNumber() == 2 && fieldDescriptor.t() == Descriptors.FieldDescriptor.JavaType.MESSAGE) {
                return ((l1) this.f14942c).newBuilderForType();
            }
            throw new RuntimeException("\"" + fieldDescriptor.c() + "\" is not a message value field.");
        }

        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: G */
        public b<K, V> n() {
            return new b<>(this.f14940a, this.f14941b, this.f14942c, this.f14943d, this.f14944e);
        }

        @Override // com.google.protobuf.p1, com.google.protobuf.r1
        /* renamed from: H */
        public e1<K, V> getDefaultInstanceForType() {
            c<K, V> cVar = this.f14940a;
            return new e1<>(cVar, cVar.f14958b, cVar.f14960d);
        }

        public K J() {
            return this.f14941b;
        }

        public V K() {
            return this.f14942c;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.google.protobuf.l1.a
        /* renamed from: M */
        public b<K, V> c(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            E(fieldDescriptor);
            if (fieldDescriptor.getNumber() == 1) {
                N(obj);
            } else {
                if (fieldDescriptor.x() == Descriptors.FieldDescriptor.Type.ENUM) {
                    obj = Integer.valueOf(((Descriptors.e) obj).getNumber());
                } else if (fieldDescriptor.x() == Descriptors.FieldDescriptor.Type.MESSAGE && obj != null && !this.f14940a.f14960d.getClass().isInstance(obj)) {
                    obj = ((l1) this.f14940a.f14960d).toBuilder().P0((l1) obj).build();
                }
                P(obj);
            }
            return this;
        }

        public b<K, V> N(K k10) {
            this.f14941b = k10;
            this.f14943d = true;
            return this;
        }

        @Override // com.google.protobuf.l1.a
        /* renamed from: O */
        public b<K, V> f1(h3 h3Var) {
            return this;
        }

        public b<K, V> P(V v10) {
            this.f14942c = v10;
            this.f14944e = true;
            return this;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.google.protobuf.r1
        public Map<Descriptors.FieldDescriptor, Object> getAllFields() {
            TreeMap treeMap = new TreeMap();
            for (Descriptors.FieldDescriptor fieldDescriptor : this.f14940a.f14945e.m()) {
                if (hasField(fieldDescriptor)) {
                    treeMap.put(fieldDescriptor, getField(fieldDescriptor));
                }
            }
            return Collections.unmodifiableMap(treeMap);
        }

        @Override // com.google.protobuf.l1.a, com.google.protobuf.r1
        public Descriptors.b getDescriptorForType() {
            return this.f14940a.f14945e;
        }

        @Override // com.google.protobuf.r1
        public Object getField(Descriptors.FieldDescriptor fieldDescriptor) {
            E(fieldDescriptor);
            Object J = fieldDescriptor.getNumber() == 1 ? J() : K();
            return fieldDescriptor.x() == Descriptors.FieldDescriptor.Type.ENUM ? fieldDescriptor.q().j(((Integer) J).intValue()) : J;
        }

        @Override // com.google.protobuf.r1
        public h3 getUnknownFields() {
            return h3.d();
        }

        @Override // com.google.protobuf.r1
        public boolean hasField(Descriptors.FieldDescriptor fieldDescriptor) {
            E(fieldDescriptor);
            return fieldDescriptor.getNumber() == 1 ? this.f14943d : this.f14944e;
        }

        private b(c<K, V> cVar) {
            this(cVar, cVar.f14958b, cVar.f14960d, false, false);
        }

        private b(c<K, V> cVar, K k10, V v10, boolean z10, boolean z11) {
            this.f14940a = cVar;
            this.f14941b = k10;
            this.f14942c = v10;
            this.f14943d = z10;
            this.f14944e = z11;
        }
    }

    private e1(Descriptors.b bVar, WireFormat.FieldType fieldType, K k10, WireFormat.FieldType fieldType2, V v10) {
        this.f14939d = -1;
        this.f14936a = k10;
        this.f14937b = v10;
        this.f14938c = new c<>(bVar, this, fieldType, fieldType2);
    }

    private e1(c cVar, K k10, V v10) {
        this.f14939d = -1;
        this.f14936a = k10;
        this.f14937b = v10;
        this.f14938c = cVar;
    }

    private e1(c<K, V> cVar, p pVar, f0 f0Var) throws InvalidProtocolBufferException {
        this.f14939d = -1;
        try {
            this.f14938c = cVar;
            Map.Entry d10 = f1.d(pVar, cVar, f0Var);
            this.f14936a = (K) d10.getKey();
            this.f14937b = (V) d10.getValue();
        } catch (InvalidProtocolBufferException e10) {
            throw e10.setUnfinishedMessage(this);
        } catch (IOException e11) {
            throw new InvalidProtocolBufferException(e11).setUnfinishedMessage(this);
        }
    }
}
