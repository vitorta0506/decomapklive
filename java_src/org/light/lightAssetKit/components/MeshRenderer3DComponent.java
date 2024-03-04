package org.light.lightAssetKit.components;

import java.util.ArrayList;
import org.light.lightAssetKit.ComponentBase;
/* loaded from: classes7.dex */
public class MeshRenderer3DComponent extends Component {
    private String meshName = "";
    private int meshIndex = -1;
    private boolean skinned = false;
    private ArrayList<PrimitiveConfig> primitiveConfigs = new ArrayList<>();

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // org.light.lightAssetKit.components.Component, org.light.lightAssetKit.ComponentBase
    public void doUpdate(ComponentBase componentBase) {
        if (componentBase instanceof MeshRenderer3DComponent) {
            MeshRenderer3DComponent meshRenderer3DComponent = (MeshRenderer3DComponent) componentBase;
            this.meshName = meshRenderer3DComponent.meshName;
            this.meshIndex = meshRenderer3DComponent.meshIndex;
            this.skinned = meshRenderer3DComponent.skinned;
            this.primitiveConfigs = meshRenderer3DComponent.primitiveConfigs;
        }
        super.doUpdate(componentBase);
    }

    public int getMeshIndex() {
        return this.meshIndex;
    }

    public String getMeshName() {
        return this.meshName;
    }

    public ArrayList<PrimitiveConfig> getPrimitiveConfigs() {
        return this.primitiveConfigs;
    }

    public boolean getSkinned() {
        return this.skinned;
    }

    public void setMeshIndex(int i9) {
        this.meshIndex = i9;
        reportPropertyChange("meshIndex", Integer.valueOf(i9));
    }

    public void setMeshName(String str) {
        this.meshName = str;
        reportPropertyChange("meshName", str);
    }

    public void setPrimitiveConfigs(ArrayList<PrimitiveConfig> arrayList) {
        this.primitiveConfigs = arrayList;
        reportPropertyChange("primitiveConfigs", arrayList);
    }

    public void setSkinned(boolean z10) {
        this.skinned = z10;
        reportPropertyChange("skinned", Boolean.valueOf(z10));
    }

    @Override // org.light.lightAssetKit.components.Component, org.light.lightAssetKit.ComponentBase
    public String type() {
        return "MeshRenderer3DComponent";
    }
}
