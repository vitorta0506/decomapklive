package a5;

import android.util.Log;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class q implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ a f630a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public q(a aVar) {
        this.f630a = aVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        f fVar;
        try {
            fVar = this.f630a.f602a;
            fVar.k();
        } catch (Exception e10) {
            Log.e("SplitCompat", "Failed to cleanup splitcompat storage", e10);
        }
    }
}
