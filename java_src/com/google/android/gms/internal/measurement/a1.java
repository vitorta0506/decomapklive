package com.google.android.gms.internal.measurement;

import android.os.Bundle;
import android.util.Log;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes2.dex */
public final class a1 extends g1 {

    /* renamed from: a  reason: collision with root package name */
    private final AtomicReference f7932a = new AtomicReference();

    /* renamed from: b  reason: collision with root package name */
    private boolean f7933b;

    public static final Object E0(Bundle bundle, Class cls) {
        Object obj;
        if (bundle == null || (obj = bundle.get("r")) == null) {
            return null;
        }
        try {
            return cls.cast(obj);
        } catch (ClassCastException e10) {
            Log.w("AM", String.format("Unexpected object type. Expected, Received: %s, %s", cls.getCanonicalName(), obj.getClass().getCanonicalName()), e10);
            throw e10;
        }
    }

    public final String D0(long j10) {
        return (String) E0(f(j10), String.class);
    }

    @Override // com.google.android.gms.internal.measurement.h1
    public final void a(Bundle bundle) {
        synchronized (this.f7932a) {
            this.f7932a.set(bundle);
            this.f7933b = true;
            this.f7932a.notify();
        }
    }

    public final Bundle f(long j10) {
        Bundle bundle;
        synchronized (this.f7932a) {
            if (!this.f7933b) {
                try {
                    this.f7932a.wait(j10);
                } catch (InterruptedException unused) {
                    return null;
                }
            }
            bundle = (Bundle) this.f7932a.get();
        }
        return bundle;
    }
}
