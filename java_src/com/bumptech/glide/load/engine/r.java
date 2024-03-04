package com.bumptech.glide.load.engine;

import java.util.HashMap;
import java.util.Map;
/* loaded from: classes.dex */
final class r {

    /* renamed from: a  reason: collision with root package name */
    private final Map<e0.b, l<?>> f4427a = new HashMap();

    /* renamed from: b  reason: collision with root package name */
    private final Map<e0.b, l<?>> f4428b = new HashMap();

    private Map<e0.b, l<?>> b(boolean z10) {
        return z10 ? this.f4428b : this.f4427a;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public l<?> a(e0.b bVar, boolean z10) {
        return b(z10).get(bVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void c(e0.b bVar, l<?> lVar) {
        b(lVar.p()).put(bVar, lVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void d(e0.b bVar, l<?> lVar) {
        Map<e0.b, l<?>> b10 = b(lVar.p());
        if (lVar.equals(b10.get(bVar))) {
            b10.remove(bVar);
        }
    }
}
