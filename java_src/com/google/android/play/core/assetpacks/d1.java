package com.google.android.play.core.assetpacks;

import android.app.Notification;
import android.content.ComponentName;
import android.content.Context;
import android.content.ServiceConnection;
import android.os.Bundle;
import android.os.IBinder;
import android.os.RemoteException;
import androidx.annotation.Nullable;
import java.util.ArrayList;
import java.util.List;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class d1 implements ServiceConnection {

    /* renamed from: a  reason: collision with root package name */
    private final com.google.android.play.core.internal.g f10179a = new com.google.android.play.core.internal.g("ExtractionForegroundServiceConnection");

    /* renamed from: b  reason: collision with root package name */
    private final List f10180b = new ArrayList();

    /* renamed from: c  reason: collision with root package name */
    private final Context f10181c;
    @Nullable

    /* renamed from: d  reason: collision with root package name */
    private ExtractionForegroundService f10182d;
    @Nullable

    /* renamed from: e  reason: collision with root package name */
    private Notification f10183e;

    /* JADX INFO: Access modifiers changed from: package-private */
    public d1(Context context) {
        this.f10181c = context;
    }

    private final void d() {
        ArrayList arrayList;
        synchronized (this.f10180b) {
            arrayList = new ArrayList(this.f10180b);
            this.f10180b.clear();
        }
        int size = arrayList.size();
        for (int i9 = 0; i9 < size; i9++) {
            try {
                ((com.google.android.play.core.internal.b2) arrayList.get(i9)).Z(new Bundle(), new Bundle());
            } catch (RemoteException unused) {
                this.f10179a.b("Could not resolve Play Store service state update callback.", new Object[0]);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(Notification notification) {
        this.f10183e = notification;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void b() {
        this.f10179a.a("Stopping foreground installation service.", new Object[0]);
        this.f10181c.unbindService(this);
        ExtractionForegroundService extractionForegroundService = this.f10182d;
        if (extractionForegroundService != null) {
            extractionForegroundService.a();
        }
        d();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void c(com.google.android.play.core.internal.b2 b2Var) {
        synchronized (this.f10180b) {
            this.f10180b.add(b2Var);
        }
    }

    @Override // android.content.ServiceConnection
    public final void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        this.f10179a.a("Starting foreground installation service.", new Object[0]);
        ExtractionForegroundService extractionForegroundService = ((c1) iBinder).f10166a;
        this.f10182d = extractionForegroundService;
        extractionForegroundService.startForeground(-1883842196, this.f10183e);
        d();
    }

    @Override // android.content.ServiceConnection
    public final void onServiceDisconnected(ComponentName componentName) {
    }
}
