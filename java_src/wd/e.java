package wd;

import android.animation.ValueAnimator;
import android.view.MotionEvent;
import android.view.View;
import androidx.annotation.NonNull;
/* loaded from: classes4.dex */
public interface e {
    void a(MotionEvent motionEvent);

    void b(boolean z10);

    ValueAnimator.AnimatorUpdateListener c(int i9);

    boolean canLoadMore();

    boolean canRefresh();

    @NonNull
    View d();

    void e(k kVar);

    void f(int i9, int i10, int i11);

    @NonNull
    View getView();

    void h(i iVar, View view, View view2);
}
