package org.light.lightAssetKit.components;

import org.light.lightAssetKit.ComponentBase;
/* loaded from: classes7.dex */
public class Paint extends Component {
    private String brushColor;
    private String brushImage;
    private int brushSize;
    private String canvasColor;
    private int paintMode;
    private String renderTarget;

    public Paint() {
        this.canvasColor = "#00000000";
        this.brushColor = "#FFFFFFFF";
        this.brushSize = 100;
        this.brushImage = "";
        this.renderTarget = "";
        this.paintMode = 0;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // org.light.lightAssetKit.components.Component, org.light.lightAssetKit.ComponentBase
    public void doUpdate(ComponentBase componentBase) {
        if (componentBase instanceof Paint) {
            Paint paint = (Paint) componentBase;
            this.canvasColor = paint.canvasColor;
            this.brushColor = paint.brushColor;
            this.brushSize = paint.brushSize;
            this.brushImage = paint.brushImage;
            this.renderTarget = paint.renderTarget;
            this.paintMode = paint.paintMode;
        }
        super.doUpdate(componentBase);
    }

    public String getBrushColor() {
        return this.brushColor;
    }

    public String getBrushImage() {
        return this.brushImage;
    }

    public int getBrushSize() {
        return this.brushSize;
    }

    public String getCanvasColor() {
        return this.canvasColor;
    }

    public int getPaintMode() {
        return this.paintMode;
    }

    public String getRenderTarget() {
        return this.renderTarget;
    }

    public void setBrushColor(String str) {
        this.brushColor = str;
        reportPropertyChange("brushColor", str);
    }

    public void setBrushImage(String str) {
        this.brushImage = str;
        reportPropertyChange("brushImage", str);
    }

    public void setBrushSize(int i9) {
        this.brushSize = i9;
        reportPropertyChange("brushSize", Integer.valueOf(i9));
    }

    public void setCanvasColor(String str) {
        this.canvasColor = str;
        reportPropertyChange("canvasColor", str);
    }

    public void setPaintMode(int i9) {
        this.paintMode = i9;
        reportPropertyChange("paintMode", Integer.valueOf(i9));
    }

    public void setRenderTarget(String str) {
        this.renderTarget = str;
        reportPropertyChange("renderTarget", str);
    }

    @Override // org.light.lightAssetKit.components.Component, org.light.lightAssetKit.ComponentBase
    public String type() {
        return "Paint";
    }

    public Paint(String str, String str2, int i9, String str3, String str4, int i10) {
        this.canvasColor = str;
        this.brushColor = str2;
        this.brushSize = i9;
        this.brushImage = str3;
        this.renderTarget = str4;
        this.paintMode = i10;
    }
}
