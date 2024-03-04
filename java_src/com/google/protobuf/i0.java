package com.google.protobuf;

import com.google.protobuf.GeneratedMessageLite;
import com.google.protobuf.WireFormat;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
/* loaded from: classes3.dex */
final class i0 extends g0<GeneratedMessageLite.c> {

    /* loaded from: classes3.dex */
    static /* synthetic */ class a {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f15006a;

        static {
            int[] iArr = new int[WireFormat.FieldType.values().length];
            f15006a = iArr;
            try {
                iArr[WireFormat.FieldType.DOUBLE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f15006a[WireFormat.FieldType.FLOAT.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f15006a[WireFormat.FieldType.INT64.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f15006a[WireFormat.FieldType.UINT64.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f15006a[WireFormat.FieldType.INT32.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f15006a[WireFormat.FieldType.FIXED64.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f15006a[WireFormat.FieldType.FIXED32.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f15006a[WireFormat.FieldType.BOOL.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                f15006a[WireFormat.FieldType.UINT32.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                f15006a[WireFormat.FieldType.SFIXED32.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                f15006a[WireFormat.FieldType.SFIXED64.ordinal()] = 11;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                f15006a[WireFormat.FieldType.SINT32.ordinal()] = 12;
            } catch (NoSuchFieldError unused12) {
            }
            try {
                f15006a[WireFormat.FieldType.SINT64.ordinal()] = 13;
            } catch (NoSuchFieldError unused13) {
            }
            try {
                f15006a[WireFormat.FieldType.ENUM.ordinal()] = 14;
            } catch (NoSuchFieldError unused14) {
            }
            try {
                f15006a[WireFormat.FieldType.BYTES.ordinal()] = 15;
            } catch (NoSuchFieldError unused15) {
            }
            try {
                f15006a[WireFormat.FieldType.STRING.ordinal()] = 16;
            } catch (NoSuchFieldError unused16) {
            }
            try {
                f15006a[WireFormat.FieldType.GROUP.ordinal()] = 17;
            } catch (NoSuchFieldError unused17) {
            }
            try {
                f15006a[WireFormat.FieldType.MESSAGE.ordinal()] = 18;
            } catch (NoSuchFieldError unused18) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.protobuf.g0
    public int a(Map.Entry<?, ?> entry) {
        return ((GeneratedMessageLite.c) entry.getKey()).getNumber();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.protobuf.g0
    public Object b(f0 f0Var, o1 o1Var, int i9) {
        return f0Var.a(o1Var, i9);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.protobuf.g0
    public o0<GeneratedMessageLite.c> c(Object obj) {
        return ((GeneratedMessageLite.b) obj).f14694d;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.protobuf.g0
    public o0<GeneratedMessageLite.c> d(Object obj) {
        return ((GeneratedMessageLite.b) obj).l();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.protobuf.g0
    public boolean e(o1 o1Var) {
        return o1Var instanceof GeneratedMessageLite.b;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.protobuf.g0
    public void f(Object obj) {
        c(obj).F();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.protobuf.g0
    public <UT, UB> UB g(k2 k2Var, Object obj, f0 f0Var, o0<GeneratedMessageLite.c> o0Var, UB ub2, g3<UT, UB> g3Var) throws IOException {
        Object r10;
        ArrayList arrayList;
        GeneratedMessageLite.d dVar = (GeneratedMessageLite.d) obj;
        int d10 = dVar.d();
        if (dVar.f14701b.isRepeated() && dVar.f14701b.isPacked()) {
            switch (a.f15006a[dVar.b().ordinal()]) {
                case 1:
                    arrayList = new ArrayList();
                    k2Var.N(arrayList);
                    break;
                case 2:
                    arrayList = new ArrayList();
                    k2Var.I(arrayList);
                    break;
                case 3:
                    arrayList = new ArrayList();
                    k2Var.j(arrayList);
                    break;
                case 4:
                    arrayList = new ArrayList();
                    k2Var.h(arrayList);
                    break;
                case 5:
                    arrayList = new ArrayList();
                    k2Var.B(arrayList);
                    break;
                case 6:
                    arrayList = new ArrayList();
                    k2Var.t(arrayList);
                    break;
                case 7:
                    arrayList = new ArrayList();
                    k2Var.C(arrayList);
                    break;
                case 8:
                    arrayList = new ArrayList();
                    k2Var.n(arrayList);
                    break;
                case 9:
                    arrayList = new ArrayList();
                    k2Var.w(arrayList);
                    break;
                case 10:
                    arrayList = new ArrayList();
                    k2Var.b(arrayList);
                    break;
                case 11:
                    arrayList = new ArrayList();
                    k2Var.A(arrayList);
                    break;
                case 12:
                    arrayList = new ArrayList();
                    k2Var.u(arrayList);
                    break;
                case 13:
                    arrayList = new ArrayList();
                    k2Var.c(arrayList);
                    break;
                case 14:
                    arrayList = new ArrayList();
                    k2Var.k(arrayList);
                    ub2 = (UB) p2.z(d10, arrayList, dVar.f14701b.b(), ub2, g3Var);
                    break;
                default:
                    throw new IllegalStateException("Type cannot be packed: " + dVar.f14701b.e0());
            }
            o0Var.L(dVar.f14701b, arrayList);
        } else {
            Object obj2 = null;
            if (dVar.b() == WireFormat.FieldType.ENUM) {
                int s10 = k2Var.s();
                if (dVar.f14701b.b().a(s10) == null) {
                    return (UB) p2.M(d10, s10, ub2, g3Var);
                }
                obj2 = Integer.valueOf(s10);
            } else {
                switch (a.f15006a[dVar.b().ordinal()]) {
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
                        obj2 = k2Var.o(dVar.c().getClass(), f0Var);
                        break;
                    case 18:
                        obj2 = k2Var.x(dVar.c().getClass(), f0Var);
                        break;
                }
            }
            if (dVar.e()) {
                o0Var.f(dVar.f14701b, obj2);
            } else {
                int i9 = a.f15006a[dVar.b().ordinal()];
                if ((i9 == 17 || i9 == 18) && (r10 = o0Var.r(dVar.f14701b)) != null) {
                    obj2 = u0.k(r10, obj2);
                }
                o0Var.L(dVar.f14701b, obj2);
            }
        }
        return ub2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.protobuf.g0
    public void h(k2 k2Var, Object obj, f0 f0Var, o0<GeneratedMessageLite.c> o0Var) throws IOException {
        GeneratedMessageLite.d dVar = (GeneratedMessageLite.d) obj;
        o0Var.L(dVar.f14701b, k2Var.x(dVar.c().getClass(), f0Var));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.protobuf.g0
    public void i(ByteString byteString, Object obj, f0 f0Var, o0<GeneratedMessageLite.c> o0Var) throws IOException {
        GeneratedMessageLite.d dVar = (GeneratedMessageLite.d) obj;
        o1 I = dVar.c().newBuilderForType().I();
        k Q = k.Q(ByteBuffer.wrap(byteString.toByteArray()), true);
        g2.a().b(I, Q, f0Var);
        o0Var.L(dVar.f14701b, I);
        if (Q.F() != Integer.MAX_VALUE) {
            throw InvalidProtocolBufferException.invalidEndTag();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.protobuf.g0
    public void j(Writer writer, Map.Entry<?, ?> entry) throws IOException {
        GeneratedMessageLite.c cVar = (GeneratedMessageLite.c) entry.getKey();
        if (cVar.isRepeated()) {
            switch (a.f15006a[cVar.e0().ordinal()]) {
                case 1:
                    p2.R(cVar.getNumber(), (List) entry.getValue(), writer, cVar.isPacked());
                    return;
                case 2:
                    p2.V(cVar.getNumber(), (List) entry.getValue(), writer, cVar.isPacked());
                    return;
                case 3:
                    p2.Z(cVar.getNumber(), (List) entry.getValue(), writer, cVar.isPacked());
                    return;
                case 4:
                    p2.i0(cVar.getNumber(), (List) entry.getValue(), writer, cVar.isPacked());
                    return;
                case 5:
                    p2.Y(cVar.getNumber(), (List) entry.getValue(), writer, cVar.isPacked());
                    return;
                case 6:
                    p2.U(cVar.getNumber(), (List) entry.getValue(), writer, cVar.isPacked());
                    return;
                case 7:
                    p2.T(cVar.getNumber(), (List) entry.getValue(), writer, cVar.isPacked());
                    return;
                case 8:
                    p2.P(cVar.getNumber(), (List) entry.getValue(), writer, cVar.isPacked());
                    return;
                case 9:
                    p2.h0(cVar.getNumber(), (List) entry.getValue(), writer, cVar.isPacked());
                    return;
                case 10:
                    p2.c0(cVar.getNumber(), (List) entry.getValue(), writer, cVar.isPacked());
                    return;
                case 11:
                    p2.d0(cVar.getNumber(), (List) entry.getValue(), writer, cVar.isPacked());
                    return;
                case 12:
                    p2.e0(cVar.getNumber(), (List) entry.getValue(), writer, cVar.isPacked());
                    return;
                case 13:
                    p2.f0(cVar.getNumber(), (List) entry.getValue(), writer, cVar.isPacked());
                    return;
                case 14:
                    p2.Y(cVar.getNumber(), (List) entry.getValue(), writer, cVar.isPacked());
                    return;
                case 15:
                    p2.Q(cVar.getNumber(), (List) entry.getValue(), writer);
                    return;
                case 16:
                    p2.g0(cVar.getNumber(), (List) entry.getValue(), writer);
                    return;
                case 17:
                    List list = (List) entry.getValue();
                    if (list == null || list.isEmpty()) {
                        return;
                    }
                    p2.X(cVar.getNumber(), (List) entry.getValue(), writer, g2.a().d(list.get(0).getClass()));
                    return;
                case 18:
                    List list2 = (List) entry.getValue();
                    if (list2 == null || list2.isEmpty()) {
                        return;
                    }
                    p2.b0(cVar.getNumber(), (List) entry.getValue(), writer, g2.a().d(list2.get(0).getClass()));
                    return;
                default:
                    return;
            }
        }
        switch (a.f15006a[cVar.e0().ordinal()]) {
            case 1:
                writer.u(cVar.getNumber(), ((Double) entry.getValue()).doubleValue());
                return;
            case 2:
                writer.L(cVar.getNumber(), ((Float) entry.getValue()).floatValue());
                return;
            case 3:
                writer.C(cVar.getNumber(), ((Long) entry.getValue()).longValue());
                return;
            case 4:
                writer.h(cVar.getNumber(), ((Long) entry.getValue()).longValue());
                return;
            case 5:
                writer.l(cVar.getNumber(), ((Integer) entry.getValue()).intValue());
                return;
            case 6:
                writer.y(cVar.getNumber(), ((Long) entry.getValue()).longValue());
                return;
            case 7:
                writer.d(cVar.getNumber(), ((Integer) entry.getValue()).intValue());
                return;
            case 8:
                writer.D(cVar.getNumber(), ((Boolean) entry.getValue()).booleanValue());
                return;
            case 9:
                writer.t(cVar.getNumber(), ((Integer) entry.getValue()).intValue());
                return;
            case 10:
                writer.E(cVar.getNumber(), ((Integer) entry.getValue()).intValue());
                return;
            case 11:
                writer.m(cVar.getNumber(), ((Long) entry.getValue()).longValue());
                return;
            case 12:
                writer.R(cVar.getNumber(), ((Integer) entry.getValue()).intValue());
                return;
            case 13:
                writer.q(cVar.getNumber(), ((Long) entry.getValue()).longValue());
                return;
            case 14:
                writer.l(cVar.getNumber(), ((Integer) entry.getValue()).intValue());
                return;
            case 15:
                writer.k(cVar.getNumber(), (ByteString) entry.getValue());
                return;
            case 16:
                writer.g(cVar.getNumber(), (String) entry.getValue());
                return;
            case 17:
                writer.j(cVar.getNumber(), entry.getValue(), g2.a().d(entry.getValue().getClass()));
                return;
            case 18:
                writer.x(cVar.getNumber(), entry.getValue(), g2.a().d(entry.getValue().getClass()));
                return;
            default:
                return;
        }
    }
}
