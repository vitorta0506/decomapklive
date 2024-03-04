package androidx.browser.browseractions;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.app.Dialog;
import android.content.Context;
import android.graphics.drawable.ColorDrawable;
import android.view.MotionEvent;
import android.view.View;
import androidx.interpolator.view.animation.LinearOutSlowInInterpolator;
/* loaded from: classes.dex */
class BrowserActionsFallbackMenuDialog extends Dialog {
    private static final long ENTER_ANIMATION_DURATION_MS = 250;
    private static final long EXIT_ANIMATION_DURATION_MS = 150;
    private final View mContentView;

    /* JADX INFO: Access modifiers changed from: package-private */
    public BrowserActionsFallbackMenuDialog(Context context, View view) {
        super(context);
        this.mContentView = view;
    }

    private void startAnimation(final boolean z10) {
        float f10 = z10 ? 0.0f : 1.0f;
        float f11 = z10 ? 1.0f : 0.0f;
        long j10 = z10 ? 250L : 150L;
        this.mContentView.setScaleX(f10);
        this.mContentView.setScaleY(f10);
        this.mContentView.animate().scaleX(f11).scaleY(f11).setDuration(j10).setInterpolator(new LinearOutSlowInInterpolator()).setListener(new AnimatorListenerAdapter() { // from class: androidx.browser.browseractions.BrowserActionsFallbackMenuDialog.1
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                if (z10) {
                    return;
                }
                BrowserActionsFallbackMenuDialog.super.dismiss();
            }
        }).start();
    }

    @Override // android.app.Dialog, android.content.DialogInterface
    public void dismiss() {
        startAnimation(false);
    }

    @Override // android.app.Dialog
    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (motionEvent.getAction() == 0) {
            dismiss();
            return true;
        }
        return false;
    }

    @Override // android.app.Dialog
    public void show() {
        getWindow().setBackgroundDrawable(new ColorDrawable(0));
        startAnimation(true);
        super.show();
    }
}
