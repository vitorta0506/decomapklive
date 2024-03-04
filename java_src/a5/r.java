package a5;

import android.util.Log;
import java.util.Set;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class r implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ Set f631a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ a f632b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public r(a aVar, Set set) {
        this.f632b = aVar;
        this.f631a = set;
    }

    @Override // java.lang.Runnable
    public final void run() {
        try {
            this.f632b.f(this.f631a);
        } catch (Exception e10) {
            Log.e("SplitCompat", "Failed to remove from splitcompat storage split that is already installed", e10);
        }
    }
}
