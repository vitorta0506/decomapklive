package com.google.android.gms.common.internal;

import android.content.Context;
import android.util.SparseIntArray;
import androidx.annotation.NonNull;
import com.google.android.gms.common.api.a;
/* loaded from: classes2.dex */
public final class g0 {

    /* renamed from: a  reason: collision with root package name */
    private final SparseIntArray f7740a = new SparseIntArray();

    /* renamed from: b  reason: collision with root package name */
    private com.google.android.gms.common.b f7741b;

    public g0(@NonNull com.google.android.gms.common.b bVar) {
        p.j(bVar);
        this.f7741b = bVar;
    }

    public final int a(Context context, int i9) {
        return this.f7740a.get(i9, -1);
    }

    public final int b(@NonNull Context context, @NonNull a.f fVar) {
        p.j(context);
        p.j(fVar);
        int i9 = 0;
        if (fVar.e()) {
            int k10 = fVar.k();
            int a10 = a(context, k10);
            if (a10 == -1) {
                int i10 = 0;
                while (true) {
                    if (i10 >= this.f7740a.size()) {
                        i9 = -1;
                        break;
                    }
                    int keyAt = this.f7740a.keyAt(i10);
                    if (keyAt > k10 && this.f7740a.get(keyAt) == 0) {
                        break;
                    }
                    i10++;
                }
                a10 = i9 == -1 ? this.f7741b.h(context, k10) : i9;
                this.f7740a.put(k10, a10);
            }
            return a10;
        }
        return 0;
    }

    public final void c() {
        this.f7740a.clear();
    }
}
