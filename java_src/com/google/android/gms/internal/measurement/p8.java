package com.google.android.gms.internal.measurement;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;
/* loaded from: classes2.dex */
final class p8 {

    /* renamed from: d  reason: collision with root package name */
    private static final p8 f8259d = new p8(true);

    /* renamed from: a  reason: collision with root package name */
    final ya f8260a = new na(16);

    /* renamed from: b  reason: collision with root package name */
    private boolean f8261b;

    /* renamed from: c  reason: collision with root package name */
    private boolean f8262c;

    private p8() {
    }

    public static p8 a() {
        throw null;
    }

    /* JADX WARN: Removed duplicated region for block: B:26:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static final void d(com.google.android.gms.internal.measurement.o8 r4, java.lang.Object r5) {
        /*
            com.google.android.gms.internal.measurement.zznd r0 = r4.D()
            com.google.android.gms.internal.measurement.e9.e(r5)
            com.google.android.gms.internal.measurement.zznd r1 = com.google.android.gms.internal.measurement.zznd.zza
            com.google.android.gms.internal.measurement.zzne r1 = com.google.android.gms.internal.measurement.zzne.INT
            com.google.android.gms.internal.measurement.zzne r0 = r0.zza()
            int r0 = r0.ordinal()
            switch(r0) {
                case 0: goto L39;
                case 1: goto L36;
                case 2: goto L33;
                case 3: goto L30;
                case 4: goto L2d;
                case 5: goto L2a;
                case 6: goto L21;
                case 7: goto L1c;
                case 8: goto L17;
                default: goto L16;
            }
        L16:
            goto L3e
        L17:
            boolean r0 = r5 instanceof com.google.android.gms.internal.measurement.z9
            if (r0 == 0) goto L3e
            goto L3d
        L1c:
            boolean r0 = r5 instanceof java.lang.Integer
            if (r0 == 0) goto L3e
            goto L3d
        L21:
            boolean r0 = r5 instanceof com.google.android.gms.internal.measurement.zzjd
            if (r0 != 0) goto L3d
            boolean r0 = r5 instanceof byte[]
            if (r0 == 0) goto L3e
            goto L3d
        L2a:
            boolean r0 = r5 instanceof java.lang.String
            goto L3b
        L2d:
            boolean r0 = r5 instanceof java.lang.Boolean
            goto L3b
        L30:
            boolean r0 = r5 instanceof java.lang.Double
            goto L3b
        L33:
            boolean r0 = r5 instanceof java.lang.Float
            goto L3b
        L36:
            boolean r0 = r5 instanceof java.lang.Long
            goto L3b
        L39:
            boolean r0 = r5 instanceof java.lang.Integer
        L3b:
            if (r0 == 0) goto L3e
        L3d:
            return
        L3e:
            java.lang.IllegalArgumentException r0 = new java.lang.IllegalArgumentException
            r1 = 3
            java.lang.Object[] r1 = new java.lang.Object[r1]
            r2 = 0
            int r3 = r4.zza()
            java.lang.Integer r3 = java.lang.Integer.valueOf(r3)
            r1[r2] = r3
            r2 = 1
            com.google.android.gms.internal.measurement.zznd r4 = r4.D()
            com.google.android.gms.internal.measurement.zzne r4 = r4.zza()
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
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.measurement.p8.d(com.google.android.gms.internal.measurement.o8, java.lang.Object):void");
    }

    public final void b() {
        if (this.f8261b) {
            return;
        }
        this.f8260a.a();
        this.f8261b = true;
    }

    public final void c(o8 o8Var, Object obj) {
        if (o8Var.E()) {
            if (obj instanceof List) {
                ArrayList arrayList = new ArrayList();
                arrayList.addAll((List) obj);
                int size = arrayList.size();
                for (int i9 = 0; i9 < size; i9++) {
                    d(o8Var, arrayList.get(i9));
                }
                obj = arrayList;
            } else {
                throw new IllegalArgumentException("Wrong object type used with protocol message reflection.");
            }
        } else {
            d(o8Var, obj);
        }
        this.f8260a.put(o8Var, obj);
    }

    public final /* bridge */ /* synthetic */ Object clone() throws CloneNotSupportedException {
        p8 p8Var = new p8();
        for (int i9 = 0; i9 < this.f8260a.b(); i9++) {
            Map.Entry g10 = this.f8260a.g(i9);
            p8Var.c((o8) g10.getKey(), g10.getValue());
        }
        for (Map.Entry entry : this.f8260a.c()) {
            p8Var.c((o8) entry.getKey(), entry.getValue());
        }
        p8Var.f8262c = this.f8262c;
        return p8Var;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof p8) {
            return this.f8260a.equals(((p8) obj).f8260a);
        }
        return false;
    }

    public final int hashCode() {
        return this.f8260a.hashCode();
    }

    private p8(boolean z10) {
        b();
        b();
    }
}
