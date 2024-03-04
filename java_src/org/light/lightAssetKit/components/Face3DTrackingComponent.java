package org.light.lightAssetKit.components;

import org.light.lightAssetKit.ComponentBase;
/* loaded from: classes7.dex */
public class Face3DTrackingComponent extends Component {
    private int faceIndex = 0;

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // org.light.lightAssetKit.components.Component, org.light.lightAssetKit.ComponentBase
    public void doUpdate(ComponentBase componentBase) {
        if (componentBase instanceof Face3DTrackingComponent) {
            this.faceIndex = ((Face3DTrackingComponent) componentBase).faceIndex;
        }
        super.doUpdate(componentBase);
    }

    public int getFaceIndex() {
        return this.faceIndex;
    }

    public void setFaceIndex(int i9) {
        this.faceIndex = i9;
        reportPropertyChange("faceIndex", Integer.valueOf(i9));
    }

    @Override // org.light.lightAssetKit.components.Component, org.light.lightAssetKit.ComponentBase
    public String type() {
        return "Face3DTrackingComponent";
    }
}
