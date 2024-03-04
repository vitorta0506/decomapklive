package com.youth.banner.transformer;

import android.view.View;
/* loaded from: classes5.dex */
public class AccordionTransformer extends ABaseTransformer {
    @Override // com.youth.banner.transformer.ABaseTransformer
    protected void onTransform(View view, float f10) {
        int i9 = (f10 > 0.0f ? 1 : (f10 == 0.0f ? 0 : -1));
        view.setPivotX(i9 >= 0 ? view.getWidth() : 0.0f);
        view.setScaleX(i9 < 0 ? f10 + 1.0f : 1.0f - f10);
    }
}
