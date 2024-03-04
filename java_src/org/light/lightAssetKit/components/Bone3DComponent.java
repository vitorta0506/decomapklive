package org.light.lightAssetKit.components;

import org.light.lightAssetKit.ComponentBase;
/* loaded from: classes7.dex */
public class Bone3DComponent extends Component {
    private int bone_uuid_ = 0;

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // org.light.lightAssetKit.components.Component, org.light.lightAssetKit.ComponentBase
    public void doUpdate(ComponentBase componentBase) {
        if (componentBase instanceof Bone3DComponent) {
            this.bone_uuid_ = ((Bone3DComponent) componentBase).bone_uuid_;
        }
        super.doUpdate(componentBase);
    }

    public int getBone_uuid_() {
        return this.bone_uuid_;
    }

    public void setBone_uuid_(int i9) {
        this.bone_uuid_ = i9;
        reportPropertyChange("bone_uuid_", Integer.valueOf(i9));
    }

    @Override // org.light.lightAssetKit.components.Component, org.light.lightAssetKit.ComponentBase
    public String type() {
        return "Bone3DComponent";
    }
}
