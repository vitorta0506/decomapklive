package org.light.lightAssetKit.components;

import com.tencent.ugc.UGCTransitionRules;
import org.light.lightAssetKit.ComponentBase;
/* loaded from: classes7.dex */
public class Camera extends Component {
    private int duplicateInput;
    private String renderTargetKey;
    private int sizeConfig;

    public Camera() {
        this.sizeConfig = UGCTransitionRules.DEFAULT_IMAGE_HEIGHT;
        this.renderTargetKey = "";
        this.duplicateInput = 0;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // org.light.lightAssetKit.components.Component, org.light.lightAssetKit.ComponentBase
    public void doUpdate(ComponentBase componentBase) {
        if (componentBase instanceof Camera) {
            Camera camera = (Camera) componentBase;
            this.sizeConfig = camera.sizeConfig;
            this.renderTargetKey = camera.renderTargetKey;
            this.duplicateInput = camera.duplicateInput;
        }
        super.doUpdate(componentBase);
    }

    public int getDuplicateInput() {
        return this.duplicateInput;
    }

    public String getRenderTargetKey() {
        return this.renderTargetKey;
    }

    public int getSizeConfig() {
        return this.sizeConfig;
    }

    public void setDuplicateInput(int i9) {
        this.duplicateInput = i9;
        reportPropertyChange("duplicateInput", Integer.valueOf(i9));
    }

    public void setRenderTargetKey(String str) {
        this.renderTargetKey = str;
        reportPropertyChange("renderTargetKey", str);
    }

    public void setSizeConfig(int i9) {
        this.sizeConfig = i9;
        reportPropertyChange("sizeConfig", Integer.valueOf(i9));
    }

    @Override // org.light.lightAssetKit.components.Component, org.light.lightAssetKit.ComponentBase
    public String type() {
        return "Camera";
    }

    public Camera(int i9, String str, int i10) {
        this.sizeConfig = i9;
        this.renderTargetKey = str;
        this.duplicateInput = i10;
    }
}
