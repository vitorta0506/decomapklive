package org.light.lightAssetKit.components;

import org.light.lightAssetKit.ComponentBase;
import org.light.lightAssetKit.enums.TrackingMode;
/* loaded from: classes7.dex */
public class DeviceTrackingComponent extends Component {
    private TrackingMode trackingMode = TrackingMode.AR_TRACKER_SURFACE;
    private boolean autoPlace = true;

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // org.light.lightAssetKit.components.Component, org.light.lightAssetKit.ComponentBase
    public void doUpdate(ComponentBase componentBase) {
        if (componentBase instanceof DeviceTrackingComponent) {
            DeviceTrackingComponent deviceTrackingComponent = (DeviceTrackingComponent) componentBase;
            this.trackingMode = deviceTrackingComponent.trackingMode;
            this.autoPlace = deviceTrackingComponent.autoPlace;
        }
        super.doUpdate(componentBase);
    }

    public boolean getAutoPlace() {
        return this.autoPlace;
    }

    public TrackingMode getTrackingMode() {
        return this.trackingMode;
    }

    public void setAutoPlace(boolean z10) {
        this.autoPlace = z10;
        reportPropertyChange("autoPlace", Boolean.valueOf(z10));
    }

    public void setTrackingMode(TrackingMode trackingMode) {
        this.trackingMode = trackingMode;
        reportPropertyChange("trackingMode", trackingMode);
    }

    @Override // org.light.lightAssetKit.components.Component, org.light.lightAssetKit.ComponentBase
    public String type() {
        return "DeviceTrackingComponent";
    }
}
