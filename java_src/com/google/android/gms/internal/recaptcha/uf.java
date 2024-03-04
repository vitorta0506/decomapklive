package com.google.android.gms.internal.recaptcha;

import com.google.android.gms.internal.recaptcha.tf;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class uf<T extends tf<T>> {

    /* renamed from: d  reason: collision with root package name */
    private static final uf f9087d = new uf(true);

    /* renamed from: a  reason: collision with root package name */
    final ei<T, Object> f9088a = new xh(16);

    /* renamed from: b  reason: collision with root package name */
    private boolean f9089b;

    /* renamed from: c  reason: collision with root package name */
    private boolean f9090c;

    private uf() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int a(zzuh zzuhVar, int i9, Object obj) {
        int k10 = hf.k(i9);
        if (zzuhVar == zzuh.zzj) {
            mg.i((gh) obj);
            k10 += k10;
        }
        zzui zzuiVar = zzui.INT;
        int i10 = 4;
        switch (zzuhVar.ordinal()) {
            case 0:
                ((Double) obj).doubleValue();
                i10 = 8;
                break;
            case 1:
                ((Float) obj).floatValue();
                break;
            case 2:
                i10 = hf.m(((Long) obj).longValue());
                break;
            case 3:
                i10 = hf.m(((Long) obj).longValue());
                break;
            case 4:
                i10 = hf.e(((Integer) obj).intValue());
                break;
            case 5:
                ((Long) obj).longValue();
                i10 = 8;
                break;
            case 6:
                ((Integer) obj).intValue();
                break;
            case 7:
                ((Boolean) obj).booleanValue();
                i10 = 1;
                break;
            case 8:
                if (obj instanceof zzpy) {
                    i10 = hf.b((zzpy) obj);
                    break;
                } else {
                    i10 = hf.j((String) obj);
                    break;
                }
            case 9:
                i10 = hf.d((gh) obj);
                break;
            case 10:
                if (obj instanceof ng) {
                    i10 = hf.f((ng) obj);
                    break;
                } else {
                    i10 = hf.g((gh) obj);
                    break;
                }
            case 11:
                if (obj instanceof zzpy) {
                    i10 = hf.b((zzpy) obj);
                    break;
                } else {
                    i10 = hf.O((byte[]) obj);
                    break;
                }
            case 12:
                i10 = hf.l(((Integer) obj).intValue());
                break;
            case 13:
                if (obj instanceof fg) {
                    i10 = hf.e(((fg) obj).zza());
                    break;
                } else {
                    i10 = hf.e(((Integer) obj).intValue());
                    break;
                }
            case 14:
                ((Integer) obj).intValue();
                break;
            case 15:
                ((Long) obj).longValue();
                i10 = 8;
                break;
            case 16:
                int intValue = ((Integer) obj).intValue();
                i10 = hf.l((intValue >> 31) ^ (intValue + intValue));
                break;
            case 17:
                long longValue = ((Long) obj).longValue();
                i10 = hf.m((longValue >> 63) ^ (longValue + longValue));
                break;
            default:
                throw new RuntimeException("There is no way to get here, but the compiler thinks otherwise.");
        }
        return k10 + i10;
    }

    public static <T extends tf<T>> uf<T> b() {
        throw null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void e(hf hfVar, zzuh zzuhVar, int i9, Object obj) throws IOException {
        if (zzuhVar != zzuh.zzj) {
            hfVar.J(i9, zzuhVar.zza());
            zzui zzuiVar = zzui.INT;
            switch (zzuhVar.ordinal()) {
                case 0:
                    hfVar.C(Double.doubleToRawLongBits(((Double) obj).doubleValue()));
                    return;
                case 1:
                    hfVar.A(Float.floatToRawIntBits(((Float) obj).floatValue()));
                    return;
                case 2:
                    hfVar.N(((Long) obj).longValue());
                    return;
                case 3:
                    hfVar.N(((Long) obj).longValue());
                    return;
                case 4:
                    hfVar.E(((Integer) obj).intValue());
                    return;
                case 5:
                    hfVar.C(((Long) obj).longValue());
                    return;
                case 6:
                    hfVar.A(((Integer) obj).intValue());
                    return;
                case 7:
                    hfVar.t(((Boolean) obj).booleanValue() ? (byte) 1 : (byte) 0);
                    return;
                case 8:
                    if (obj instanceof zzpy) {
                        hfVar.y((zzpy) obj);
                        return;
                    } else {
                        hfVar.I((String) obj);
                        return;
                    }
                case 9:
                    ((gh) obj).a(hfVar);
                    return;
                case 10:
                    hfVar.G((gh) obj);
                    return;
                case 11:
                    if (obj instanceof zzpy) {
                        hfVar.y((zzpy) obj);
                        return;
                    }
                    byte[] bArr = (byte[]) obj;
                    hfVar.v(bArr, 0, bArr.length);
                    return;
                case 12:
                    hfVar.L(((Integer) obj).intValue());
                    return;
                case 13:
                    if (obj instanceof fg) {
                        hfVar.E(((fg) obj).zza());
                        return;
                    } else {
                        hfVar.E(((Integer) obj).intValue());
                        return;
                    }
                case 14:
                    hfVar.A(((Integer) obj).intValue());
                    return;
                case 15:
                    hfVar.C(((Long) obj).longValue());
                    return;
                case 16:
                    int intValue = ((Integer) obj).intValue();
                    hfVar.L((intValue >> 31) ^ (intValue + intValue));
                    return;
                case 17:
                    long longValue = ((Long) obj).longValue();
                    hfVar.N((longValue >> 63) ^ (longValue + longValue));
                    return;
                default:
                    return;
            }
        }
        gh ghVar = (gh) obj;
        mg.i(ghVar);
        hfVar.J(i9, 3);
        ghVar.a(hfVar);
        hfVar.J(i9, 4);
    }

    /* JADX WARN: Removed duplicated region for block: B:32:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static final void f(T r4, java.lang.Object r5) {
        /*
            com.google.android.gms.internal.recaptcha.zzuh r0 = r4.D()
            com.google.android.gms.internal.recaptcha.mg.e(r5)
            com.google.android.gms.internal.recaptcha.zzuh r1 = com.google.android.gms.internal.recaptcha.zzuh.zza
            com.google.android.gms.internal.recaptcha.zzui r1 = com.google.android.gms.internal.recaptcha.zzui.INT
            com.google.android.gms.internal.recaptcha.zzui r0 = r0.zzb()
            int r0 = r0.ordinal()
            switch(r0) {
                case 0: goto L41;
                case 1: goto L3e;
                case 2: goto L3b;
                case 3: goto L38;
                case 4: goto L35;
                case 5: goto L32;
                case 6: goto L29;
                case 7: goto L20;
                case 8: goto L17;
                default: goto L16;
            }
        L16:
            goto L46
        L17:
            boolean r0 = r5 instanceof com.google.android.gms.internal.recaptcha.gh
            if (r0 != 0) goto L45
            boolean r0 = r5 instanceof com.google.android.gms.internal.recaptcha.ng
            if (r0 == 0) goto L46
            goto L45
        L20:
            boolean r0 = r5 instanceof java.lang.Integer
            if (r0 != 0) goto L45
            boolean r0 = r5 instanceof com.google.android.gms.internal.recaptcha.fg
            if (r0 == 0) goto L46
            goto L45
        L29:
            boolean r0 = r5 instanceof com.google.android.gms.internal.recaptcha.zzpy
            if (r0 != 0) goto L45
            boolean r0 = r5 instanceof byte[]
            if (r0 == 0) goto L46
            goto L45
        L32:
            boolean r0 = r5 instanceof java.lang.String
            goto L43
        L35:
            boolean r0 = r5 instanceof java.lang.Boolean
            goto L43
        L38:
            boolean r0 = r5 instanceof java.lang.Double
            goto L43
        L3b:
            boolean r0 = r5 instanceof java.lang.Float
            goto L43
        L3e:
            boolean r0 = r5 instanceof java.lang.Long
            goto L43
        L41:
            boolean r0 = r5 instanceof java.lang.Integer
        L43:
            if (r0 == 0) goto L46
        L45:
            return
        L46:
            java.lang.IllegalArgumentException r0 = new java.lang.IllegalArgumentException
            r1 = 3
            java.lang.Object[] r1 = new java.lang.Object[r1]
            r2 = 0
            int r3 = r4.zza()
            java.lang.Integer r3 = java.lang.Integer.valueOf(r3)
            r1[r2] = r3
            r2 = 1
            com.google.android.gms.internal.recaptcha.zzuh r4 = r4.D()
            com.google.android.gms.internal.recaptcha.zzui r4 = r4.zzb()
            r1[r2] = r4
            r4 = 2
            java.lang.Class r5 = r5.getClass()
            java.lang.String r5 = r5.getName()
            r1[r4] = r5
            java.lang.String r4 = "Wrong object type used with protocol message reflection.\nField number: %d, field java type: %s, value type: %s\n"
            java.lang.String r4 = java.lang.String.format(r4, r1)
            r0.<init>(r4)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.recaptcha.uf.f(com.google.android.gms.internal.recaptcha.tf, java.lang.Object):void");
    }

    public final void c() {
        if (this.f9089b) {
            return;
        }
        this.f9088a.a();
        this.f9089b = true;
    }

    public final /* bridge */ /* synthetic */ Object clone() throws CloneNotSupportedException {
        uf ufVar = new uf();
        for (int i9 = 0; i9 < this.f9088a.b(); i9++) {
            Map.Entry<T, Object> g10 = this.f9088a.g(i9);
            ufVar.d(g10.getKey(), g10.getValue());
        }
        for (Map.Entry<T, Object> entry : this.f9088a.c()) {
            ufVar.d(entry.getKey(), entry.getValue());
        }
        ufVar.f9090c = this.f9090c;
        return ufVar;
    }

    public final void d(T t10, Object obj) {
        if (t10.E()) {
            if (obj instanceof List) {
                ArrayList arrayList = new ArrayList();
                arrayList.addAll((List) obj);
                int size = arrayList.size();
                for (int i9 = 0; i9 < size; i9++) {
                    f(t10, arrayList.get(i9));
                }
                obj = arrayList;
            } else {
                throw new IllegalArgumentException("Wrong object type used with protocol message reflection.");
            }
        } else {
            f(t10, obj);
        }
        if (obj instanceof ng) {
            this.f9090c = true;
        }
        this.f9088a.put(t10, obj);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof uf) {
            return this.f9088a.equals(((uf) obj).f9088a);
        }
        return false;
    }

    public final int hashCode() {
        return this.f9088a.hashCode();
    }

    private uf(boolean z10) {
        c();
        c();
    }
}
