package org.light.lightAssetKit.components;

import org.light.lightAssetKit.ComponentBase;
import org.light.lightAssetKit.enums.LightEstimateType;
/* loaded from: classes7.dex */
public class LightEstimateComponent extends Component {
    private LightEstimateType lightEstimateType;
    private String renderTargetKey = "";
    private String imagePath = "";
    private boolean enableLightIntensity = true;
    private float lightIntensityMax = 50.0f;
    private float lightIntensityMin = 0.0f;
    private boolean enableLightColor = true;
    private boolean enableLightDirection = true;
    private boolean useScriptSet = false;

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // org.light.lightAssetKit.components.Component, org.light.lightAssetKit.ComponentBase
    public void doUpdate(ComponentBase componentBase) {
        if (componentBase instanceof LightEstimateComponent) {
            LightEstimateComponent lightEstimateComponent = (LightEstimateComponent) componentBase;
            this.lightEstimateType = lightEstimateComponent.lightEstimateType;
            this.renderTargetKey = lightEstimateComponent.renderTargetKey;
            this.imagePath = lightEstimateComponent.imagePath;
            this.enableLightIntensity = lightEstimateComponent.enableLightIntensity;
            this.lightIntensityMax = lightEstimateComponent.lightIntensityMax;
            this.lightIntensityMin = lightEstimateComponent.lightIntensityMin;
            this.enableLightColor = lightEstimateComponent.enableLightColor;
            this.enableLightDirection = lightEstimateComponent.enableLightDirection;
            this.useScriptSet = lightEstimateComponent.useScriptSet;
        }
        super.doUpdate(componentBase);
    }

    public boolean getEnableLightColor() {
        return this.enableLightColor;
    }

    public boolean getEnableLightDirection() {
        return this.enableLightDirection;
    }

    public boolean getEnableLightIntensity() {
        return this.enableLightIntensity;
    }

    public String getImagePath() {
        return this.imagePath;
    }

    public LightEstimateType getLightEstimateType() {
        return this.lightEstimateType;
    }

    public float getLightIntensityMax() {
        return this.lightIntensityMax;
    }

    public float getLightIntensityMin() {
        return this.lightIntensityMin;
    }

    public String getRenderTargetKey() {
        return this.renderTargetKey;
    }

    public boolean getUseScriptSet() {
        return this.useScriptSet;
    }

    public void setEnableLightColor(boolean z10) {
        this.enableLightColor = z10;
        reportPropertyChange("enableLightColor", Boolean.valueOf(z10));
    }

    public void setEnableLightDirection(boolean z10) {
        this.enableLightDirection = z10;
        reportPropertyChange("enableLightDirection", Boolean.valueOf(z10));
    }

    public void setEnableLightIntensity(boolean z10) {
        this.enableLightIntensity = z10;
        reportPropertyChange("enableLightIntensity", Boolean.valueOf(z10));
    }

    public void setImagePath(String str) {
        this.imagePath = str;
        reportPropertyChange("imagePath", str);
    }

    public void setLightEstimateType(LightEstimateType lightEstimateType) {
        this.lightEstimateType = lightEstimateType;
        reportPropertyChange("lightEstimateType", lightEstimateType);
    }

    public void setLightIntensityMax(float f10) {
        this.lightIntensityMax = f10;
        reportPropertyChange("lightIntensityMax", Float.valueOf(f10));
    }

    public void setLightIntensityMin(float f10) {
        this.lightIntensityMin = f10;
        reportPropertyChange("lightIntensityMin", Float.valueOf(f10));
    }

    public void setRenderTargetKey(String str) {
        this.renderTargetKey = str;
        reportPropertyChange("renderTargetKey", str);
    }

    public void setUseScriptSet(boolean z10) {
        this.useScriptSet = z10;
        reportPropertyChange("useScriptSet", Boolean.valueOf(z10));
    }

    @Override // org.light.lightAssetKit.components.Component, org.light.lightAssetKit.ComponentBase
    public String type() {
        return "LightEstimateComponent";
    }
}
