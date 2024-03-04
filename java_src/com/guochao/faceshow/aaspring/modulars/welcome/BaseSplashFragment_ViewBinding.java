package com.guochao.faceshow.aaspring.modulars.welcome;

import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import butterknife.Unbinder;
import butterknife.internal.c;
import com.guochao.faceshow.R;
/* loaded from: classes3.dex */
public class BaseSplashFragment_ViewBinding implements Unbinder {

    /* renamed from: b  reason: collision with root package name */
    private BaseSplashFragment f23397b;

    @UiThread
    public BaseSplashFragment_ViewBinding(BaseSplashFragment baseSplashFragment, View view) {
        this.f23397b = baseSplashFragment;
        baseSplashFragment.mSplashViewGroup = (ViewGroup) c.d(view, R.id.count_down_jump_ly, "field 'mSplashViewGroup'", ViewGroup.class);
        baseSplashFragment.mTextViewSplashCountDown = (TextView) c.d(view, R.id.count_down_jump_show_text, "field 'mTextViewSplashCountDown'", TextView.class);
        baseSplashFragment.mImageViewSplash = (ImageView) c.d(view, R.id.app_promotion_img, "field 'mImageViewSplash'", ImageView.class);
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void unbind() {
        BaseSplashFragment baseSplashFragment = this.f23397b;
        if (baseSplashFragment != null) {
            this.f23397b = null;
            baseSplashFragment.mSplashViewGroup = null;
            baseSplashFragment.mTextViewSplashCountDown = null;
            baseSplashFragment.mImageViewSplash = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
