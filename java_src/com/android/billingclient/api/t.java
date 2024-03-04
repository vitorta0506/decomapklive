package com.android.billingclient.api;

import androidx.annotation.Nullable;
import java.util.List;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class t {

    /* renamed from: a  reason: collision with root package name */
    private final List<PurchaseHistoryRecord> f4013a;

    /* renamed from: b  reason: collision with root package name */
    private final e f4014b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public t(e eVar, @Nullable List<PurchaseHistoryRecord> list) {
        this.f4013a = list;
        this.f4014b = eVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final e a() {
        return this.f4014b;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final List<PurchaseHistoryRecord> b() {
        return this.f4013a;
    }
}
