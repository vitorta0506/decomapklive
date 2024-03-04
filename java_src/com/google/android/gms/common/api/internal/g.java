package com.google.android.gms.common.api.internal;

import androidx.annotation.Nullable;
import com.google.android.gms.common.api.ApiException;
import com.google.android.gms.common.api.Status;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import java.util.WeakHashMap;
/* loaded from: classes2.dex */
public final class g {

    /* renamed from: a  reason: collision with root package name */
    private final Map f7554a = Collections.synchronizedMap(new WeakHashMap());

    /* renamed from: b  reason: collision with root package name */
    private final Map f7555b = Collections.synchronizedMap(new WeakHashMap());

    private final void h(boolean z10, Status status) {
        HashMap hashMap;
        HashMap hashMap2;
        synchronized (this.f7554a) {
            hashMap = new HashMap(this.f7554a);
        }
        synchronized (this.f7555b) {
            hashMap2 = new HashMap(this.f7555b);
        }
        for (Map.Entry entry : hashMap.entrySet()) {
            if (z10 || ((Boolean) entry.getValue()).booleanValue()) {
                ((BasePendingResult) entry.getKey()).d(status);
            }
        }
        for (Map.Entry entry2 : hashMap2.entrySet()) {
            if (z10 || ((Boolean) entry2.getValue()).booleanValue()) {
                ((t4.h) entry2.getKey()).d(new ApiException(status));
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void c(BasePendingResult basePendingResult, boolean z10) {
        this.f7554a.put(basePendingResult, Boolean.valueOf(z10));
        basePendingResult.a(new e(this, basePendingResult));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void d(t4.h hVar, boolean z10) {
        this.f7555b.put(hVar, Boolean.valueOf(z10));
        hVar.a().c(new f(this, hVar));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void e(int i9, @Nullable String str) {
        StringBuilder sb2 = new StringBuilder("The connection to Google Play services was lost");
        if (i9 == 1) {
            sb2.append(" due to service disconnection.");
        } else if (i9 == 3) {
            sb2.append(" due to dead object exception.");
        }
        if (str != null) {
            sb2.append(" Last reason for disconnect: ");
            sb2.append(str);
        }
        h(true, new Status(20, sb2.toString()));
    }

    public final void f() {
        h(false, c.f7514r);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final boolean g() {
        return (this.f7554a.isEmpty() && this.f7555b.isEmpty()) ? false : true;
    }
}
