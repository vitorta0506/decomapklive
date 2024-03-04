package ad;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes4.dex */
class g implements i {

    /* renamed from: a  reason: collision with root package name */
    private final ThreadLocal<String> f729a = new ThreadLocal<>();

    /* renamed from: b  reason: collision with root package name */
    private final List<c> f730b = new ArrayList();

    @NonNull
    private String d(@NonNull String str, @Nullable Object... objArr) {
        return (objArr == null || objArr.length == 0) ? str : String.format(str, objArr);
    }

    @Nullable
    private String h() {
        String str = this.f729a.get();
        if (str != null) {
            this.f729a.remove();
            return str;
        }
        return null;
    }

    private synchronized void j(int i9, @Nullable Throwable th2, @NonNull String str, @Nullable Object... objArr) {
        j.a(str);
        i(i9, h(), d(str, objArr), th2);
    }

    @Override // ad.i
    public void a(@Nullable String str) {
        if (j.d(str)) {
            e("Empty/Null json content");
            return;
        }
        try {
            String trim = str.trim();
            if (trim.startsWith("{")) {
                e(new JSONObject(trim).toString(2));
            } else if (trim.startsWith("[")) {
                e(new JSONArray(trim).toString(2));
            } else {
                f("Invalid Json", new Object[0]);
            }
        } catch (JSONException unused) {
            f("Invalid Json", new Object[0]);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // ad.i
    public void b(@NonNull c cVar) {
        this.f730b.add(j.a(cVar));
    }

    @Override // ad.i
    public void c(@NonNull String str, @Nullable Object... objArr) {
        j(4, null, str, objArr);
    }

    public void e(@Nullable Object obj) {
        j(3, null, j.e(obj), new Object[0]);
    }

    public void f(@NonNull String str, @Nullable Object... objArr) {
        g(null, str, objArr);
    }

    public void g(@Nullable Throwable th2, @NonNull String str, @Nullable Object... objArr) {
        j(6, th2, str, objArr);
    }

    public synchronized void i(int i9, @Nullable String str, @Nullable String str2, @Nullable Throwable th2) {
        if (th2 != null && str2 != null) {
            str2 = str2 + " : " + j.c(th2);
        }
        if (th2 != null && str2 == null) {
            str2 = j.c(th2);
        }
        if (j.d(str2)) {
            str2 = "Empty/NULL log message";
        }
        for (c cVar : this.f730b) {
            if (cVar.a(i9, str)) {
                cVar.log(i9, str, str2);
            }
        }
    }
}
