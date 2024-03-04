package z3;

import android.util.Log;
import androidx.annotation.NonNull;
import com.google.android.gms.common.internal.h;
import java.util.Locale;
/* loaded from: classes2.dex */
public class a {

    /* renamed from: a  reason: collision with root package name */
    private final String f60356a;

    /* renamed from: b  reason: collision with root package name */
    private final String f60357b;

    /* renamed from: c  reason: collision with root package name */
    private final h f60358c;

    /* renamed from: d  reason: collision with root package name */
    private final int f60359d;

    public a(@NonNull String str, @NonNull String... strArr) {
        String sb2;
        if (strArr.length == 0) {
            sb2 = "";
        } else {
            StringBuilder sb3 = new StringBuilder();
            sb3.append('[');
            for (String str2 : strArr) {
                if (sb3.length() > 1) {
                    sb3.append(",");
                }
                sb3.append(str2);
            }
            sb3.append("] ");
            sb2 = sb3.toString();
        }
        this.f60357b = sb2;
        this.f60356a = str;
        this.f60358c = new h(str);
        int i9 = 2;
        while (i9 <= 7 && !Log.isLoggable(this.f60356a, i9)) {
            i9++;
        }
        this.f60359d = i9;
    }

    public void a(@NonNull String str, @NonNull Object... objArr) {
        if (d(3)) {
            Log.d(this.f60356a, c(str, objArr));
        }
    }

    public void b(@NonNull String str, @NonNull Object... objArr) {
        Log.e(this.f60356a, c(str, objArr));
    }

    @NonNull
    protected String c(@NonNull String str, @NonNull Object... objArr) {
        if (objArr != null && objArr.length > 0) {
            str = String.format(Locale.US, str, objArr);
        }
        return this.f60357b.concat(str);
    }

    public boolean d(int i9) {
        return this.f60359d <= i9;
    }
}
