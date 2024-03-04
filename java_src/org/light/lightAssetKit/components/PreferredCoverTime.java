package org.light.lightAssetKit.components;

import org.light.lightAssetKit.ComponentBase;
/* loaded from: classes7.dex */
public class PreferredCoverTime extends Component {
    private int coverTime;

    public PreferredCoverTime() {
        this.coverTime = 0;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // org.light.lightAssetKit.components.Component, org.light.lightAssetKit.ComponentBase
    public void doUpdate(ComponentBase componentBase) {
        if (componentBase instanceof PreferredCoverTime) {
            this.coverTime = ((PreferredCoverTime) componentBase).coverTime;
        }
        super.doUpdate(componentBase);
    }

    public int getCoverTime() {
        return this.coverTime;
    }

    public void setCoverTime(int i9) {
        this.coverTime = i9;
        reportPropertyChange("coverTime", Integer.valueOf(i9));
    }

    @Override // org.light.lightAssetKit.components.Component, org.light.lightAssetKit.ComponentBase
    public String type() {
        return "PreferredCoverTime";
    }

    public PreferredCoverTime(int i9) {
        this.coverTime = i9;
    }
}
