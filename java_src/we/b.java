package we;

import android.content.Context;
import android.content.SharedPreferences;
/* loaded from: classes4.dex */
public class b implements a {

    /* renamed from: a  reason: collision with root package name */
    private final SharedPreferences f59466a;

    public b(Context context, String str) {
        if (context != null) {
            this.f59466a = context.getSharedPreferences(str, 0);
            return;
        }
        throw new IllegalArgumentException("Context must not be null");
    }

    @Override // we.a
    public boolean a(SharedPreferences.Editor editor) {
        editor.apply();
        return true;
    }

    @Override // we.a
    public SharedPreferences.Editor edit() {
        return this.f59466a.edit();
    }

    @Override // we.a
    public SharedPreferences get() {
        return this.f59466a;
    }
}
