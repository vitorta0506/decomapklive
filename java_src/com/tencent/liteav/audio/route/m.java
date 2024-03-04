package com.tencent.liteav.audio.route;

import com.tencent.liteav.audio.route.b;
import com.tencent.liteav.base.Log;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes4.dex */
public final class m {

    /* renamed from: a  reason: collision with root package name */
    static final b.a f30844a = b.a.SPEAKERPHONE;

    /* renamed from: b  reason: collision with root package name */
    final HashMap<b.a, b> f30845b = new HashMap<>();

    /* renamed from: c  reason: collision with root package name */
    boolean f30846c = false;

    private void b(b.a aVar) {
        int i9;
        b bVar = this.f30845b.get(aVar);
        if (bVar == null) {
            Log.e("AudioRouteSupervisor", "error in promoteRoutePriority, route(%s) is not existed", aVar);
            return;
        }
        int i10 = bVar.f30819c;
        if (i10 == this.f30845b.size() - 1) {
            return;
        }
        bVar.f30819c = this.f30845b.size() - 1;
        for (Map.Entry<b.a, b> entry : this.f30845b.entrySet()) {
            b value = entry.getValue();
            if (aVar != value.f30817a && (i9 = value.f30819c) >= i10) {
                value.f30819c = i9 - 1;
            }
        }
    }

    public final boolean a(b.a aVar, boolean z10) {
        if (!this.f30846c) {
            Log.e("AudioRouteSupervisor", "error in updateRouteAvailability(), it's not been initialized yet", new Object[0]);
            return false;
        }
        b bVar = this.f30845b.get(aVar);
        if (bVar == null) {
            Log.e("AudioRouteSupervisor", "updateRouteAvailability failed, name: %s", aVar);
            return false;
        }
        bVar.f30818b = z10;
        if (z10 && a(aVar)) {
            b(aVar);
        }
        return true;
    }

    private static boolean a(b.a aVar) {
        return aVar == b.a.WIRED_HEADSET || aVar == b.a.BLUETOOTH_HEADSET;
    }
}
