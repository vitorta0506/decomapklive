package org.light.lightAssetKit.components;

import org.light.lightAssetKit.ComponentBase;
/* loaded from: classes7.dex */
public class TransitionTrigger extends Component {
    private int threshold;

    public TransitionTrigger() {
        this.threshold = 0;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // org.light.lightAssetKit.components.Component, org.light.lightAssetKit.ComponentBase
    public void doUpdate(ComponentBase componentBase) {
        if (componentBase instanceof TransitionTrigger) {
            this.threshold = ((TransitionTrigger) componentBase).threshold;
        }
        super.doUpdate(componentBase);
    }

    public int getThreshold() {
        return this.threshold;
    }

    public void setThreshold(int i9) {
        this.threshold = i9;
        reportPropertyChange("threshold", Integer.valueOf(i9));
    }

    @Override // org.light.lightAssetKit.components.Component, org.light.lightAssetKit.ComponentBase
    public String type() {
        return "TransitionTrigger";
    }

    public TransitionTrigger(int i9) {
        this.threshold = i9;
    }
}
