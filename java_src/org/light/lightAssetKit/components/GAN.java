package org.light.lightAssetKit.components;

import java.util.ArrayList;
import java.util.HashMap;
import org.light.lightAssetKit.ComponentBase;
/* loaded from: classes7.dex */
public class GAN extends Component {
    private float factor;
    private HashMap<String, String> inputMap;
    private ArrayList<String> inputResources;
    private boolean multiFacesOverlapCulling;
    private boolean need_validator;
    private String resourcePath;

    public GAN() {
        this.resourcePath = "";
        this.inputResources = new ArrayList<>();
        this.inputMap = new HashMap<>();
        this.factor = 1.0f;
        this.need_validator = false;
        this.multiFacesOverlapCulling = true;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // org.light.lightAssetKit.components.Component, org.light.lightAssetKit.ComponentBase
    public void doUpdate(ComponentBase componentBase) {
        if (componentBase instanceof GAN) {
            GAN gan = (GAN) componentBase;
            this.resourcePath = gan.resourcePath;
            this.inputResources = gan.inputResources;
            this.inputMap = gan.inputMap;
            this.factor = gan.factor;
            this.need_validator = gan.need_validator;
            this.multiFacesOverlapCulling = gan.multiFacesOverlapCulling;
        }
        super.doUpdate(componentBase);
    }

    public float getFactor() {
        return this.factor;
    }

    public HashMap<String, String> getInputMap() {
        return this.inputMap;
    }

    public ArrayList<String> getInputResources() {
        return this.inputResources;
    }

    public boolean getMultiFacesOverlapCulling() {
        return this.multiFacesOverlapCulling;
    }

    public boolean getNeed_validator() {
        return this.need_validator;
    }

    public String getResourcePath() {
        return this.resourcePath;
    }

    public void setFactor(float f10) {
        this.factor = f10;
        reportPropertyChange("factor", Float.valueOf(f10));
    }

    public void setInputMap(HashMap<String, String> hashMap) {
        this.inputMap = hashMap;
        reportPropertyChange("inputMap", hashMap);
    }

    public void setInputResources(ArrayList<String> arrayList) {
        this.inputResources = arrayList;
        reportPropertyChange("inputResources", arrayList);
    }

    public void setMultiFacesOverlapCulling(boolean z10) {
        this.multiFacesOverlapCulling = z10;
        reportPropertyChange("multiFacesOverlapCulling", Boolean.valueOf(z10));
    }

    public void setNeed_validator(boolean z10) {
        this.need_validator = z10;
        reportPropertyChange("need_validator", Boolean.valueOf(z10));
    }

    public void setResourcePath(String str) {
        this.resourcePath = str;
        reportPropertyChange("resourcePath", str);
    }

    @Override // org.light.lightAssetKit.components.Component, org.light.lightAssetKit.ComponentBase
    public String type() {
        return "GAN";
    }

    public GAN(String str) {
        this.resourcePath = "";
        this.inputResources = new ArrayList<>();
        this.inputMap = new HashMap<>();
        this.factor = 1.0f;
        this.need_validator = false;
        this.multiFacesOverlapCulling = true;
        this.resourcePath = str;
    }
}
