package t3;

import android.content.Context;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.gms.auth.api.signin.GoogleSignInAccount;
import com.google.android.gms.auth.api.signin.GoogleSignInOptions;
/* loaded from: classes2.dex */
public final class m {
    @Nullable

    /* renamed from: d  reason: collision with root package name */
    private static m f58020d;

    /* renamed from: a  reason: collision with root package name */
    final b f58021a;
    @Nullable

    /* renamed from: b  reason: collision with root package name */
    GoogleSignInAccount f58022b;
    @Nullable

    /* renamed from: c  reason: collision with root package name */
    GoogleSignInOptions f58023c;

    private m(Context context) {
        b b10 = b.b(context);
        this.f58021a = b10;
        this.f58022b = b10.c();
        this.f58023c = b10.d();
    }

    public static synchronized m a(@NonNull Context context) {
        m d10;
        synchronized (m.class) {
            d10 = d(context.getApplicationContext());
        }
        return d10;
    }

    private static synchronized m d(Context context) {
        synchronized (m.class) {
            m mVar = f58020d;
            if (mVar != null) {
                return mVar;
            }
            m mVar2 = new m(context);
            f58020d = mVar2;
            return mVar2;
        }
    }

    public final synchronized void b() {
        this.f58021a.a();
        this.f58022b = null;
        this.f58023c = null;
    }

    public final synchronized void c(GoogleSignInOptions googleSignInOptions, GoogleSignInAccount googleSignInAccount) {
        this.f58021a.f(googleSignInAccount, googleSignInOptions);
        this.f58022b = googleSignInAccount;
        this.f58023c = googleSignInOptions;
    }
}
