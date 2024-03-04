package com.google.android.gms.internal.measurement;

import androidx.core.app.NotificationCompat;
import java.util.List;
/* loaded from: classes2.dex */
public final class ge extends j {

    /* renamed from: c  reason: collision with root package name */
    private final ee f8105c;

    public ge(ee eeVar) {
        super("internal.logger");
        this.f8105c = eeVar;
        this.f8139b.put("log", new fe(this, false, true));
        this.f8139b.put(NotificationCompat.GROUP_KEY_SILENT, new od(this, NotificationCompat.GROUP_KEY_SILENT));
        ((j) this.f8139b.get(NotificationCompat.GROUP_KEY_SILENT)).n("log", new fe(this, true, true));
        this.f8139b.put("unmonitored", new de(this, "unmonitored"));
        ((j) this.f8139b.get("unmonitored")).n("log", new fe(this, false, false));
    }

    @Override // com.google.android.gms.internal.measurement.j
    public final q b(t4 t4Var, List list) {
        return q.U;
    }
}
