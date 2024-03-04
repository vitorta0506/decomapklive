package com.youth.banner.transformer;

import android.view.View;
/* loaded from: classes5.dex */
public class StackTransformer extends ABaseTransformer {
    @Override // com.youth.banner.transformer.ABaseTransformer
    protected void onTransform(View view, float f10) {
        view.setTranslationX(f10 >= 0.0f ? (-view.getWidth()) * f10 : 0.0f);
    }
}
