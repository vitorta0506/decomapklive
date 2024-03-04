package com.google.android.gms.common.api.internal;

import android.util.Log;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.a;
import java.util.Map;
/* loaded from: classes2.dex */
final class q implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ ConnectionResult f7588a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ r f7589b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public q(r rVar, ConnectionResult connectionResult) {
        this.f7589b = rVar;
        this.f7588a = connectionResult;
    }

    @Override // java.lang.Runnable
    public final void run() {
        Map map;
        v3.b bVar;
        a.f fVar;
        a.f fVar2;
        a.f fVar3;
        a.f fVar4;
        r rVar = this.f7589b;
        map = rVar.f7595f.f7529l;
        bVar = rVar.f7591b;
        o oVar = (o) map.get(bVar);
        if (oVar == null) {
            return;
        }
        if (this.f7588a.P()) {
            this.f7589b.f7594e = true;
            fVar = this.f7589b.f7590a;
            if (fVar.f()) {
                this.f7589b.h();
                return;
            }
            try {
                r rVar2 = this.f7589b;
                fVar3 = rVar2.f7590a;
                fVar4 = rVar2.f7590a;
                fVar3.i(null, fVar4.h());
                return;
            } catch (SecurityException e10) {
                Log.e("GoogleApiManager", "Failed to get service from broker. ", e10);
                fVar2 = this.f7589b.f7590a;
                fVar2.b("Failed to get service from broker.");
                oVar.G(new ConnectionResult(10), null);
                return;
            }
        }
        oVar.G(this.f7588a, null);
    }
}
