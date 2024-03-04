package b5;

import android.content.Context;
import android.content.SharedPreferences;
import androidx.annotation.NonNull;
import java.util.HashSet;
import java.util.Set;
/* loaded from: classes2.dex */
public final class d {

    /* renamed from: a  reason: collision with root package name */
    private final Context f1175a;

    public d(@NonNull Context context) {
        this.f1175a = context;
    }

    private final SharedPreferences c() {
        return this.f1175a.getSharedPreferences("playcore_split_install_internal", 0);
    }

    public final Set a() {
        Set<String> hashSet;
        synchronized (d.class) {
            try {
                hashSet = c().getStringSet("modules_to_uninstall_if_emulated", new HashSet());
                if (hashSet == null) {
                    hashSet = new HashSet<>();
                }
            } catch (Exception unused) {
                hashSet = new HashSet<>();
            }
        }
        return hashSet;
    }

    public final void b() {
        synchronized (d.class) {
            c().edit().putStringSet("modules_to_uninstall_if_emulated", new HashSet()).apply();
        }
    }
}
