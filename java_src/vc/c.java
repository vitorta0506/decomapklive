package vc;

import android.content.Context;
import androidx.annotation.NonNull;
import java.util.concurrent.Executors;
/* loaded from: classes4.dex */
public class c {

    /* renamed from: a  reason: collision with root package name */
    private static final pc.a f59095a = new pc.a("com.linecorp.linesdk.sharedpreference.encryptionsalt", 5000, true);

    /* renamed from: b  reason: collision with root package name */
    private static volatile boolean f59096b = false;

    /* loaded from: classes4.dex */
    private static class a implements Runnable {
        @NonNull

        /* renamed from: a  reason: collision with root package name */
        private final Context f59097a;

        a(@NonNull Context context) {
            this.f59097a = context;
        }

        @Override // java.lang.Runnable
        public void run() {
            c.f59095a.f(this.f59097a);
        }
    }

    @NonNull
    public static pc.a b() {
        return f59095a;
    }

    public static void c(@NonNull Context context) {
        if (f59096b) {
            return;
        }
        f59096b = true;
        Executors.newSingleThreadExecutor().execute(new a(context.getApplicationContext()));
    }
}
