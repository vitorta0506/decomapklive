package com.google.android.gms.auth.api.signin.internal;

import android.content.Context;
import android.util.Log;
import androidx.loader.content.AsyncTaskLoader;
import com.google.android.gms.common.api.d;
import java.util.Set;
import java.util.concurrent.Semaphore;
import java.util.concurrent.TimeUnit;
import v3.j;
/* loaded from: classes2.dex */
public final class zbc extends AsyncTaskLoader implements j {

    /* renamed from: a  reason: collision with root package name */
    private final Semaphore f7390a;

    /* renamed from: b  reason: collision with root package name */
    private final Set f7391b;

    public zbc(Context context, Set set) {
        super(context);
        this.f7390a = new Semaphore(0);
        this.f7391b = set;
    }

    @Override // androidx.loader.content.AsyncTaskLoader
    public final /* bridge */ /* synthetic */ Object loadInBackground() {
        int i9 = 0;
        for (d dVar : this.f7391b) {
            if (dVar.d(this)) {
                i9++;
            }
        }
        try {
            this.f7390a.tryAcquire(i9, 5L, TimeUnit.SECONDS);
            return null;
        } catch (InterruptedException e10) {
            Log.i("GACSignInLoader", "Unexpected InterruptedException", e10);
            Thread.currentThread().interrupt();
            return null;
        }
    }

    @Override // androidx.loader.content.Loader
    protected final void onStartLoading() {
        this.f7390a.drainPermits();
        forceLoad();
    }
}
