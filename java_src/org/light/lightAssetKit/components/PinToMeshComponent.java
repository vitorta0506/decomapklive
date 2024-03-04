package org.light.lightAssetKit.components;

import org.light.lightAssetKit.ComponentBase;
/* loaded from: classes7.dex */
public class PinToMeshComponent extends Component {
    private int pinToEntityId = 1;
    private int pinPointVertexIndex = 1;
    private int pinDirectionVertexIndex = 1;
    private int pinTriangleVertexIndex = 1;

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // org.light.lightAssetKit.components.Component, org.light.lightAssetKit.ComponentBase
    public void doUpdate(ComponentBase componentBase) {
        if (componentBase instanceof PinToMeshComponent) {
            PinToMeshComponent pinToMeshComponent = (PinToMeshComponent) componentBase;
            this.pinToEntityId = pinToMeshComponent.pinToEntityId;
            this.pinPointVertexIndex = pinToMeshComponent.pinPointVertexIndex;
            this.pinDirectionVertexIndex = pinToMeshComponent.pinDirectionVertexIndex;
            this.pinTriangleVertexIndex = pinToMeshComponent.pinTriangleVertexIndex;
        }
        super.doUpdate(componentBase);
    }

    public int getPinDirectionVertexIndex() {
        return this.pinDirectionVertexIndex;
    }

    public int getPinPointVertexIndex() {
        return this.pinPointVertexIndex;
    }

    public int getPinToEntityId() {
        return this.pinToEntityId;
    }

    public int getPinTriangleVertexIndex() {
        return this.pinTriangleVertexIndex;
    }

    public void setPinDirectionVertexIndex(int i9) {
        this.pinDirectionVertexIndex = i9;
        reportPropertyChange("pinDirectionVertexIndex", Integer.valueOf(i9));
    }

    public void setPinPointVertexIndex(int i9) {
        this.pinPointVertexIndex = i9;
        reportPropertyChange("pinPointVertexIndex", Integer.valueOf(i9));
    }

    public void setPinToEntityId(int i9) {
        this.pinToEntityId = i9;
        reportPropertyChange("pinToEntityId", Integer.valueOf(i9));
    }

    public void setPinTriangleVertexIndex(int i9) {
        this.pinTriangleVertexIndex = i9;
        reportPropertyChange("pinTriangleVertexIndex", Integer.valueOf(i9));
    }

    @Override // org.light.lightAssetKit.components.Component, org.light.lightAssetKit.ComponentBase
    public String type() {
        return "PinToMeshComponent";
    }
}
