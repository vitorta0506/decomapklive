package com.youth.banner.transformer;

import android.view.View;
/* loaded from: classes5.dex */
public class ZoomInTransformer extends ABaseTransformer {
    @Override // com.youth.banner.transformer.ABaseTransformer
    protected void onTransform(View view, float f10) {
        float f11 = 0.0f;
        float abs = f10 < 0.0f ? f10 + 1.0f : Math.abs(1.0f - f10);
        view.setScaleX(abs);
        view.setScaleY(abs);
        view.setPivotX(view.getWidth() * 0.5f);
        view.setPivotY(view.getHeight() * 0.5f);
        if (f10 >= -1.0f && f10 <= 1.0f) {
            f11 = 1.0f - (abs - 1.0f);
        }
        view.setAlpha(f11);
    }
}
