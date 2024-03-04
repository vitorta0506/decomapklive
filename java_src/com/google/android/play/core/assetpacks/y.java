package com.google.android.play.core.assetpacks;

import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import java.util.ArrayList;
import java.util.concurrent.Executor;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class y extends x4.d {

    /* renamed from: g  reason: collision with root package name */
    private final y1 f10490g;

    /* renamed from: h  reason: collision with root package name */
    private final g1 f10491h;

    /* renamed from: i  reason: collision with root package name */
    private final com.google.android.play.core.internal.g1 f10492i;

    /* renamed from: j  reason: collision with root package name */
    private final r0 f10493j;

    /* renamed from: k  reason: collision with root package name */
    private final j1 f10494k;

    /* renamed from: l  reason: collision with root package name */
    private final com.google.android.play.core.internal.g1 f10495l;

    /* renamed from: m  reason: collision with root package name */
    private final com.google.android.play.core.internal.g1 f10496m;

    /* renamed from: n  reason: collision with root package name */
    private final t2 f10497n;

    /* renamed from: o  reason: collision with root package name */
    private final Handler f10498o;

    /* JADX INFO: Access modifiers changed from: package-private */
    public y(Context context, y1 y1Var, g1 g1Var, com.google.android.play.core.internal.g1 g1Var2, j1 j1Var, r0 r0Var, com.google.android.play.core.internal.g1 g1Var3, com.google.android.play.core.internal.g1 g1Var4, t2 t2Var) {
        super(new com.google.android.play.core.internal.g("AssetPackServiceListenerRegistry"), new IntentFilter("com.google.android.play.core.assetpacks.receiver.ACTION_SESSION_UPDATE"), context);
        this.f10498o = new Handler(Looper.getMainLooper());
        this.f10490g = y1Var;
        this.f10491h = g1Var;
        this.f10492i = g1Var2;
        this.f10494k = j1Var;
        this.f10493j = r0Var;
        this.f10495l = g1Var3;
        this.f10496m = g1Var4;
        this.f10497n = t2Var;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // x4.d
    public final void a(Context context, Intent intent) {
        final Bundle bundleExtra = intent.getBundleExtra("com.google.android.play.core.assetpacks.receiver.EXTRA_SESSION_STATE");
        if (bundleExtra != null) {
            ArrayList<String> stringArrayList = bundleExtra.getStringArrayList("pack_names");
            if (stringArrayList != null && stringArrayList.size() == 1) {
                final AssetPackState i9 = AssetPackState.i(bundleExtra, stringArrayList.get(0), this.f10494k, this.f10497n, new b0() { // from class: com.google.android.play.core.assetpacks.a0
                    @Override // com.google.android.play.core.assetpacks.b0
                    public final int a(int i10, String str) {
                        return i10;
                    }
                });
                this.f59612a.a("ListenerRegistryBroadcastReceiver.onReceive: %s", i9);
                PendingIntent pendingIntent = (PendingIntent) bundleExtra.getParcelable("confirmation_intent");
                if (pendingIntent != null) {
                    this.f10493j.a(pendingIntent);
                }
                ((Executor) this.f10496m.zza()).execute(new Runnable() { // from class: com.google.android.play.core.assetpacks.v
                    @Override // java.lang.Runnable
                    public final void run() {
                        y.this.g(bundleExtra, i9);
                    }
                });
                ((Executor) this.f10495l.zza()).execute(new Runnable() { // from class: com.google.android.play.core.assetpacks.u
                    @Override // java.lang.Runnable
                    public final void run() {
                        y.this.f(bundleExtra);
                    }
                });
                return;
            }
            this.f59612a.b("Corrupt bundle received from broadcast.", new Object[0]);
            return;
        }
        this.f59612a.b("Empty bundle received from broadcast.", new Object[0]);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ void f(Bundle bundle) {
        if (this.f10490g.n(bundle)) {
            this.f10491h.a();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ void g(Bundle bundle, AssetPackState assetPackState) {
        if (this.f10490g.m(bundle)) {
            h(assetPackState);
            ((c4) this.f10492i.zza()).b();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void h(final AssetPackState assetPackState) {
        this.f10498o.post(new Runnable() { // from class: com.google.android.play.core.assetpacks.x
            @Override // java.lang.Runnable
            public final void run() {
                y.this.d(assetPackState);
            }
        });
    }
}
