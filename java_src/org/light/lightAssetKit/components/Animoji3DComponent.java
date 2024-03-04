package org.light.lightAssetKit.components;

import java.util.ArrayList;
import org.light.lightAssetKit.ComponentBase;
/* loaded from: classes7.dex */
public class Animoji3DComponent extends Component {
    private String morphName = "";
    private boolean trackEyeRoll = false;
    private int eyeBoneId = -1;
    private ArrayList<AnimojiConfig> animojiConfig = new ArrayList<>();
    private EyeSetting eyeSetting = new EyeSetting();

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // org.light.lightAssetKit.components.Component, org.light.lightAssetKit.ComponentBase
    public void doUpdate(ComponentBase componentBase) {
        if (componentBase instanceof Animoji3DComponent) {
            Animoji3DComponent animoji3DComponent = (Animoji3DComponent) componentBase;
            this.morphName = animoji3DComponent.morphName;
            this.trackEyeRoll = animoji3DComponent.trackEyeRoll;
            this.eyeBoneId = animoji3DComponent.eyeBoneId;
            this.animojiConfig = animoji3DComponent.animojiConfig;
            this.eyeSetting = animoji3DComponent.eyeSetting;
        }
        super.doUpdate(componentBase);
    }

    public ArrayList<AnimojiConfig> getAnimojiConfig() {
        return this.animojiConfig;
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

    public boolean getTrackEyeRoll() {
        return this.trackEyeRoll;
    }

    public void setAnimojiConfig(ArrayList<AnimojiConfig> arrayList) {
        this.animojiConfig = arrayList;
        reportPropertyChange("animojiConfig", arrayList);
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

    public void setTrackEyeRoll(boolean z10) {
        this.trackEyeRoll = z10;
        reportPropertyChange("trackEyeRoll", Boolean.valueOf(z10));
    }

    @Override // org.light.lightAssetKit.components.Component, org.light.lightAssetKit.ComponentBase
    public String type() {
        return "Animoji3DComponent";
    }
}
