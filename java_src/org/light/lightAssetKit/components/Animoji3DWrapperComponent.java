package org.light.lightAssetKit.components;

import java.util.ArrayList;
import org.light.lightAssetKit.ComponentBase;
/* loaded from: classes7.dex */
public class Animoji3DWrapperComponent extends Component {
    private ArrayList<AnimojiConfig> animojiConfig = new ArrayList<>();
    private String morphName = "";
    private boolean trackEyeRoll = false;
    private int eyeBoneId = -1;
    private boolean enableProMode = false;
    private float smoothStrength = 0.0f;
    private EyeSetting eyeSetting = new EyeSetting();

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // org.light.lightAssetKit.components.Component, org.light.lightAssetKit.ComponentBase
    public void doUpdate(ComponentBase componentBase) {
        if (componentBase instanceof Animoji3DWrapperComponent) {
            Animoji3DWrapperComponent animoji3DWrapperComponent = (Animoji3DWrapperComponent) componentBase;
            this.animojiConfig = animoji3DWrapperComponent.animojiConfig;
            this.morphName = animoji3DWrapperComponent.morphName;
            this.trackEyeRoll = animoji3DWrapperComponent.trackEyeRoll;
            this.eyeBoneId = animoji3DWrapperComponent.eyeBoneId;
            this.enableProMode = animoji3DWrapperComponent.enableProMode;
            this.smoothStrength = animoji3DWrapperComponent.smoothStrength;
            this.eyeSetting = animoji3DWrapperComponent.eyeSetting;
        }
        super.doUpdate(componentBase);
    }

    public ArrayList<AnimojiConfig> getAnimojiConfig() {
        return this.animojiConfig;
    }

    public boolean getEnableProMode() {
        return this.enableProMode;
    }

    public int getEyeBoneId() {
        return this.eyeBoneId;
    }

    public EyeSetting getEyeSetting() {
        return this.eyeSetting;
    }

    public String getMorphName() {
        return this.morphName;
    }

    public float getSmoothStrength() {
        return this.smoothStrength;
    }

    public boolean getTrackEyeRoll() {
        return this.trackEyeRoll;
    }

    public void setAnimojiConfig(ArrayList<AnimojiConfig> arrayList) {
        this.animojiConfig = arrayList;
        reportPropertyChange("animojiConfig", arrayList);
    }

    public void setEnableProMode(boolean z10) {
        this.enableProMode = z10;
        reportPropertyChange("enableProMode", Boolean.valueOf(z10));
    }

    public void setEyeBoneId(int i9) {
        this.eyeBoneId = i9;
        reportPropertyChange("eyeBoneId", Integer.valueOf(i9));
    }

    public void setEyeSetting(EyeSetting eyeSetting) {
        this.eyeSetting = eyeSetting;
        reportPropertyChange("eyeSetting", eyeSetting);
    }

    public void setMorphName(String str) {
        this.morphName = str;
        reportPropertyChange("morphName", str);
    }

    public void setSmoothStrength(float f10) {
        this.smoothStrength = f10;
        reportPropertyChange("smoothStrength", Float.valueOf(f10));
    }

    public void setTrackEyeRoll(boolean z10) {
        this.trackEyeRoll = z10;
        reportPropertyChange("trackEyeRoll", Boolean.valueOf(z10));
    }

    @Override // org.light.lightAssetKit.components.Component, org.light.lightAssetKit.ComponentBase
    public String type() {
        return "Animoji3DWrapperComponent";
    }
}
