package org.light.lightAssetKit.components;

import java.util.ArrayList;
import org.light.lightAssetKit.ComponentBase;
import org.light.lightAssetKit.enums.BrushRenderType;
import org.light.lightAssetKit.enums.BrushTriggerType;
/* loaded from: classes7.dex */
public class Brush extends Component {
    private String brushColor;
    private ArrayList<String> brushImages;
    private int brushSize;
    private String renderTarget;
    private BrushRenderType renderType;
    private BrushTriggerType triggerType;

    public Brush() {
        this.brushColor = "#FFFFFFFF";
        this.brushSize = 0;
        this.renderTarget = "";
        this.triggerType = BrushTriggerType.Line;
        this.renderType = BrushRenderType.Static;
        this.brushImages = new ArrayList<>();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // org.light.lightAssetKit.components.Component, org.light.lightAssetKit.ComponentBase
    public void doUpdate(ComponentBase componentBase) {
        if (componentBase instanceof Brush) {
            Brush brush = (Brush) componentBase;
            this.brushColor = brush.brushColor;
            this.brushSize = brush.brushSize;
            this.renderTarget = brush.renderTarget;
            this.triggerType = brush.triggerType;
            this.renderType = brush.renderType;
            this.brushImages = brush.brushImages;
        }
        super.doUpdate(componentBase);
    }

    public String getBrushColor() {
        return this.brushColor;
    }

    public ArrayList<String> getBrushImages() {
        return this.brushImages;
    }

    public int getBrushSize() {
        return this.brushSize;
    }

    public String getRenderTarget() {
        return this.renderTarget;
    }

    public BrushRenderType getRenderType() {
        return this.renderType;
    }

    public BrushTriggerType getTriggerType() {
        return this.triggerType;
    }

    public void setBrushColor(String str) {
        this.brushColor = str;
        reportPropertyChange("brushColor", str);
    }

    public void setBrushImages(ArrayList<String> arrayList) {
        this.brushImages = arrayList;
        reportPropertyChange("brushImages", arrayList);
    }

    public void setBrushSize(int i9) {
        this.brushSize = i9;
        reportPropertyChange("brushSize", Integer.valueOf(i9));
    }

    public void setRenderTarget(String str) {
        this.renderTarget = str;
        reportPropertyChange("renderTarget", str);
    }

    public void setRenderType(BrushRenderType brushRenderType) {
        this.renderType = brushRenderType;
        reportPropertyChange("renderType", brushRenderType);
    }

    public void setTriggerType(BrushTriggerType brushTriggerType) {
        this.triggerType = brushTriggerType;
        reportPropertyChange("triggerType", brushTriggerType);
    }

    @Override // org.light.lightAssetKit.components.Component, org.light.lightAssetKit.ComponentBase
    public String type() {
        return "Brush";
    }

    public Brush(String str, int i9, String str2, BrushTriggerType brushTriggerType, BrushRenderType brushRenderType, ArrayList<String> arrayList) {
        this.brushColor = "#FFFFFFFF";
        this.brushSize = 0;
        this.renderTarget = "";
        this.triggerType = BrushTriggerType.Line;
        this.renderType = BrushRenderType.Static;
        new ArrayList();
        this.brushColor = str;
        this.brushSize = i9;
        this.renderTarget = str2;
        this.triggerType = brushTriggerType;
        this.renderType = brushRenderType;
        this.brushImages = arrayList;
    }
}
