package t3;

import android.content.Context;
import android.content.SharedPreferences;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.facebook.internal.security.CertificateUtil;
import com.google.android.gms.auth.api.signin.GoogleSignInAccount;
import com.google.android.gms.auth.api.signin.GoogleSignInOptions;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReentrantLock;
import org.json.JSONException;
/* loaded from: classes2.dex */
public class b {

    /* renamed from: c  reason: collision with root package name */
    private static final Lock f58010c = new ReentrantLock();
    @Nullable

    /* renamed from: d  reason: collision with root package name */
    private static b f58011d;

    /* renamed from: a  reason: collision with root package name */
    private final Lock f58012a = new ReentrantLock();

    /* renamed from: b  reason: collision with root package name */
    private final SharedPreferences f58013b;

    b(Context context) {
        this.f58013b = context.getSharedPreferences("com.google.android.gms.signin", 0);
    }

    @NonNull
    public static b b(@NonNull Context context) {
        com.google.android.gms.common.internal.p.j(context);
        Lock lock = f58010c;
        lock.lock();
        try {
            if (f58011d == null) {
                f58011d = new b(context.getApplicationContext());
            }
            b bVar = f58011d;
            lock.unlock();
            return bVar;
        } catch (Throwable th2) {
            f58010c.unlock();
            throw th2;
        }
    }

    private static final String i(String str, String str2) {
        return str + CertificateUtil.DELIMITER + str2;
    }

    public void a() {
        this.f58012a.lock();
        try {
            this.f58013b.edit().clear().apply();
        } finally {
            this.f58012a.unlock();
        }
    }

    @Nullable
    public GoogleSignInAccount c() {
        String g10;
        String g11 = g("defaultGoogleSignInAccount");
        if (TextUtils.isEmpty(g11) || (g10 = g(i("googleSignInAccount", g11))) == null) {
            return null;
        }
        try {
            return GoogleSignInAccount.A0(g10);
        } catch (JSONException unused) {
            return null;
        }
    }

    @Nullable
    public GoogleSignInOptions d() {
        String g10;
        String g11 = g("defaultGoogleSignInAccount");
        if (TextUtils.isEmpty(g11) || (g10 = g(i("googleSignInOptions", g11))) == null) {
            return null;
        }
        try {
            return GoogleSignInOptions.p0(g10);
        } catch (JSONException unused) {
            return null;
        }
    }

    @Nullable
    public String e() {
        return g("refreshToken");
    }

    public void f(@NonNull GoogleSignInAccount googleSignInAccount, @NonNull GoogleSignInOptions googleSignInOptions) {
        com.google.android.gms.common.internal.p.j(googleSignInAccount);
        com.google.android.gms.common.internal.p.j(googleSignInOptions);
        h("defaultGoogleSignInAccount", googleSignInAccount.C0());
        com.google.android.gms.common.internal.p.j(googleSignInAccount);
        com.google.android.gms.common.internal.p.j(googleSignInOptions);
        String C0 = googleSignInAccount.C0();
        h(i("googleSignInAccount", C0), googleSignInAccount.E0());
        h(i("googleSignInOptions", C0), googleSignInOptions.E0());
    }

    @Nullable
    protected final String g(@NonNull String str) {
        this.f58012a.lock();
        try {
            return this.f58013b.getString(str, null);
        } finally {
            this.f58012a.unlock();
        }
    }

    protected final void h(@NonNull String str, @NonNull String str2) {
        this.f58012a.lock();
        try {
            this.f58013b.edit().putString(str, str2).apply();
        } finally {
            this.f58012a.unlock();
        }
    }
}
