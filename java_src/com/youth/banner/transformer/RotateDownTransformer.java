package com.youth.banner.transformer;

import android.view.View;
/* loaded from: classes5.dex */
public class RotateDownTransformer extends ABaseTransformer {
    private static final float ROT_MOD = -15.0f;

    @Override // com.youth.banner.transformer.ABaseTransformer
    protected boolean isPagingEnabled() {
        return true;
    }

    @Override // com.youth.banner.transformer.ABaseTransformer
    protected void onTransform(View view, float f10) {
        view.setPivotX(view.getWidth() * 0.5f);
        view.setPivotY(view.getHeight());
        view.setRotation(f10 * ROT_MOD * (-1.25f));
    }
}
