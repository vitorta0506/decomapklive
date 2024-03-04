package com.google.firebase.messaging;

import android.util.Log;
import androidx.annotation.GuardedBy;
import androidx.collection.ArrayMap;
import java.util.Map;
import java.util.concurrent.Executor;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public class m0 {

    /* renamed from: a  reason: collision with root package name */
    private final Executor f14086a;
    @GuardedBy("this")

    /* renamed from: b  reason: collision with root package name */
    private final Map<String, t4.g<String>> f14087b = new ArrayMap();

    /* loaded from: classes2.dex */
    interface a {
        t4.g<String> start();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public m0(Executor executor) {
        this.f14086a = executor;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ t4.g c(String str, t4.g gVar) throws Exception {
        synchronized (this) {
            this.f14087b.remove(str);
        }
        return gVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Multi-variable type inference failed */
    public synchronized t4.g<String> b(final String str, a aVar) {
        t4.g<String> gVar = this.f14087b.get(str);
        if (gVar != null) {
            if (Log.isLoggable("FirebaseMessaging", 3)) {
                Log.d("FirebaseMessaging", "Joining ongoing request for: " + str);
            }
            return gVar;
        }
        if (Log.isLoggable("FirebaseMessaging", 3)) {
            Log.d("FirebaseMessaging", "Making new request for: " + str);
        }
        t4.g i9 = aVar.start().i(this.f14086a, new t4.a() { // from class: com.google.firebase.messaging.l0
            @Override // t4.a
            public final Object a(t4.g gVar2) {
                t4.g c10;
                c10 = m0.this.c(str, gVar2);
                return c10;
            }
        });
        this.f14087b.put(str, i9);
        return i9;
    }
}
