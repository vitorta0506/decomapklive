package org.light.lightAssetKit.components;

import org.light.lightAssetKit.ComponentBase;
/* loaded from: classes7.dex */
public class BGMHiddenComponent extends Component {
    private boolean hidden = true;

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // org.light.lightAssetKit.components.Component, org.light.lightAssetKit.ComponentBase
    public void doUpdate(ComponentBase componentBase) {
        if (componentBase instanceof BGMHiddenComponent) {
            this.hidden = ((BGMHiddenComponent) componentBase).hidden;
        }
        super.doUpdate(componentBase);
    }

    public boolean getHidden() {
        return this.hidden;
    }

    public void setHidden(boolean z10) {
        this.hidden = z10;
        reportPropertyChange("hidden", Boolean.valueOf(z10));
    }

    @Override // org.light.lightAssetKit.components.Component, org.light.lightAssetKit.ComponentBase
    public String type() {
        return "BGMHiddenComponent";
    }
}
