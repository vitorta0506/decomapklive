package com.google.android.gms.common.api.internal;

import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.f;
import java.util.Map;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class e implements f.a {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ BasePendingResult f7546a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ g f7547b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public e(g gVar, BasePendingResult basePendingResult) {
        this.f7547b = gVar;
        this.f7546a = basePendingResult;
    }

    @Override // com.google.android.gms.common.api.f.a
    public final void a(Status status) {
        Map map;
        map = this.f7547b.f7554a;
        map.remove(this.f7546a);
    }
}
