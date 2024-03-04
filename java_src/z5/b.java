package z5;

import android.content.Context;
import android.os.Bundle;
import androidx.annotation.NonNull;
import androidx.annotation.RequiresPermission;
import com.google.android.gms.common.internal.p;
import com.google.android.gms.internal.measurement.w2;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.Executor;
/* loaded from: classes2.dex */
public class b implements a {

    /* renamed from: c  reason: collision with root package name */
    private static volatile a f60362c;

    /* renamed from: a  reason: collision with root package name */
    final o4.a f60363a;

    /* renamed from: b  reason: collision with root package name */
    final Map f60364b;

    b(o4.a aVar) {
        p.j(aVar);
        this.f60363a = aVar;
        this.f60364b = new ConcurrentHashMap();
    }

    @NonNull
    @RequiresPermission(allOf = {"android.permission.INTERNET", "android.permission.ACCESS_NETWORK_STATE", "android.permission.WAKE_LOCK"})
    public static a c(@NonNull com.google.firebase.d dVar, @NonNull Context context, @NonNull h6.d dVar2) {
        p.j(dVar);
        p.j(context);
        p.j(dVar2);
        p.j(context.getApplicationContext());
        if (f60362c == null) {
            synchronized (b.class) {
                if (f60362c == null) {
                    Bundle bundle = new Bundle(1);
                    if (dVar.v()) {
                        dVar2.a(com.google.firebase.a.class, new Executor() { // from class: z5.c
                            @Override // java.util.concurrent.Executor
                            public final void execute(Runnable runnable) {
                                runnable.run();
                            }
                        }, new h6.b() { // from class: z5.d
                            @Override // h6.b
                            public final void a(h6.a aVar) {
                                b.d(aVar);
                            }
                        });
                        bundle.putBoolean("dataCollectionDefaultEnabled", dVar.u());
                    }
                    f60362c = new b(w2.v(context, null, null, null, bundle).s());
                }
            }
        }
        return f60362c;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void d(h6.a aVar) {
        boolean z10 = ((com.google.firebase.a) aVar.a()).f13807a;
        synchronized (b.class) {
            ((b) p.j(f60362c)).f60363a.c(z10);
        }
    }

    @Override // z5.a
    public void a(@NonNull String str, @NonNull String str2, @NonNull Bundle bundle) {
        if (bundle == null) {
            bundle = new Bundle();
        }
        if (com.google.firebase.analytics.connector.internal.b.d(str) && com.google.firebase.analytics.connector.internal.b.c(str2, bundle) && com.google.firebase.analytics.connector.internal.b.b(str, str2, bundle)) {
            com.google.firebase.analytics.connector.internal.b.a(str, str2, bundle);
            this.f60363a.a(str, str2, bundle);
        }
    }

    @Override // z5.a
    public void b(@NonNull String str, @NonNull String str2, @NonNull Object obj) {
        if (com.google.firebase.analytics.connector.internal.b.d(str) && com.google.firebase.analytics.connector.internal.b.e(str, str2)) {
            this.f60363a.b(str, str2, obj);
        }
    }
}
