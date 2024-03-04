package com.google.protobuf;

import com.google.protobuf.Descriptors;
import com.google.protobuf.a;
import java.io.IOException;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import java.util.Map;
/* loaded from: classes3.dex */
public final class x extends com.google.protobuf.a {

    /* renamed from: a  reason: collision with root package name */
    private final Descriptors.b f15326a;

    /* renamed from: b  reason: collision with root package name */
    private final o0<Descriptors.FieldDescriptor> f15327b;

    /* renamed from: c  reason: collision with root package name */
    private final Descriptors.FieldDescriptor[] f15328c;

    /* renamed from: d  reason: collision with root package name */
    private final h3 f15329d;

    /* renamed from: e  reason: collision with root package name */
    private int f15330e = -1;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class a extends c<x> {
        a() {
        }

        @Override // com.google.protobuf.e2
        /* renamed from: G */
        public x m(p pVar, f0 f0Var) throws InvalidProtocolBufferException {
            b i9 = x.i(x.this.f15326a);
            try {
                i9.i(pVar, f0Var);
                return i9.I();
            } catch (InvalidProtocolBufferException e10) {
                throw e10.setUnfinishedMessage(i9.I());
            } catch (IOException e11) {
                throw new InvalidProtocolBufferException(e11).setUnfinishedMessage(i9.I());
            }
        }
    }

    /* loaded from: classes3.dex */
    public static final class b extends a.AbstractC0142a<b> {

        /* renamed from: a  reason: collision with root package name */
        private final Descriptors.b f15332a;

        /* renamed from: b  reason: collision with root package name */
        private o0<Descriptors.FieldDescriptor> f15333b;

        /* renamed from: c  reason: collision with root package name */
        private final Descriptors.FieldDescriptor[] f15334c;

        /* renamed from: d  reason: collision with root package name */
        private h3 f15335d;

        /* synthetic */ b(Descriptors.b bVar, a aVar) {
            this(bVar);
        }

        private void G(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            if (fieldDescriptor.isRepeated()) {
                for (Object obj2 : (List) obj) {
                    J(fieldDescriptor, obj2);
                }
                return;
            }
            J(fieldDescriptor, obj);
        }

        private void H() {
            if (this.f15333b.A()) {
                this.f15333b = this.f15333b.clone();
            }
        }

        private void J(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            u0.a(obj);
            if (!(obj instanceof Descriptors.e)) {
                throw new IllegalArgumentException("DynamicMessage should use EnumValueDescriptor to set Enum Value.");
            }
        }

        private void R(Descriptors.FieldDescriptor fieldDescriptor) {
            if (fieldDescriptor.o() != this.f15332a) {
                throw new IllegalArgumentException("FieldDescriptor does not match message type.");
            }
        }

        @Override // com.google.protobuf.l1.a
        /* renamed from: B */
        public b L(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            R(fieldDescriptor);
            H();
            this.f15333b.f(fieldDescriptor, obj);
            return this;
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: C */
        public x build() {
            if (isInitialized()) {
                return I();
            }
            Descriptors.b bVar = this.f15332a;
            o0<Descriptors.FieldDescriptor> o0Var = this.f15333b;
            Descriptors.FieldDescriptor[] fieldDescriptorArr = this.f15334c;
            throw a.AbstractC0142a.A(new x(bVar, o0Var, (Descriptors.FieldDescriptor[]) Arrays.copyOf(fieldDescriptorArr, fieldDescriptorArr.length), this.f15335d));
        }

        @Override // com.google.protobuf.o1.a, com.google.protobuf.l1.a
        /* renamed from: D */
        public x I() {
            if (this.f15332a.q().getMapEntry()) {
                for (Descriptors.FieldDescriptor fieldDescriptor : this.f15332a.m()) {
                    if (fieldDescriptor.B() && !this.f15333b.y(fieldDescriptor)) {
                        if (fieldDescriptor.t() == Descriptors.FieldDescriptor.JavaType.MESSAGE) {
                            this.f15333b.L(fieldDescriptor, x.f(fieldDescriptor.v()));
                        } else {
                            this.f15333b.L(fieldDescriptor, fieldDescriptor.p());
                        }
                    }
                }
            }
            this.f15333b.F();
            Descriptors.b bVar = this.f15332a;
            o0<Descriptors.FieldDescriptor> o0Var = this.f15333b;
            Descriptors.FieldDescriptor[] fieldDescriptorArr = this.f15334c;
            return new x(bVar, o0Var, (Descriptors.FieldDescriptor[]) Arrays.copyOf(fieldDescriptorArr, fieldDescriptorArr.length), this.f15335d);
        }

        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: E */
        public b n() {
            b bVar = new b(this.f15332a);
            bVar.f15333b.G(this.f15333b);
            bVar.z(this.f15335d);
            Descriptors.FieldDescriptor[] fieldDescriptorArr = this.f15334c;
            System.arraycopy(fieldDescriptorArr, 0, bVar.f15334c, 0, fieldDescriptorArr.length);
            return bVar;
        }

        @Override // com.google.protobuf.p1, com.google.protobuf.r1
        /* renamed from: K */
        public x getDefaultInstanceForType() {
            return x.f(this.f15332a);
        }

        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: M */
        public b v(l1 l1Var) {
            if (l1Var instanceof x) {
                x xVar = (x) l1Var;
                if (xVar.f15326a == this.f15332a) {
                    H();
                    this.f15333b.G(xVar.f15327b);
                    z(xVar.f15329d);
                    int i9 = 0;
                    while (true) {
                        Descriptors.FieldDescriptor[] fieldDescriptorArr = this.f15334c;
                        if (i9 >= fieldDescriptorArr.length) {
                            return this;
                        }
                        if (fieldDescriptorArr[i9] == null) {
                            fieldDescriptorArr[i9] = xVar.f15328c[i9];
                        } else if (xVar.f15328c[i9] != null && this.f15334c[i9] != xVar.f15328c[i9]) {
                            this.f15333b.g(this.f15334c[i9]);
                            this.f15334c[i9] = xVar.f15328c[i9];
                        }
                        i9++;
                    }
                } else {
                    throw new IllegalArgumentException("mergeFrom(Message) can only merge messages of the same type.");
                }
            } else {
                return (b) super.P0(l1Var);
            }
        }

        @Override // com.google.protobuf.a.AbstractC0142a
        /* renamed from: N */
        public b z(h3 h3Var) {
            this.f15335d = h3.i(this.f15335d).p(h3Var).build();
            return this;
        }

        @Override // com.google.protobuf.l1.a
        /* renamed from: O */
        public b F0(Descriptors.FieldDescriptor fieldDescriptor) {
            R(fieldDescriptor);
            if (fieldDescriptor.t() == Descriptors.FieldDescriptor.JavaType.MESSAGE) {
                return new b(fieldDescriptor.v());
            }
            throw new IllegalArgumentException("newBuilderForField is only valid for fields with message type.");
        }

        @Override // com.google.protobuf.l1.a
        /* renamed from: P */
        public b c(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            R(fieldDescriptor);
            H();
            if (fieldDescriptor.x() == Descriptors.FieldDescriptor.Type.ENUM) {
                G(fieldDescriptor, obj);
            }
            Descriptors.i m10 = fieldDescriptor.m();
            if (m10 != null) {
                int o10 = m10.o();
                Descriptors.FieldDescriptor fieldDescriptor2 = this.f15334c[o10];
                if (fieldDescriptor2 != null && fieldDescriptor2 != fieldDescriptor) {
                    this.f15333b.g(fieldDescriptor2);
                }
                this.f15334c[o10] = fieldDescriptor;
            } else if (fieldDescriptor.b().r() == Descriptors.FileDescriptor.Syntax.PROTO3 && !fieldDescriptor.isRepeated() && fieldDescriptor.t() != Descriptors.FieldDescriptor.JavaType.MESSAGE && obj.equals(fieldDescriptor.p())) {
                this.f15333b.g(fieldDescriptor);
                return this;
            }
            this.f15333b.L(fieldDescriptor, obj);
            return this;
        }

        @Override // com.google.protobuf.l1.a
        /* renamed from: Q */
        public b f1(h3 h3Var) {
            this.f15335d = h3Var;
            return this;
        }

        @Override // com.google.protobuf.r1
        public Map<Descriptors.FieldDescriptor, Object> getAllFields() {
            return this.f15333b.q();
        }

        @Override // com.google.protobuf.l1.a, com.google.protobuf.r1
        public Descriptors.b getDescriptorForType() {
            return this.f15332a;
        }

        @Override // com.google.protobuf.r1
        public Object getField(Descriptors.FieldDescriptor fieldDescriptor) {
            R(fieldDescriptor);
            Object r10 = this.f15333b.r(fieldDescriptor);
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

        @Override // com.google.protobuf.r1
        public h3 getUnknownFields() {
            return this.f15335d;
        }

        @Override // com.google.protobuf.r1
        public boolean hasField(Descriptors.FieldDescriptor fieldDescriptor) {
            R(fieldDescriptor);
            return this.f15333b.y(fieldDescriptor);
        }

        @Override // com.google.protobuf.p1
        public boolean isInitialized() {
            return x.h(this.f15332a, this.f15333b);
        }

        private b(Descriptors.b bVar) {
            this.f15332a = bVar;
            this.f15333b = o0.J();
            this.f15335d = h3.d();
            this.f15334c = new Descriptors.FieldDescriptor[bVar.e().getOneofDeclCount()];
        }
    }

    x(Descriptors.b bVar, o0<Descriptors.FieldDescriptor> o0Var, Descriptors.FieldDescriptor[] fieldDescriptorArr, h3 h3Var) {
        this.f15326a = bVar;
        this.f15327b = o0Var;
        this.f15328c = fieldDescriptorArr;
        this.f15329d = h3Var;
    }

    public static x f(Descriptors.b bVar) {
        return new x(bVar, o0.p(), new Descriptors.FieldDescriptor[bVar.e().getOneofDeclCount()], h3.d());
    }

    static boolean h(Descriptors.b bVar, o0<Descriptors.FieldDescriptor> o0Var) {
        for (Descriptors.FieldDescriptor fieldDescriptor : bVar.m()) {
            if (fieldDescriptor.F() && !o0Var.y(fieldDescriptor)) {
                return false;
            }
        }
        return o0Var.B();
    }

    public static b i(Descriptors.b bVar) {
        return new b(bVar, null);
    }

    private void l(Descriptors.i iVar) {
        if (iVar.k() != this.f15326a) {
            throw new IllegalArgumentException("OneofDescriptor does not match message type.");
        }
    }

    private void verifyContainingType(Descriptors.FieldDescriptor fieldDescriptor) {
        if (fieldDescriptor.o() != this.f15326a) {
            throw new IllegalArgumentException("FieldDescriptor does not match message type.");
        }
    }

    @Override // com.google.protobuf.p1, com.google.protobuf.r1
    /* renamed from: g */
    public x getDefaultInstanceForType() {
        return f(this.f15326a);
    }

    @Override // com.google.protobuf.r1
    public Map<Descriptors.FieldDescriptor, Object> getAllFields() {
        return this.f15327b.q();
    }

    @Override // com.google.protobuf.r1
    public Descriptors.b getDescriptorForType() {
        return this.f15326a;
    }

    @Override // com.google.protobuf.r1
    public Object getField(Descriptors.FieldDescriptor fieldDescriptor) {
        verifyContainingType(fieldDescriptor);
        Object r10 = this.f15327b.r(fieldDescriptor);
        if (r10 == null) {
            if (fieldDescriptor.isRepeated()) {
                return Collections.emptyList();
            }
            if (fieldDescriptor.t() == Descriptors.FieldDescriptor.JavaType.MESSAGE) {
                return f(fieldDescriptor.v());
            }
            return fieldDescriptor.p();
        }
        return r10;
    }

    @Override // com.google.protobuf.a
    public Descriptors.FieldDescriptor getOneofFieldDescriptor(Descriptors.i iVar) {
        l(iVar);
        return this.f15328c[iVar.o()];
    }

    @Override // com.google.protobuf.o1, com.google.protobuf.l1
    public e2<x> getParserForType() {
        return new a();
    }

    @Override // com.google.protobuf.a, com.google.protobuf.o1
    public int getSerializedSize() {
        int w6;
        int serializedSize;
        int i9 = this.f15330e;
        if (i9 != -1) {
            return i9;
        }
        if (this.f15326a.q().getMessageSetWireFormat()) {
            w6 = this.f15327b.s();
            serializedSize = this.f15329d.g();
        } else {
            w6 = this.f15327b.w();
            serializedSize = this.f15329d.getSerializedSize();
        }
        int i10 = w6 + serializedSize;
        this.f15330e = i10;
        return i10;
    }

    @Override // com.google.protobuf.r1
    public h3 getUnknownFields() {
        return this.f15329d;
    }

    @Override // com.google.protobuf.r1
    public boolean hasField(Descriptors.FieldDescriptor fieldDescriptor) {
        verifyContainingType(fieldDescriptor);
        return this.f15327b.y(fieldDescriptor);
    }

    @Override // com.google.protobuf.a
    public boolean hasOneof(Descriptors.i iVar) {
        l(iVar);
        return this.f15328c[iVar.o()] != null;
    }

    @Override // com.google.protobuf.a, com.google.protobuf.p1
    public boolean isInitialized() {
        return h(this.f15326a, this.f15327b);
    }

    @Override // com.google.protobuf.o1, com.google.protobuf.l1
    /* renamed from: j */
    public b newBuilderForType() {
        return new b(this.f15326a, null);
    }

    @Override // com.google.protobuf.o1, com.google.protobuf.l1
    /* renamed from: k */
    public b toBuilder() {
        return newBuilderForType().v(this);
    }

    @Override // com.google.protobuf.a, com.google.protobuf.o1
    public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
        if (this.f15326a.q().getMessageSetWireFormat()) {
            this.f15327b.Q(codedOutputStream);
            this.f15329d.m(codedOutputStream);
            return;
        }
        this.f15327b.S(codedOutputStream);
        this.f15329d.writeTo(codedOutputStream);
    }
}
