package org.light.lightAssetKit.components;

import java.util.ArrayList;
import org.light.lightAssetKit.ComponentBase;
/* loaded from: classes7.dex */
public class Face3DComponent extends Component {
    private boolean showUserHead;
    private int use3DMMHead;
    private boolean useCustom3DHead;
    private ArrayList<Integer> faceIndex = new ArrayList<>();
    private String custom3DHead = "";
    private int motionFaceIndex_ = 0;
    private boolean stopVertexUpdate = false;
    private boolean stopNormalUpdate = false;

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // org.light.lightAssetKit.components.Component, org.light.lightAssetKit.ComponentBase
    public void doUpdate(ComponentBase componentBase) {
        if (componentBase instanceof Face3DComponent) {
            Face3DComponent face3DComponent = (Face3DComponent) componentBase;
            this.use3DMMHead = face3DComponent.use3DMMHead;
            this.showUserHead = face3DComponent.showUserHead;
            this.faceIndex = face3DComponent.faceIndex;
            this.useCustom3DHead = face3DComponent.useCustom3DHead;
            this.custom3DHead = face3DComponent.custom3DHead;
            this.motionFaceIndex_ = face3DComponent.motionFaceIndex_;
            this.stopVertexUpdate = face3DComponent.stopVertexUpdate;
            this.stopNormalUpdate = face3DComponent.stopNormalUpdate;
        }
        super.doUpdate(componentBase);
    }

    public String getCustom3DHead() {
        return this.custom3DHead;
    }

    public ArrayList<Integer> getFaceIndex() {
        return this.faceIndex;
    }

    public int getMotionFaceIndex_() {
        return this.motionFaceIndex_;
    }

    public boolean getShowUserHead() {
        return this.showUserHead;
    }

    public boolean getStopNormalUpdate() {
        return this.stopNormalUpdate;
    }

    public boolean getStopVertexUpdate() {
        return this.stopVertexUpdate;
    }

    public int getUse3DMMHead() {
        return this.use3DMMHead;
    }

    public boolean getUseCustom3DHead() {
        return this.useCustom3DHead;
    }

    public void setCustom3DHead(String str) {
        this.custom3DHead = str;
        reportPropertyChange("custom3DHead", str);
    }

    public void setFaceIndex(ArrayList<Integer> arrayList) {
        this.faceIndex = arrayList;
        reportPropertyChange("faceIndex", arrayList);
    }

    public void setMotionFaceIndex_(int i9) {
        this.motionFaceIndex_ = i9;
        reportPropertyChange("motionFaceIndex_", Integer.valueOf(i9));
    }

    public void setShowUserHead(boolean z10) {
        this.showUserHead = z10;
        reportPropertyChange("showUserHead", Boolean.valueOf(z10));
    }

    public void setStopNormalUpdate(boolean z10) {
        this.stopNormalUpdate = z10;
        reportPropertyChange("stopNormalUpdate", Boolean.valueOf(z10));
    }

    public void setStopVertexUpdate(boolean z10) {
        this.stopVertexUpdate = z10;
        reportPropertyChange("stopVertexUpdate", Boolean.valueOf(z10));
    }

    public void setUse3DMMHead(int i9) {
        this.use3DMMHead = i9;
        reportPropertyChange("use3DMMHead", Integer.valueOf(i9));
    }

    public void setUseCustom3DHead(boolean z10) {
        this.useCustom3DHead = z10;
        reportPropertyChange("useCustom3DHead", Boolean.valueOf(z10));
    }

    @Override // org.light.lightAssetKit.components.Component, org.light.lightAssetKit.ComponentBase
    public String type() {
        return "Face3DComponent";
    }
}
