package f4;

import androidx.annotation.NonNull;
import com.google.android.gms.common.internal.p;
import java.util.concurrent.Executors;
import java.util.concurrent.ThreadFactory;
/* loaded from: classes2.dex */
public class a implements ThreadFactory {

    /* renamed from: a  reason: collision with root package name */
    private final String f39614a;

    /* renamed from: b  reason: collision with root package name */
    private final ThreadFactory f39615b = Executors.defaultThreadFactory();

    public a(@NonNull String str) {
        p.k(str, "Name must not be null");
        this.f39614a = str;
    }

    @Override // java.util.concurrent.ThreadFactory
    @NonNull
    public final Thread newThread(@NonNull Runnable runnable) {
        Thread newThread = this.f39615b.newThread(new b(runnable, 0));
        newThread.setName(this.f39614a);
        return newThread;
    }
}
