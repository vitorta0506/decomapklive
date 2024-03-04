package com.google.android.gms.common.api.internal;

import androidx.annotation.NonNull;
import java.util.Map;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class f implements t4.c {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ t4.h f7552a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ g f7553b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public f(g gVar, t4.h hVar) {
        this.f7553b = gVar;
        this.f7552a = hVar;
    }

    @Override // t4.c
    public final void a(@NonNull t4.g gVar) {
        Map map;
        map = this.f7553b.f7555b;
        map.remove(this.f7552a);
    }
}
