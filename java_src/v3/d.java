package v3;

import android.app.Activity;
import androidx.annotation.NonNull;
import androidx.fragment.app.FragmentActivity;
/* loaded from: classes2.dex */
public class d {

    /* renamed from: a  reason: collision with root package name */
    private final Object f58969a;

    public d(@NonNull Activity activity) {
        com.google.android.gms.common.internal.p.k(activity, "Activity must not be null");
        this.f58969a = activity;
    }

    @NonNull
    public final Activity a() {
        return (Activity) this.f58969a;
    }

    @NonNull
    public final FragmentActivity b() {
        return (FragmentActivity) this.f58969a;
    }

    public final boolean c() {
        return this.f58969a instanceof Activity;
    }

    public final boolean d() {
        return this.f58969a instanceof FragmentActivity;
    }
}
