package org.light.lightAssetKit.components;

import org.light.lightAssetKit.ComponentBase;
import org.light.lightAssetKit.enums.BlendModeType;
/* loaded from: classes7.dex */
public class BlendMode extends Component {
    private float alpha;
    private BlendModeType mode;

    public BlendMode() {
        this.mode = BlendModeType.Normal;
        this.alpha = 1.0f;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // org.light.lightAssetKit.components.Component, org.light.lightAssetKit.ComponentBase
    public void doUpdate(ComponentBase componentBase) {
        if (componentBase instanceof BlendMode) {
            BlendMode blendMode = (BlendMode) componentBase;
            this.mode = blendMode.mode;
            this.alpha = blendMode.alpha;
        }
        super.doUpdate(componentBase);
    }

    public float getAlpha() {
        return this.alpha;
    }

    public BlendModeType getMode() {
        return this.mode;
    }

    public void setAlpha(float f10) {
        this.alpha = f10;
        reportPropertyChange("alpha", Float.valueOf(f10));
    }

    public void setMode(BlendModeType blendModeType) {
        this.mode = blendModeType;
        reportPropertyChange("mode", blendModeType);
    }

    @Override // org.light.lightAssetKit.components.Component, org.light.lightAssetKit.ComponentBase
    public String type() {
        return "BlendMode";
    }

    public BlendMode(BlendModeType blendModeType, float f10) {
        BlendModeType blendModeType2 = BlendModeType.Normal;
        this.mode = blendModeType;
        this.alpha = f10;
    }
}
