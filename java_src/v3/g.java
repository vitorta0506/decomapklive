package v3;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.Bundle;
import android.os.Handler;
import android.os.IBinder;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.WorkerThread;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.Feature;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.api.a;
import com.google.android.gms.common.internal.d;
import java.util.Collections;
import java.util.Set;
/* loaded from: classes2.dex */
public final class g implements a.f, ServiceConnection {

    /* renamed from: l  reason: collision with root package name */
    private static final String f58972l = g.class.getSimpleName();
    @Nullable

    /* renamed from: a  reason: collision with root package name */
    private final String f58973a;
    @Nullable

    /* renamed from: b  reason: collision with root package name */
    private final String f58974b;
    @Nullable

    /* renamed from: c  reason: collision with root package name */
    private final ComponentName f58975c;

    /* renamed from: d  reason: collision with root package name */
    private final Context f58976d;

    /* renamed from: e  reason: collision with root package name */
    private final c f58977e;

    /* renamed from: f  reason: collision with root package name */
    private final Handler f58978f;

    /* renamed from: g  reason: collision with root package name */
    private final h f58979g;
    @Nullable

    /* renamed from: h  reason: collision with root package name */
    private IBinder f58980h;

    /* renamed from: i  reason: collision with root package name */
    private boolean f58981i;
    @Nullable

    /* renamed from: j  reason: collision with root package name */
    private String f58982j;
    @Nullable

    /* renamed from: k  reason: collision with root package name */
    private String f58983k;

    @WorkerThread
    private final void p() {
        if (Thread.currentThread() != this.f58978f.getLooper().getThread()) {
            throw new IllegalStateException("This method should only run on the NonGmsServiceBrokerClient's handler thread.");
        }
    }

    @Override // com.google.android.gms.common.api.a.f
    @WorkerThread
    public final void b(@NonNull String str) {
        p();
        this.f58982j = str;
        disconnect();
    }

    @Override // com.google.android.gms.common.api.a.f
    @NonNull
    public final String c() {
        String str = this.f58973a;
        if (str != null) {
            return str;
        }
        com.google.android.gms.common.internal.p.j(this.f58975c);
        return this.f58975c.getPackageName();
    }

    @Override // com.google.android.gms.common.api.a.f
    @WorkerThread
    public final void d(@NonNull d.c cVar) {
        p();
        String.valueOf(this.f58980h);
        if (isConnected()) {
            try {
                b("connect() called when already connected");
            } catch (Exception unused) {
            }
        }
        try {
            Intent intent = new Intent();
            ComponentName componentName = this.f58975c;
            if (componentName != null) {
                intent.setComponent(componentName);
            } else {
                intent.setPackage(this.f58973a).setAction(this.f58974b);
            }
            boolean bindService = this.f58976d.bindService(intent, this, com.google.android.gms.common.internal.g.a());
            this.f58981i = bindService;
            if (!bindService) {
                this.f58980h = null;
                this.f58979g.f(new ConnectionResult(16));
            }
            String.valueOf(this.f58980h);
        } catch (SecurityException e10) {
            this.f58981i = false;
            this.f58980h = null;
            throw e10;
        }
    }

    @Override // com.google.android.gms.common.api.a.f
    @WorkerThread
    public final void disconnect() {
        p();
        String.valueOf(this.f58980h);
        try {
            this.f58976d.unbindService(this);
        } catch (IllegalArgumentException unused) {
        }
        this.f58981i = false;
        this.f58980h = null;
    }

    @Override // com.google.android.gms.common.api.a.f
    public final boolean e() {
        return false;
    }

    @Override // com.google.android.gms.common.api.a.f
    public final boolean f() {
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ void g() {
        this.f58981i = false;
        this.f58980h = null;
        this.f58977e.onConnectionSuspended(1);
    }

    @Override // com.google.android.gms.common.api.a.f
    @NonNull
    public final Set<Scope> h() {
        return Collections.emptySet();
    }

    @Override // com.google.android.gms.common.api.a.f
    public final void i(@Nullable com.google.android.gms.common.internal.i iVar, @Nullable Set<Scope> set) {
    }

    @Override // com.google.android.gms.common.api.a.f
    @WorkerThread
    public final boolean isConnected() {
        p();
        return this.f58980h != null;
    }

    @Override // com.google.android.gms.common.api.a.f
    @WorkerThread
    public final boolean isConnecting() {
        p();
        return this.f58981i;
    }

    @Override // com.google.android.gms.common.api.a.f
    public final void j(@NonNull d.e eVar) {
    }

    @Override // com.google.android.gms.common.api.a.f
    public final int k() {
        return 0;
    }

    @Override // com.google.android.gms.common.api.a.f
    @NonNull
    public final Feature[] l() {
        return new Feature[0];
    }

    @Override // com.google.android.gms.common.api.a.f
    @Nullable
    public final String m() {
        return this.f58982j;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ void n(IBinder iBinder) {
        this.f58981i = false;
        this.f58980h = iBinder;
        String.valueOf(iBinder);
        this.f58977e.b(new Bundle());
    }

    public final void o(@Nullable String str) {
        this.f58983k = str;
    }

    @Override // android.content.ServiceConnection
    public final void onServiceConnected(@NonNull ComponentName componentName, @NonNull final IBinder iBinder) {
        this.f58978f.post(new Runnable() { // from class: v3.u
            @Override // java.lang.Runnable
            public final void run() {
                g.this.n(iBinder);
            }
        });
    }

    @Override // android.content.ServiceConnection
    public final void onServiceDisconnected(@NonNull ComponentName componentName) {
        this.f58978f.post(new Runnable() { // from class: v3.t
            @Override // java.lang.Runnable
            public final void run() {
                g.this.g();
            }
        });
    }
}
