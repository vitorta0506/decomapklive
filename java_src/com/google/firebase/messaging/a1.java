package com.google.firebase.messaging;

import android.content.Intent;
import android.os.Binder;
import android.os.Process;
import android.util.Log;
import com.google.firebase.messaging.d1;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public class a1 extends Binder {

    /* renamed from: a  reason: collision with root package name */
    private final a f14034a;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public interface a {
        t4.g<Void> a(Intent intent);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public a1(a aVar) {
        this.f14034a = aVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void c(final d1.a aVar) {
        if (Binder.getCallingUid() == Process.myUid()) {
            if (Log.isLoggable("FirebaseMessaging", 3)) {
                Log.d("FirebaseMessaging", "service received new intent via bind strategy");
            }
            this.f14034a.a(aVar.f14054a).b(g.f14068a, new t4.c() { // from class: com.google.firebase.messaging.z0
                @Override // t4.c
                public final void a(t4.g gVar) {
                    d1.a.this.d();
                }
            });
            return;
        }
        throw new SecurityException("Binding only allowed within app");
    }
}
