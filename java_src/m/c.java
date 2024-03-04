package m;

import android.util.Log;
import com.airbnb.lottie.i;
import java.util.HashSet;
import java.util.Set;
/* loaded from: classes.dex */
public class c implements i {

    /* renamed from: a  reason: collision with root package name */
    private static final Set<String> f54381a = new HashSet();

    @Override // com.airbnb.lottie.i
    public void a(String str) {
        b(str, null);
    }

    @Override // com.airbnb.lottie.i
    public void b(String str, Throwable th2) {
        Set<String> set = f54381a;
        if (set.contains(str)) {
            return;
        }
        Log.w("LOTTIE", str, th2);
        set.add(str);
    }

    public void c(String str, Throwable th2) {
        if (com.airbnb.lottie.c.f3607a) {
            Log.d("LOTTIE", str, th2);
        }
    }

    @Override // com.airbnb.lottie.i
    public void debug(String str) {
        c(str, null);
    }

    @Override // com.airbnb.lottie.i
    public void error(String str, Throwable th2) {
        if (com.airbnb.lottie.c.f3607a) {
            Log.d("LOTTIE", str, th2);
        }
    }
}
