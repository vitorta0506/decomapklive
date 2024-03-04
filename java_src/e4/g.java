package e4;

import android.os.SystemClock;
import androidx.annotation.NonNull;
/* loaded from: classes2.dex */
public class g implements d {

    /* renamed from: a  reason: collision with root package name */
    private static final g f38436a = new g();

    private g() {
    }

    @NonNull
    public static d c() {
        return f38436a;
    }

    @Override // e4.d
    public final long a() {
        return System.currentTimeMillis();
    }

    @Override // e4.d
    public final long b() {
        return SystemClock.elapsedRealtime();
    }

    @Override // e4.d
    public final long nanoTime() {
        return System.nanoTime();
    }
}
