package org.light.lightAssetKit.components;

import org.light.lightAssetKit.ComponentBase;
/* loaded from: classes7.dex */
public class Component extends ComponentBase {
    private boolean enabled = true;
    private boolean needReload = true;
    private boolean paused = false;
    private int componentID = 0;
    private int entityId = 0;

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // org.light.lightAssetKit.ComponentBase
    public void doUpdate(ComponentBase componentBase) {
        if (componentBase instanceof Component) {
            Component component = (Component) componentBase;
            this.enabled = component.enabled;
            this.needReload = component.needReload;
            this.paused = component.paused;
            this.componentID = component.componentID;
            this.entityId = component.entityId;
        }
        super.doUpdate(componentBase);
    }

    public int getComponentID() {
        return this.componentID;
    }

    public boolean getEnabled() {
        return this.enabled;
    }

    public int getEntityId() {
        return this.entityId;
    }

    public boolean getNeedReload() {
        return this.needReload;
    }

    public boolean getPaused() {
        return this.paused;
    }

    public void setComponentID(int i9) {
        this.componentID = i9;
        reportPropertyChange("componentID", Integer.valueOf(i9));
    }

    public void setEnabled(boolean z10) {
        this.enabled = z10;
        reportPropertyChange("enabled", Boolean.valueOf(z10));
    }

    public void setEntityId(int i9) {
        this.entityId = i9;
        reportPropertyChange("entityId", Integer.valueOf(i9));
    }

    public void setNeedReload(boolean z10) {
        this.needReload = z10;
        reportPropertyChange("needReload", Boolean.valueOf(z10));
    }

    public void setPaused(boolean z10) {
        this.paused = z10;
        reportPropertyChange("paused", Boolean.valueOf(z10));
    }

    @Override // org.light.lightAssetKit.ComponentBase
    public String type() {
        return "Component";
    }
}
