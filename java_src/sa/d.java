package sa;

import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.view.View;
import android.view.animation.AccelerateDecelerateInterpolator;
import com.guochao.faceshow.R;
/* loaded from: classes3.dex */
public class d {

    /* renamed from: a  reason: collision with root package name */
    AccelerateDecelerateInterpolator f57841a = new AccelerateDecelerateInterpolator();

    public void a(View view, boolean z10) {
        AnimatorSet animatorSet = (AnimatorSet) view.getTag(R.id.anim_live_status);
        if (animatorSet == null) {
            animatorSet = new AnimatorSet();
            animatorSet.setDuration(300L);
            animatorSet.setInterpolator(this.f57841a);
            View findViewById = view.findViewById(R.id.ripple);
            ObjectAnimator ofFloat = ObjectAnimator.ofFloat(findViewById, "scaleX", 1.5f, 1.0f);
            ObjectAnimator ofFloat2 = ObjectAnimator.ofFloat(findViewById, "scaleY", 1.5f, 1.0f);
            View findViewById2 = view.findViewById(R.id.ll_anim);
            animatorSet.playTogether(ofFloat, ofFloat2, ObjectAnimator.ofFloat(findViewById2, "scaleX", 3.0f, 1.0f), ObjectAnimator.ofFloat(findViewById2, "scaleY", 3.0f, 1.0f));
            animatorSet.start();
            view.setTag(R.id.anim_live_status, animatorSet);
        }
        b(animatorSet);
        animatorSet.start();
    }

    public void b(AnimatorSet animatorSet) {
        if (animatorSet != null) {
            animatorSet.removeAllListeners();
            animatorSet.end();
        }
    }
}
