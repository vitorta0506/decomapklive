package org.light.lightAssetKit.components;

import org.light.lightAssetKit.ComponentBase;
/* loaded from: classes7.dex */
public class SnapOneShot extends Component {
    private int last_dt;
    private String outTextureId;
    private boolean triggered;

    public SnapOneShot() {
        this.outTextureId = "";
        this.triggered = false;
        this.last_dt = Integer.MAX_VALUE;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // org.light.lightAssetKit.components.Component, org.light.lightAssetKit.ComponentBase
    public void doUpdate(ComponentBase componentBase) {
        if (componentBase instanceof SnapOneShot) {
            SnapOneShot snapOneShot = (SnapOneShot) componentBase;
            this.outTextureId = snapOneShot.outTextureId;
            this.triggered = snapOneShot.triggered;
            this.last_dt = snapOneShot.last_dt;
        }
        super.doUpdate(componentBase);
    }

    public int getLast_dt() {
        return this.last_dt;
    }

    public String getOutTextureId() {
        return this.outTextureId;
    }

    public boolean getTriggered() {
        return this.triggered;
    }

    public void setLast_dt(int i9) {
        this.last_dt = i9;
        reportPropertyChange("last_dt", Integer.valueOf(i9));
    }

    public void setOutTextureId(String str) {
        this.outTextureId = str;
        reportPropertyChange("outTextureId", str);
    }

    public void setTriggered(boolean z10) {
        this.triggered = z10;
        reportPropertyChange("triggered", Boolean.valueOf(z10));
    }

    @Override // org.light.lightAssetKit.components.Component, org.light.lightAssetKit.ComponentBase
    public String type() {
        return "SnapOneShot";
    }

    public SnapOneShot(String str, boolean z10, int i9) {
        this.outTextureId = str;
        this.triggered = z10;
        this.last_dt = i9;
    }
}
