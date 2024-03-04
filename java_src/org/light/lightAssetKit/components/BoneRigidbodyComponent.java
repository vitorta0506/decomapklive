package org.light.lightAssetKit.components;

import com.huawei.hms.push.constant.RemoteMessageConst;
import org.light.lightAssetKit.ComponentBase;
/* loaded from: classes7.dex */
public class BoneRigidbodyComponent extends Component {
    private boolean enableParentConstraint;
    private int priority;

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // org.light.lightAssetKit.components.Component, org.light.lightAssetKit.ComponentBase
    public void doUpdate(ComponentBase componentBase) {
        if (componentBase instanceof BoneRigidbodyComponent) {
            BoneRigidbodyComponent boneRigidbodyComponent = (BoneRigidbodyComponent) componentBase;
            this.priority = boneRigidbodyComponent.priority;
            this.enableParentConstraint = boneRigidbodyComponent.enableParentConstraint;
        }
        super.doUpdate(componentBase);
    }

    public boolean getEnableParentConstraint() {
        return this.enableParentConstraint;
    }

    public int getPriority() {
        return this.priority;
    }

    public void setEnableParentConstraint(boolean z10) {
        this.enableParentConstraint = z10;
        reportPropertyChange("enableParentConstraint", Boolean.valueOf(z10));
    }

    public void setPriority(int i9) {
        this.priority = i9;
        reportPropertyChange(RemoteMessageConst.Notification.PRIORITY, Integer.valueOf(i9));
    }

    @Override // org.light.lightAssetKit.components.Component, org.light.lightAssetKit.ComponentBase
    public String type() {
        return "BoneRigidbodyComponent";
    }
}
