package org.light.lightAssetKit.components;

import com.huawei.hms.push.constant.RemoteMessageConst;
import java.util.ArrayList;
import org.light.lightAssetKit.ComponentBase;
/* loaded from: classes7.dex */
public class MeshRenderer3DComponentV2 extends Component {
    private boolean receiveShadow = true;
    private boolean castShadow = true;
    private int priority = 4;
    private boolean frustumCulling = true;
    private String meshName = "";
    private int meshIndex = -1;
    private boolean skinned = false;
    private ArrayList<PrimitiveConfigV2> primitiveConfigs = new ArrayList<>();

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // org.light.lightAssetKit.components.Component, org.light.lightAssetKit.ComponentBase
    public void doUpdate(ComponentBase componentBase) {
        if (componentBase instanceof MeshRenderer3DComponentV2) {
            MeshRenderer3DComponentV2 meshRenderer3DComponentV2 = (MeshRenderer3DComponentV2) componentBase;
            this.receiveShadow = meshRenderer3DComponentV2.receiveShadow;
            this.castShadow = meshRenderer3DComponentV2.castShadow;
            this.priority = meshRenderer3DComponentV2.priority;
            this.frustumCulling = meshRenderer3DComponentV2.frustumCulling;
            this.meshName = meshRenderer3DComponentV2.meshName;
            this.meshIndex = meshRenderer3DComponentV2.meshIndex;
            this.skinned = meshRenderer3DComponentV2.skinned;
            this.primitiveConfigs = meshRenderer3DComponentV2.primitiveConfigs;
        }
        super.doUpdate(componentBase);
    }

    public boolean getCastShadow() {
        return this.castShadow;
    }

    public boolean getFrustumCulling() {
        return this.frustumCulling;
    }

    public int getMeshIndex() {
        return this.meshIndex;
    }

    public String getMeshName() {
        return this.meshName;
    }

    public ArrayList<PrimitiveConfigV2> getPrimitiveConfigs() {
        return this.primitiveConfigs;
    }

    public int getPriority() {
        return this.priority;
    }

    public boolean getReceiveShadow() {
        return this.receiveShadow;
    }

    public boolean getSkinned() {
        return this.skinned;
    }

    public void setCastShadow(boolean z10) {
        this.castShadow = z10;
        reportPropertyChange("castShadow", Boolean.valueOf(z10));
    }

    public void setFrustumCulling(boolean z10) {
        this.frustumCulling = z10;
        reportPropertyChange("frustumCulling", Boolean.valueOf(z10));
    }

    public void setMeshIndex(int i9) {
        this.meshIndex = i9;
        reportPropertyChange("meshIndex", Integer.valueOf(i9));
    }

    public void setMeshName(String str) {
        this.meshName = str;
        reportPropertyChange("meshName", str);
    }

    public void setPrimitiveConfigs(ArrayList<PrimitiveConfigV2> arrayList) {
        this.primitiveConfigs = arrayList;
        reportPropertyChange("primitiveConfigs", arrayList);
    }

    public void setPriority(int i9) {
        this.priority = i9;
        reportPropertyChange(RemoteMessageConst.Notification.PRIORITY, Integer.valueOf(i9));
    }

    public void setReceiveShadow(boolean z10) {
        this.receiveShadow = z10;
        reportPropertyChange("receiveShadow", Boolean.valueOf(z10));
    }

    public void setSkinned(boolean z10) {
        this.skinned = z10;
        reportPropertyChange("skinned", Boolean.valueOf(z10));
    }

    @Override // org.light.lightAssetKit.components.Component, org.light.lightAssetKit.ComponentBase
    public String type() {
        return "MeshRenderer3DComponentV2";
    }
}
