package org.light.lightAssetKit.components;

import com.meizu.cloud.pushsdk.constants.PushConstants;
import java.util.ArrayList;
import org.light.lightAssetKit.ComponentBase;
import org.light.lightAssetKit.enums.FaceMorphingMethodType;
/* loaded from: classes7.dex */
public class CrazyFace extends Component {
    private String faceMaskImage;
    private String imageFaceJson;
    private FaceMorphingMethodType method;
    private String modelImage;
    private int modelIndex;
    private ArrayList<CrazyFaceModel> models;
    private boolean needCache;
    private float progress;

    public CrazyFace() {
        this.modelIndex = -1;
        this.models = new ArrayList<>();
        this.modelImage = "";
        this.faceMaskImage = "";
        this.imageFaceJson = "";
        this.progress = 0.0f;
        this.needCache = true;
        this.method = FaceMorphingMethodType.RefineMorphing;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // org.light.lightAssetKit.components.Component, org.light.lightAssetKit.ComponentBase
    public void doUpdate(ComponentBase componentBase) {
        if (componentBase instanceof CrazyFace) {
            CrazyFace crazyFace = (CrazyFace) componentBase;
            this.modelIndex = crazyFace.modelIndex;
            this.models = crazyFace.models;
            this.modelImage = crazyFace.modelImage;
            this.faceMaskImage = crazyFace.faceMaskImage;
            this.imageFaceJson = crazyFace.imageFaceJson;
            this.progress = crazyFace.progress;
            this.needCache = crazyFace.needCache;
            this.method = crazyFace.method;
        }
        super.doUpdate(componentBase);
    }

    public String getFaceMaskImage() {
        return this.faceMaskImage;
    }

    public String getImageFaceJson() {
        return this.imageFaceJson;
    }

    public FaceMorphingMethodType getMethod() {
        return this.method;
    }

    public String getModelImage() {
        return this.modelImage;
    }

    public int getModelIndex() {
        return this.modelIndex;
    }

    public ArrayList<CrazyFaceModel> getModels() {
        return this.models;
    }

    public boolean getNeedCache() {
        return this.needCache;
    }

    public float getProgress() {
        return this.progress;
    }

    public void setFaceMaskImage(String str) {
        this.faceMaskImage = str;
        reportPropertyChange("faceMaskImage", str);
    }

    public void setImageFaceJson(String str) {
        this.imageFaceJson = str;
        reportPropertyChange("imageFaceJson", str);
    }

    public void setMethod(FaceMorphingMethodType faceMorphingMethodType) {
        this.method = faceMorphingMethodType;
        reportPropertyChange(PushConstants.MZ_PUSH_MESSAGE_METHOD, faceMorphingMethodType);
    }

    public void setModelImage(String str) {
        this.modelImage = str;
        reportPropertyChange("modelImage", str);
    }

    public void setModelIndex(int i9) {
        this.modelIndex = i9;
        reportPropertyChange("modelIndex", Integer.valueOf(i9));
    }

    public void setModels(ArrayList<CrazyFaceModel> arrayList) {
        this.models = arrayList;
        reportPropertyChange("models", arrayList);
    }

    public void setNeedCache(boolean z10) {
        this.needCache = z10;
        reportPropertyChange("needCache", Boolean.valueOf(z10));
    }

    public void setProgress(float f10) {
        this.progress = f10;
        reportPropertyChange("progress", Float.valueOf(f10));
    }

    @Override // org.light.lightAssetKit.components.Component, org.light.lightAssetKit.ComponentBase
    public String type() {
        return "CrazyFace";
    }

    public CrazyFace(int i9, ArrayList<CrazyFaceModel> arrayList, String str, String str2, String str3, float f10, FaceMorphingMethodType faceMorphingMethodType, boolean z10) {
        this.modelIndex = -1;
        this.models = new ArrayList<>();
        this.modelImage = "";
        this.faceMaskImage = "";
        this.imageFaceJson = "";
        this.progress = 0.0f;
        this.needCache = true;
        FaceMorphingMethodType faceMorphingMethodType2 = FaceMorphingMethodType.RefineMorphing;
        this.modelIndex = i9;
        this.models = arrayList;
        this.modelImage = str;
        this.faceMaskImage = str2;
        this.imageFaceJson = str3;
        this.progress = f10;
        this.method = faceMorphingMethodType;
        this.needCache = z10;
    }
}
