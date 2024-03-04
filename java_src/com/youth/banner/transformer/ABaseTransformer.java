package com.youth.banner.transformer;

import android.view.View;
import androidx.viewpager.widget.ViewPager;
/* loaded from: classes5.dex */
public abstract class ABaseTransformer implements ViewPager.PageTransformer {
    /* JADX INFO: Access modifiers changed from: protected */
    public static final float min(float f10, float f11) {
        return f10 < f11 ? f11 : f10;
    }

    protected boolean hideOffscreenPages() {
        return true;
    }

    protected boolean isPagingEnabled() {
        return false;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void onPostTransform(View view, float f10) {
    }

    protected void onPreTransform(View view, float f10) {
        float width = view.getWidth();
        float f11 = 0.0f;
        view.setRotationX(0.0f);
        view.setRotationY(0.0f);
        view.setRotation(0.0f);
        view.setScaleX(1.0f);
        view.setScaleY(1.0f);
        view.setPivotX(0.0f);
        view.setPivotY(0.0f);
        view.setTranslationY(0.0f);
        view.setTranslationX(isPagingEnabled() ? 0.0f : (-width) * f10);
        if (hideOffscreenPages()) {
            if (f10 > -1.0f && f10 < 1.0f) {
                f11 = 1.0f;
            }
            view.setAlpha(f11);
            return;
        }
        view.setAlpha(1.0f);
    }

    protected abstract void onTransform(View view, float f10);

    @Override // androidx.viewpager.widget.ViewPager.PageTransformer
    public void transformPage(View view, float f10) {
        onPreTransform(view, f10);
        onTransform(view, f10);
        onPostTransform(view, f10);
    }
}
