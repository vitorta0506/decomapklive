package com.google.protobuf;

import com.google.protobuf.Descriptors;
import com.google.protobuf.GeneratedMessageV3;
import com.google.protobuf.WireFormat;
import com.google.protobuf.d0;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3.dex */
public final class h0 extends g0<Descriptors.FieldDescriptor> {

    /* renamed from: a  reason: collision with root package name */
    private static final long f14985a = k();

    /* renamed from: b  reason: collision with root package name */
    public static final /* synthetic */ int f14986b = 0;

    /* loaded from: classes3.dex */
    static /* synthetic */ class a {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f14987a;

        static {
            int[] iArr = new int[WireFormat.FieldType.values().length];
            f14987a = iArr;
            try {
                iArr[WireFormat.FieldType.DOUBLE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f14987a[WireFormat.FieldType.FLOAT.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f14987a[WireFormat.FieldType.INT64.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f14987a[WireFormat.FieldType.UINT64.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f14987a[WireFormat.FieldType.INT32.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f14987a[WireFormat.FieldType.FIXED64.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f14987a[WireFormat.FieldType.FIXED32.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f14987a[WireFormat.FieldType.BOOL.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                f14987a[WireFormat.FieldType.UINT32.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                f14987a[WireFormat.FieldType.SFIXED32.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                f14987a[WireFormat.FieldType.SFIXED64.ordinal()] = 11;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                f14987a[WireFormat.FieldType.SINT32.ordinal()] = 12;
            } catch (NoSuchFieldError unused12) {
            }
            try {
                f14987a[WireFormat.FieldType.SINT64.ordinal()] = 13;
            } catch (NoSuchFieldError unused13) {
            }
            try {
                f14987a[WireFormat.FieldType.ENUM.ordinal()] = 14;
            } catch (NoSuchFieldError unused14) {
            }
            try {
                f14987a[WireFormat.FieldType.BYTES.ordinal()] = 15;
            } catch (NoSuchFieldError unused15) {
            }
            try {
                f14987a[WireFormat.FieldType.STRING.ordinal()] = 16;
            } catch (NoSuchFieldError unused16) {
            }
            try {
                f14987a[WireFormat.FieldType.GROUP.ordinal()] = 17;
            } catch (NoSuchFieldError unused17) {
            }
            try {
                f14987a[WireFormat.FieldType.MESSAGE.ordinal()] = 18;
            } catch (NoSuchFieldError unused18) {
            }
        }
    }

    h0() {
    }

    private static <T> long k() {
        return m3.M(GeneratedMessageV3.ExtendableMessage.class.getDeclaredField("extensions"));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.protobuf.g0
    public int a(Map.Entry<?, ?> entry) {
        return ((Descriptors.FieldDescriptor) entry.getKey()).getNumber();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.protobuf.g0
    public Object b(f0 f0Var, o1 o1Var, int i9) {
        return ((d0) f0Var).g(((l1) o1Var).getDescriptorForType(), i9);
    }

    @Override // com.google.protobuf.g0
    public o0<Descriptors.FieldDescriptor> c(Object obj) {
        return (o0) m3.G(obj, f14985a);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.protobuf.g0
    public o0<Descriptors.FieldDescriptor> d(Object obj) {
        o0<Descriptors.FieldDescriptor> c10 = c(obj);
        if (c10.A()) {
            o0<Descriptors.FieldDescriptor> clone = c10.clone();
            l(obj, clone);
            return clone;
        }
        return c10;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.protobuf.g0
    public boolean e(o1 o1Var) {
        return o1Var instanceof GeneratedMessageV3.ExtendableMessage;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.protobuf.g0
    public void f(Object obj) {
        c(obj).F();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.protobuf.g0
    public <UT, UB> UB g(k2 k2Var, Object obj, f0 f0Var, o0<Descriptors.FieldDescriptor> o0Var, UB ub2, g3<UT, UB> g3Var) throws IOException {
        Object r10;
        ArrayList arrayList;
        ArrayList arrayList2;
        d0.c cVar = (d0.c) obj;
        int number = cVar.f14922a.getNumber();
        if (cVar.f14922a.isRepeated() && cVar.f14922a.isPacked()) {
            switch (a.f14987a[cVar.f14922a.e0().ordinal()]) {
                case 1:
                    arrayList = new ArrayList();
                    k2Var.N(arrayList);
                    arrayList2 = arrayList;
                    break;
                case 2:
                    arrayList = new ArrayList();
                    k2Var.I(arrayList);
                    arrayList2 = arrayList;
                    break;
                case 3:
                    arrayList = new ArrayList();
                    k2Var.j(arrayList);
                    arrayList2 = arrayList;
                    break;
                case 4:
                    arrayList = new ArrayList();
                    k2Var.h(arrayList);
                    arrayList2 = arrayList;
                    break;
                case 5:
                    arrayList = new ArrayList();
                    k2Var.B(arrayList);
                    arrayList2 = arrayList;
                    break;
                case 6:
                    arrayList = new ArrayList();
                    k2Var.t(arrayList);
                    arrayList2 = arrayList;
                    break;
                case 7:
                    arrayList = new ArrayList();
                    k2Var.C(arrayList);
                    arrayList2 = arrayList;
                    break;
                case 8:
                    arrayList = new ArrayList();
                    k2Var.n(arrayList);
                    arrayList2 = arrayList;
                    break;
                case 9:
                    arrayList = new ArrayList();
                    k2Var.w(arrayList);
                    arrayList2 = arrayList;
                    break;
                case 10:
                    arrayList = new ArrayList();
                    k2Var.b(arrayList);
                    arrayList2 = arrayList;
                    break;
                case 11:
                    arrayList = new ArrayList();
                    k2Var.A(arrayList);
                    arrayList2 = arrayList;
                    break;
                case 12:
                    arrayList = new ArrayList();
                    k2Var.u(arrayList);
                    arrayList2 = arrayList;
                    break;
                case 13:
                    arrayList = new ArrayList();
                    k2Var.c(arrayList);
                    arrayList2 = arrayList;
                    break;
                case 14:
                    ArrayList<Integer> arrayList3 = new ArrayList();
                    k2Var.k(arrayList3);
                    arrayList2 = new ArrayList();
                    for (Integer num : arrayList3) {
                        int intValue = num.intValue();
                        Descriptors.e a10 = cVar.f14922a.q().a(intValue);
                        if (a10 != null) {
                            arrayList2.add(a10);
                        } else {
                            ub2 = (UB) p2.M(number, intValue, ub2, g3Var);
                        }
                    }
                    break;
                default:
                    throw new IllegalStateException("Type cannot be packed: " + cVar.f14922a.e0());
            }
            o0Var.L(cVar.f14922a, arrayList2);
        } else {
            Object obj2 = null;
            if (cVar.f14922a.e0() == WireFormat.FieldType.ENUM) {
                int s10 = k2Var.s();
                obj2 = cVar.f14922a.q().a(s10);
                if (obj2 == null) {
                    return (UB) p2.M(number, s10, ub2, g3Var);
                }
            } else {
                switch (a.f14987a[cVar.f14922a.e0().ordinal()]) {
                    case 1:
                        obj2 = Double.valueOf(k2Var.readDouble());
                        break;
                    case 2:
                        obj2 = Float.valueOf(k2Var.readFloat());
                        break;
                    case 3:
                        obj2 = Long.valueOf(k2Var.O());
                        break;
                    case 4:
                        obj2 = Long.valueOf(k2Var.v());
                        break;
                    case 5:
                        obj2 = Integer.valueOf(k2Var.s());
                        break;
                    case 6:
                        obj2 = Long.valueOf(k2Var.a());
                        break;
                    case 7:
                        obj2 = Integer.valueOf(k2Var.y());
                        break;
                    case 8:
                        obj2 = Boolean.valueOf(k2Var.e());
                        break;
                    case 9:
                        obj2 = Integer.valueOf(k2Var.i());
                        break;
                    case 10:
                        obj2 = Integer.valueOf(k2Var.L());
                        break;
                    case 11:
                        obj2 = Long.valueOf(k2Var.g());
                        break;
                    case 12:
                        obj2 = Integer.valueOf(k2Var.m());
                        break;
                    case 13:
                        obj2 = Long.valueOf(k2Var.D());
                        break;
                    case 14:
                        throw new IllegalStateException("Shouldn't reach here.");
                    case 15:
                        obj2 = k2Var.r();
                        break;
                    case 16:
                        obj2 = k2Var.E();
                        break;
                    case 17:
                        obj2 = k2Var.o(cVar.f14923b.getClass(), f0Var);
                        break;
                    case 18:
                        obj2 = k2Var.x(cVar.f14923b.getClass(), f0Var);
                        break;
                }
            }
            if (cVar.f14922a.isRepeated()) {
                o0Var.f(cVar.f14922a, obj2);
            } else {
                int i9 = a.f14987a[cVar.f14922a.e0().ordinal()];
                if ((i9 == 17 || i9 == 18) && (r10 = o0Var.r(cVar.f14922a)) != null) {
                    obj2 = u0.k(r10, obj2);
                }
                o0Var.L(cVar.f14922a, obj2);
            }
        }
        return ub2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.protobuf.g0
    public void h(k2 k2Var, Object obj, f0 f0Var, o0<Descriptors.FieldDescriptor> o0Var) throws IOException {
        d0.c cVar = (d0.c) obj;
        if (f0.c()) {
            o0Var.L(cVar.f14922a, k2Var.x(cVar.f14923b.getClass(), f0Var));
            return;
        }
        o0Var.L(cVar.f14922a, new w0(cVar.f14923b, f0Var, k2Var.r()));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.protobuf.g0
    public void i(ByteString byteString, Object obj, f0 f0Var, o0<Descriptors.FieldDescriptor> o0Var) throws IOException {
        d0.c cVar = (d0.c) obj;
        l1 I = cVar.f14923b.newBuilderForType().I();
        if (f0.c()) {
            k Q = k.Q(ByteBuffer.wrap(byteString.toByteArray()), true);
            g2.a().b(I, Q, f0Var);
            o0Var.L(cVar.f14922a, I);
            if (Q.F() != Integer.MAX_VALUE) {
                throw InvalidProtocolBufferException.invalidEndTag();
            }
            return;
        }
        o0Var.L(cVar.f14922a, new w0(cVar.f14923b, f0Var, byteString));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.protobuf.g0
    public void j(Writer writer, Map.Entry<?, ?> entry) throws IOException {
        Descriptors.FieldDescriptor fieldDescriptor = (Descriptors.FieldDescriptor) entry.getKey();
        if (fieldDescriptor.isRepeated()) {
            switch (a.f14987a[fieldDescriptor.e0().ordinal()]) {
                case 1:
                    p2.R(fieldDescriptor.getNumber(), (List) entry.getValue(), writer, fieldDescriptor.isPacked());
                    return;
                case 2:
                    p2.V(fieldDescriptor.getNumber(), (List) entry.getValue(), writer, fieldDescriptor.isPacked());
                    return;
                case 3:
                    p2.Z(fieldDescriptor.getNumber(), (List) entry.getValue(), writer, fieldDescriptor.isPacked());
                    return;
                case 4:
                    p2.i0(fieldDescriptor.getNumber(), (List) entry.getValue(), writer, fieldDescriptor.isPacked());
                    return;
                case 5:
                    p2.Y(fieldDescriptor.getNumber(), (List) entry.getValue(), writer, fieldDescriptor.isPacked());
                    return;
                case 6:
                    p2.U(fieldDescriptor.getNumber(), (List) entry.getValue(), writer, fieldDescriptor.isPacked());
                    return;
                case 7:
                    p2.T(fieldDescriptor.getNumber(), (List) entry.getValue(), writer, fieldDescriptor.isPacked());
                    return;
                case 8:
                    p2.P(fieldDescriptor.getNumber(), (List) entry.getValue(), writer, fieldDescriptor.isPacked());
                    return;
                case 9:
                    p2.h0(fieldDescriptor.getNumber(), (List) entry.getValue(), writer, fieldDescriptor.isPacked());
                    return;
                case 10:
                    p2.c0(fieldDescriptor.getNumber(), (List) entry.getValue(), writer, fieldDescriptor.isPacked());
                    return;
                case 11:
                    p2.d0(fieldDescriptor.getNumber(), (List) entry.getValue(), writer, fieldDescriptor.isPacked());
                    return;
                case 12:
                    p2.e0(fieldDescriptor.getNumber(), (List) entry.getValue(), writer, fieldDescriptor.isPacked());
                    return;
                case 13:
                    p2.f0(fieldDescriptor.getNumber(), (List) entry.getValue(), writer, fieldDescriptor.isPacked());
                    return;
                case 14:
                    ArrayList arrayList = new ArrayList();
                    for (Descriptors.e eVar : (List) entry.getValue()) {
                        arrayList.add(Integer.valueOf(eVar.getNumber()));
                    }
                    p2.Y(fieldDescriptor.getNumber(), arrayList, writer, fieldDescriptor.isPacked());
                    return;
                case 15:
                    p2.Q(fieldDescriptor.getNumber(), (List) entry.getValue(), writer);
                    return;
                case 16:
                    p2.g0(fieldDescriptor.getNumber(), (List) entry.getValue(), writer);
                    return;
                case 17:
                    p2.W(fieldDescriptor.getNumber(), (List) entry.getValue(), writer);
                    return;
                case 18:
                    p2.a0(fieldDescriptor.getNumber(), (List) entry.getValue(), writer);
                    return;
                default:
                    return;
            }
        }
        switch (a.f14987a[fieldDescriptor.e0().ordinal()]) {
            case 1:
                writer.u(fieldDescriptor.getNumber(), ((Double) entry.getValue()).doubleValue());
                return;
            case 2:
                writer.L(fieldDescriptor.getNumber(), ((Float) entry.getValue()).floatValue());
                return;
            case 3:
                writer.C(fieldDescriptor.getNumber(), ((Long) entry.getValue()).longValue());
                return;
            case 4:
                writer.h(fieldDescriptor.getNumber(), ((Long) entry.getValue()).longValue());
                return;
            case 5:
                writer.l(fieldDescriptor.getNumber(), ((Integer) entry.getValue()).intValue());
                return;
            case 6:
                writer.y(fieldDescriptor.getNumber(), ((Long) entry.getValue()).longValue());
                return;
            case 7:
                writer.d(fieldDescriptor.getNumber(), ((Integer) entry.getValue()).intValue());
                return;
            case 8:
                writer.D(fieldDescriptor.getNumber(), ((Boolean) entry.getValue()).booleanValue());
                return;
            case 9:
                writer.t(fieldDescriptor.getNumber(), ((Integer) entry.getValue()).intValue());
                return;
            case 10:
                writer.E(fieldDescriptor.getNumber(), ((Integer) entry.getValue()).intValue());
                return;
            case 11:
                writer.m(fieldDescriptor.getNumber(), ((Long) entry.getValue()).longValue());
                return;
            case 12:
                writer.R(fieldDescriptor.getNumber(), ((Integer) entry.getValue()).intValue());
                return;
            case 13:
                writer.q(fieldDescriptor.getNumber(), ((Long) entry.getValue()).longValue());
                return;
            case 14:
                writer.l(fieldDescriptor.getNumber(), ((Descriptors.e) entry.getValue()).getNumber());
                return;
            case 15:
                writer.k(fieldDescriptor.getNumber(), (ByteString) entry.getValue());
                return;
            case 16:
                writer.g(fieldDescriptor.getNumber(), (String) entry.getValue());
                return;
            case 17:
                writer.J(fieldDescriptor.getNumber(), entry.getValue());
                return;
            case 18:
                writer.B(fieldDescriptor.getNumber(), entry.getValue());
                return;
            default:
                return;
        }
    }

    void l(Object obj, o0<Descriptors.FieldDescriptor> o0Var) {
        m3.X(obj, f14985a, o0Var);
    }
}
