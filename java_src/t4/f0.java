package t4;

import android.app.Activity;
import androidx.annotation.MainThread;
import com.google.android.gms.common.api.internal.LifecycleCallback;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes2.dex */
final class f0 extends LifecycleCallback {

    /* renamed from: b  reason: collision with root package name */
    private final List f58032b;

    private f0(v3.e eVar) {
        super(eVar);
        this.f58032b = new ArrayList();
        this.f7503a.i("TaskOnStopCallback", this);
    }

    public static f0 l(Activity activity) {
        v3.e c10 = LifecycleCallback.c(activity);
        f0 f0Var = (f0) c10.N("TaskOnStopCallback", f0.class);
        return f0Var == null ? new f0(c10) : f0Var;
    }

    @Override // com.google.android.gms.common.api.internal.LifecycleCallback
    @MainThread
    public final void k() {
        synchronized (this.f58032b) {
            for (WeakReference weakReference : this.f58032b) {
                b0 b0Var = (b0) weakReference.get();
                if (b0Var != null) {
                    b0Var.E();
                }
            }
            this.f58032b.clear();
        }
    }

    public final void m(b0 b0Var) {
        synchronized (this.f58032b) {
            this.f58032b.add(new WeakReference(b0Var));
        }
    }
}
