package com.huawei.hmf.tasks.a;

import android.app.Activity;
import android.app.Fragment;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.List;
import java.util.WeakHashMap;
import wb.b;
/* loaded from: classes4.dex */
public final class g extends Fragment {

    /* renamed from: b  reason: collision with root package name */
    private static final WeakHashMap<Activity, WeakReference<g>> f27165b = new WeakHashMap<>();

    /* renamed from: a  reason: collision with root package name */
    private final List<WeakReference<b<?>>> f27166a = new ArrayList();

    @Override // android.app.Fragment
    public final void onStop() {
        super.onStop();
        synchronized (this.f27166a) {
            for (WeakReference<b<?>> weakReference : this.f27166a) {
                b<?> bVar = weakReference.get();
                if (bVar != null) {
                    bVar.cancel();
                }
            }
            this.f27166a.clear();
        }
    }
}
