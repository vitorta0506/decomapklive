package org.light.lightAssetKit.components;

import org.light.lightAssetKit.ComponentBase;
import org.light.lightAssetKit.enums.BrushTriggerType;
/* loaded from: classes7.dex */
public class Eraser extends Component {
    private int eraserSize;
    private String eraserTarget;
    private BrushTriggerType eraserTriggerType;

    public Eraser() {
        this.eraserTarget = "";
        this.eraserTriggerType = BrushTriggerType.Line;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // org.light.lightAssetKit.components.Component, org.light.lightAssetKit.ComponentBase
    public void doUpdate(ComponentBase componentBase) {
        if (componentBase instanceof Eraser) {
            Eraser eraser = (Eraser) componentBase;
            this.eraserTarget = eraser.eraserTarget;
            this.eraserTriggerType = eraser.eraserTriggerType;
            this.eraserSize = eraser.eraserSize;
        }
        super.doUpdate(componentBase);
    }

    public int getEraserSize() {
        return this.eraserSize;
    }

    public String getEraserTarget() {
        return this.eraserTarget;
    }

    public BrushTriggerType getEraserTriggerType() {
        return this.eraserTriggerType;
    }

    public void setEraserSize(int i9) {
        this.eraserSize = i9;
        reportPropertyChange("eraserSize", Integer.valueOf(i9));
    }

    public void setEraserTarget(String str) {
        this.eraserTarget = str;
        reportPropertyChange("eraserTarget", str);
    }

    public void setEraserTriggerType(BrushTriggerType brushTriggerType) {
        this.eraserTriggerType = brushTriggerType;
        reportPropertyChange("eraserTriggerType", brushTriggerType);
    }

    @Override // org.light.lightAssetKit.components.Component, org.light.lightAssetKit.ComponentBase
    public String type() {
        return "Eraser";
    }

    public Eraser(BrushTriggerType brushTriggerType, int i9, String str) {
        this.eraserTarget = "";
        BrushTriggerType brushTriggerType2 = BrushTriggerType.Line;
        this.eraserTriggerType = brushTriggerType;
        this.eraserSize = i9;
        this.eraserTarget = str;
    }
}
