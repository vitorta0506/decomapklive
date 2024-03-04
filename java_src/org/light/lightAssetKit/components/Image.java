package org.light.lightAssetKit.components;

import org.light.lightAssetKit.ComponentBase;
import org.light.lightAssetKit.enums.PAGScaleMode;
/* loaded from: classes7.dex */
public class Image extends Component {
    private PAGScaleMode scaleMode = PAGScaleMode.LetterBox;
    private int duration = 0;
    private boolean loop = true;
    private String src = "";

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // org.light.lightAssetKit.components.Component, org.light.lightAssetKit.ComponentBase
    public void doUpdate(ComponentBase componentBase) {
        if (componentBase instanceof Image) {
            Image image = (Image) componentBase;
            this.scaleMode = image.scaleMode;
            this.duration = image.duration;
            this.loop = image.loop;
            this.src = image.src;
        }
        super.doUpdate(componentBase);
    }

    public int getDuration() {
        return this.duration;
    }

    public boolean getLoop() {
        return this.loop;
    }

    public PAGScaleMode getScaleMode() {
        return this.scaleMode;
    }

    public String getSrc() {
        return this.src;
    }

    public void setDuration(int i9) {
        this.duration = i9;
        reportPropertyChange("duration", Integer.valueOf(i9));
    }

    public void setLoop(boolean z10) {
        this.loop = z10;
        reportPropertyChange("loop", Boolean.valueOf(z10));
    }

    public void setScaleMode(PAGScaleMode pAGScaleMode) {
        this.scaleMode = pAGScaleMode;
        reportPropertyChange("scaleMode", pAGScaleMode);
    }

    public void setSrc(String str) {
        this.src = str;
        reportPropertyChange("src", str);
    }

    @Override // org.light.lightAssetKit.components.Component, org.light.lightAssetKit.ComponentBase
    public String type() {
        return "Image";
    }
}
