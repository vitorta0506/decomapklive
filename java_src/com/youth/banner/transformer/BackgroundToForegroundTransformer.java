package com.youth.banner.transformer;

import android.view.View;
/* loaded from: classes5.dex */
public class BackgroundToForegroundTransformer extends ABaseTransformer {
    @Override // com.youth.banner.transformer.ABaseTransformer
    protected void onTransform(View view, float f10) {
        float height = view.getHeight();
        float width = view.getWidth();
        int i9 = (f10 > 0.0f ? 1 : (f10 == 0.0f ? 0 : -1));
        float min = ABaseTransformer.min(i9 >= 0 ? Math.abs(1.0f - f10) : 1.0f, 0.5f);
        view.setScaleX(min);
        view.setScaleY(min);
        view.setPivotX(width * 0.5f);
        view.setPivotY(height * 0.5f);
        view.setTranslationX(i9 < 0 ? width * f10 : (-width) * f10 * 0.25f);
    }
}
