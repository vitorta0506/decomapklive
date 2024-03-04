package org.light.lightAssetKit.components;

import com.huawei.hms.push.constant.RemoteMessageConst;
import java.util.ArrayList;
import org.light.lightAssetKit.ComponentBase;
/* loaded from: classes7.dex */
public class MeshRenderer3DComponentV3 extends Component {
    private boolean receiveShadow = true;
    private boolean castShadow = true;
    private int priority = 4;
    private boolean frustumCulling = true;
    private String meshResourceKey = "";
    private ArrayList<SubMeshConfig> subMeshConfigs = new ArrayList<>();
    private String skinInfoResourceKey = "";

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // org.light.lightAssetKit.components.Component, org.light.lightAssetKit.ComponentBase
    public void doUpdate(ComponentBase componentBase) {
        if (componentBase instanceof MeshRenderer3DComponentV3) {
            MeshRenderer3DComponentV3 meshRenderer3DComponentV3 = (MeshRenderer3DComponentV3) componentBase;
            this.receiveShadow = meshRenderer3DComponentV3.receiveShadow;
            this.castShadow = meshRenderer3DComponentV3.castShadow;
            this.priority = meshRenderer3DComponentV3.priority;
            this.frustumCulling = meshRenderer3DComponentV3.frustumCulling;
            this.meshResourceKey = meshRenderer3DComponentV3.meshResourceKey;
            this.subMeshConfigs = meshRenderer3DComponentV3.subMeshConfigs;
            this.skinInfoResourceKey = meshRenderer3DComponentV3.skinInfoResourceKey;
        }
        super.doUpdate(componentBase);
    }

    public boolean getCastShadow() {
        return this.castShadow;
    }

    public boolean getFrustumCulling() {
        return this.frustumCulling;
    }

    public String getMeshResourceKey() {
        return this.meshResourceKey;
    }

    public int getPriority() {
        return this.priority;
    }

    public boolean getReceiveShadow() {
        return this.receiveShadow;
    }

    public String getSkinInfoResourceKey() {
        return this.skinInfoResourceKey;
    }

    public ArrayList<SubMeshConfig> getSubMeshConfigs() {
        return this.subMeshConfigs;
    }

    public void setCastShadow(boolean z10) {
        this.castShadow = z10;
        reportPropertyChange("castShadow", Boolean.valueOf(z10));
    }

    public void setFrustumCulling(boolean z10) {
        this.frustumCulling = z10;
        reportPropertyChange("frustumCulling", Boolean.valueOf(z10));
    }

    public void setMeshResourceKey(String str) {
        this.meshResourceKey = str;
        reportPropertyChange("meshResourceKey", str);
    }

    public void setPriority(int i9) {
        this.priority = i9;
        reportPropertyChange(RemoteMessageConst.Notification.PRIORITY, Integer.valueOf(i9));
    }

    public void setReceiveShadow(boolean z10) {
        this.receiveShadow = z10;
        reportPropertyChange("receiveShadow", Boolean.valueOf(z10));
    }

    public void setSkinInfoResourceKey(String str) {
        this.skinInfoResourceKey = str;
        reportPropertyChange("skinInfoResourceKey", str);
    }

    public void setSubMeshConfigs(ArrayList<SubMeshConfig> arrayList) {
        this.subMeshConfigs = arrayList;
        reportPropertyChange("subMeshConfigs", arrayList);
    }

    @Override // org.light.lightAssetKit.components.Component, org.light.lightAssetKit.ComponentBase
    public String type() {
        return "MeshRenderer3DComponentV3";
    }
}
