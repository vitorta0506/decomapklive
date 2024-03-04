package com.youth.banner.transformer;

import android.view.View;
/* loaded from: classes5.dex */
public class FlipHorizontalTransformer extends ABaseTransformer {
    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.youth.banner.transformer.ABaseTransformer
    public void onPostTransform(View view, float f10) {
        super.onPostTransform(view, f10);
        if (f10 > -0.5f && f10 < 0.5f) {
            view.setVisibility(0);
        } else {
            view.setVisibility(4);
        }
    }

    @Override // com.youth.banner.transformer.ABaseTransformer
    protected void onTransform(View view, float f10) {
        float f11 = f10 * 180.0f;
        view.setAlpha((f11 > 90.0f || f11 < -90.0f) ? 0.0f : 1.0f);
        view.setPivotX(view.getWidth() * 0.5f);
        view.setPivotY(view.getHeight() * 0.5f);
        view.setRotationY(f11);
    }
}
