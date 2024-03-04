package org.light.lightAssetKit.components;

import org.light.lightAssetKit.ComponentBase;
/* loaded from: classes7.dex */
public class LayerSetComponent extends Component {
    private int layers = 1;

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // org.light.lightAssetKit.components.Component, org.light.lightAssetKit.ComponentBase
    public void doUpdate(ComponentBase componentBase) {
        if (componentBase instanceof LayerSetComponent) {
            this.layers = ((LayerSetComponent) componentBase).layers;
        }
        super.doUpdate(componentBase);
    }

    public int getLayers() {
        return this.layers;
    }

    public void setLayers(int i9) {
        this.layers = i9;
        reportPropertyChange("layers", Integer.valueOf(i9));
    }

    @Override // org.light.lightAssetKit.components.Component, org.light.lightAssetKit.ComponentBase
    public String type() {
        return "LayerSetComponent";
    }
}
