package org.light.lightAssetKit.components;

import org.light.lightAssetKit.ComponentBase;
/* loaded from: classes7.dex */
public class TouchComponent extends Component {
    private boolean enable;

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // org.light.lightAssetKit.components.Component, org.light.lightAssetKit.ComponentBase
    public void doUpdate(ComponentBase componentBase) {
        if (componentBase instanceof TouchComponent) {
            this.enable = ((TouchComponent) componentBase).enable;
        }
        super.doUpdate(componentBase);
    }

    public boolean getEnable() {
        return this.enable;
    }

    public void setEnable(boolean z10) {
        this.enable = z10;
        reportPropertyChange("enable", Boolean.valueOf(z10));
    }

    @Override // org.light.lightAssetKit.components.Component, org.light.lightAssetKit.ComponentBase
    public String type() {
        return "TouchComponent";
    }
}
