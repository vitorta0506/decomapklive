package org.light.lightAssetKit.components;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import org.light.lightAssetKit.ComponentBase;
/* loaded from: classes7.dex */
public class ScreenTransform extends BasicTransform {
    private boolean interactive;
    private Rect anchor = new Rect(-1.0f, -1.0f, 1.0f, 1.0f);
    private Rect offset = new Rect();
    private Vec2 pivot = new Vec2();

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // org.light.lightAssetKit.components.BasicTransform, org.light.lightAssetKit.components.Component, org.light.lightAssetKit.ComponentBase
    public void doUpdate(ComponentBase componentBase) {
        if (componentBase instanceof ScreenTransform) {
            ScreenTransform screenTransform = (ScreenTransform) componentBase;
            this.anchor = screenTransform.anchor;
            this.offset = screenTransform.offset;
            this.pivot = screenTransform.pivot;
            this.interactive = screenTransform.interactive;
        }
        super.doUpdate(componentBase);
    }

    public Rect getAnchor() {
        return this.anchor;
    }

    public boolean getInteractive() {
        return this.interactive;
    }

    public Rect getOffset() {
        return this.offset;
    }

    public Vec2 getPivot() {
        return this.pivot;
    }

    public void setAnchor(Rect rect) {
        this.anchor = rect;
        reportPropertyChange("anchor", rect);
    }

    public void setInteractive(boolean z10) {
        this.interactive = z10;
        reportPropertyChange("interactive", Boolean.valueOf(z10));
    }

    public void setOffset(Rect rect) {
        this.offset = rect;
        reportPropertyChange(TypedValues.CycleType.S_WAVE_OFFSET, rect);
    }

    public void setPivot(Vec2 vec2) {
        this.pivot = vec2;
        reportPropertyChange("pivot", vec2);
    }

    @Override // org.light.lightAssetKit.components.BasicTransform, org.light.lightAssetKit.components.Component, org.light.lightAssetKit.ComponentBase
    public String type() {
        return "ScreenTransform";
    }
}
