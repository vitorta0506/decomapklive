package org.light.lightAssetKit.components;

import org.light.lightAssetKit.ComponentBase;
/* loaded from: classes7.dex */
public class Liquefaction extends Component {
    private int boundaryFixMode;
    private String resourcePath;
    private String shortFaceResourcePath;
    private float shortFaceStrength;
    private float strength;

    public Liquefaction() {
        this.resourcePath = "";
        this.strength = 0.0f;
        this.shortFaceResourcePath = "";
        this.shortFaceStrength = 0.0f;
        this.boundaryFixMode = 0;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // org.light.lightAssetKit.components.Component, org.light.lightAssetKit.ComponentBase
    public void doUpdate(ComponentBase componentBase) {
        if (componentBase instanceof Liquefaction) {
            Liquefaction liquefaction = (Liquefaction) componentBase;
            this.resourcePath = liquefaction.resourcePath;
            this.strength = liquefaction.strength;
            this.shortFaceResourcePath = liquefaction.shortFaceResourcePath;
            this.shortFaceStrength = liquefaction.shortFaceStrength;
            this.boundaryFixMode = liquefaction.boundaryFixMode;
        }
        super.doUpdate(componentBase);
    }

    public int getBoundaryFixMode() {
        return this.boundaryFixMode;
    }

    public String getResourcePath() {
        return this.resourcePath;
    }

    public String getShortFaceResourcePath() {
        return this.shortFaceResourcePath;
    }

    public float getShortFaceStrength() {
        return this.shortFaceStrength;
    }

    public float getStrength() {
        return this.strength;
    }

    public void setBoundaryFixMode(int i9) {
        this.boundaryFixMode = i9;
        reportPropertyChange("boundaryFixMode", Integer.valueOf(i9));
    }

    public void setResourcePath(String str) {
        this.resourcePath = str;
        reportPropertyChange("resourcePath", str);
    }

    public void setShortFaceResourcePath(String str) {
        this.shortFaceResourcePath = str;
        reportPropertyChange("shortFaceResourcePath", str);
    }

    public void setShortFaceStrength(float f10) {
        this.shortFaceStrength = f10;
        reportPropertyChange("shortFaceStrength", Float.valueOf(f10));
    }

    public void setStrength(float f10) {
        this.strength = f10;
        reportPropertyChange("strength", Float.valueOf(f10));
    }

    @Override // org.light.lightAssetKit.components.Component, org.light.lightAssetKit.ComponentBase
    public String type() {
        return "Liquefaction";
    }

    public Liquefaction(String str, float f10, int i9, String str2, float f11) {
        this.resourcePath = str;
        this.strength = f10;
        this.boundaryFixMode = i9;
        this.shortFaceResourcePath = str2;
        this.shortFaceStrength = f11;
    }
}
