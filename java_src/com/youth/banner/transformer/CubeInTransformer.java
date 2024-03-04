package com.youth.banner.transformer;

import android.view.View;
/* loaded from: classes5.dex */
public class CubeInTransformer extends ABaseTransformer {
    @Override // com.youth.banner.transformer.ABaseTransformer
    public boolean isPagingEnabled() {
        return true;
    }

    @Override // com.youth.banner.transformer.ABaseTransformer
    protected void onTransform(View view, float f10) {
        view.setPivotX(f10 > 0.0f ? 0.0f : view.getWidth());
        view.setPivotY(0.0f);
        view.setRotationY(f10 * (-90.0f));
    }
}
