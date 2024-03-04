package vc;

import android.content.Context;
import android.content.SharedPreferences;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import com.linecorp.android.security.encryption.EncryptionException;
/* loaded from: classes4.dex */
public class a {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final Context f59089a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    private final String f59090b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    private final pc.a f59091c;

    public a(@NonNull Context context, @NonNull String str) {
        this(context.getApplicationContext(), str, c.b());
    }

    private long b(@Nullable String str) {
        if (str == null) {
            return -1L;
        }
        try {
            return Long.valueOf(this.f59091c.a(this.f59089a, str)).longValue();
        } catch (NumberFormatException unused) {
            return -1L;
        }
    }

    @Nullable
    private String c(@Nullable String str) {
        if (str == null) {
            return null;
        }
        return this.f59091c.a(this.f59089a, str);
    }

    @NonNull
    private String d(long j10) {
        return this.f59091c.b(this.f59089a, String.valueOf(j10));
    }

    @NonNull
    private String e(@NonNull String str) {
        return this.f59091c.b(this.f59089a, str);
    }

    public void a() {
        this.f59089a.getSharedPreferences(this.f59090b, 0).edit().clear().apply();
    }

    @Nullable
    public d f() {
        SharedPreferences sharedPreferences = this.f59089a.getSharedPreferences(this.f59090b, 0);
        try {
            String c10 = c(sharedPreferences.getString("accessToken", null));
            long b10 = b(sharedPreferences.getString("expiresIn", null));
            long b11 = b(sharedPreferences.getString("issuedClientTime", null));
            if (TextUtils.isEmpty(c10) || b10 == -1 || b11 == -1) {
                return null;
            }
            return new d(c10, b10, b11, (String) yc.c.a(c(sharedPreferences.getString("refreshToken", null)), ""));
        } catch (EncryptionException e10) {
            a();
            throw e10;
        }
    }

    public void g(@NonNull d dVar) {
        this.f59089a.getSharedPreferences(this.f59090b, 0).edit().putString("accessToken", e(dVar.a())).putString("expiresIn", d(dVar.b())).putString("issuedClientTime", d(dVar.c())).putString("refreshToken", e(dVar.d())).apply();
    }

    @VisibleForTesting
    public a(@NonNull Context context, @NonNull String str, @NonNull pc.a aVar) {
        this.f59089a = context;
        this.f59090b = "com.linecorp.linesdk.accesstoken." + str;
        this.f59091c = aVar;
    }
}
