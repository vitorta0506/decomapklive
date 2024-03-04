package org.light.lightAssetKit.components;

import java.util.ArrayList;
import org.light.lightAssetKit.ComponentBase;
/* loaded from: classes7.dex */
public class HandTracking extends TrackingComponent {
    private boolean isDetectSmooth = false;
    private ArrayList<Integer> handIndex = new ArrayList<>();

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // org.light.lightAssetKit.components.TrackingComponent, org.light.lightAssetKit.components.Component, org.light.lightAssetKit.ComponentBase
    public void doUpdate(ComponentBase componentBase) {
        if (componentBase instanceof HandTracking) {
            HandTracking handTracking = (HandTracking) componentBase;
            this.isDetectSmooth = handTracking.isDetectSmooth;
            this.handIndex = handTracking.handIndex;
        }
        super.doUpdate(componentBase);
    }

    public ArrayList<Integer> getHandIndex() {
        return this.handIndex;
    }

    public boolean getIsDetectSmooth() {
        return this.isDetectSmooth;
    }

    public void setHandIndex(ArrayList<Integer> arrayList) {
        this.handIndex = arrayList;
        reportPropertyChange("handIndex", arrayList);
    }

    public void setIsDetectSmooth(boolean z10) {
        this.isDetectSmooth = z10;
        reportPropertyChange("isDetectSmooth", Boolean.valueOf(z10));
    }

    @Override // org.light.lightAssetKit.components.TrackingComponent, org.light.lightAssetKit.components.Component, org.light.lightAssetKit.ComponentBase
    public String type() {
        return "HandTracking";
    }
}
