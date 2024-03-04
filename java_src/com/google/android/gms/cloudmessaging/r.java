package com.google.android.gms.cloudmessaging;

import android.os.Bundle;
import android.util.Log;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public abstract class r<T> {

    /* renamed from: a  reason: collision with root package name */
    final int f7428a;

    /* renamed from: b  reason: collision with root package name */
    final t4.h<T> f7429b = new t4.h<>();

    /* renamed from: c  reason: collision with root package name */
    final int f7430c;

    /* renamed from: d  reason: collision with root package name */
    final Bundle f7431d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public r(int i9, int i10, Bundle bundle) {
        this.f7428a = i9;
        this.f7430c = i10;
        this.f7431d = bundle;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract void a(Bundle bundle);

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract boolean b();

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void c(zzq zzqVar) {
        if (Log.isLoggable("MessengerIpcClient", 3)) {
            String valueOf = String.valueOf(this);
            String valueOf2 = String.valueOf(zzqVar);
            StringBuilder sb2 = new StringBuilder(valueOf.length() + 14 + valueOf2.length());
            sb2.append("Failing ");
            sb2.append(valueOf);
            sb2.append(" with ");
            sb2.append(valueOf2);
            Log.d("MessengerIpcClient", sb2.toString());
        }
        this.f7429b.b(zzqVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void d(T t10) {
        if (Log.isLoggable("MessengerIpcClient", 3)) {
            String valueOf = String.valueOf(this);
            String valueOf2 = String.valueOf(t10);
            StringBuilder sb2 = new StringBuilder(valueOf.length() + 16 + valueOf2.length());
            sb2.append("Finishing ");
            sb2.append(valueOf);
            sb2.append(" with ");
            sb2.append(valueOf2);
            Log.d("MessengerIpcClient", sb2.toString());
        }
        this.f7429b.c(t10);
    }

    public final String toString() {
        int i9 = this.f7430c;
        int i10 = this.f7428a;
        StringBuilder sb2 = new StringBuilder(55);
        sb2.append("Request { what=");
        sb2.append(i9);
        sb2.append(" id=");
        sb2.append(i10);
        sb2.append(" oneWay=");
        sb2.append(b());
        sb2.append("}");
        return sb2.toString();
    }
}
