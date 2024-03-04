package org.light.lightAssetKit.components;

import androidx.constraintlayout.motion.widget.Key;
import org.light.lightAssetKit.ComponentBase;
/* loaded from: classes7.dex */
public class BasicTransform extends Component {
    private Vec3 position = new Vec3(0.0f, 0.0f, 0.0f);
    private Quat rotation = new Quat(1.0f, 0.0f, 0.0f, 0.0f);
    private Vec3 scale = new Vec3(1.0f, 1.0f, 1.0f);
    private boolean objectEnabled = true;
    private boolean visible = true;
    private boolean skipUpdate = false;

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // org.light.lightAssetKit.components.Component, org.light.lightAssetKit.ComponentBase
    public void doUpdate(ComponentBase componentBase) {
        if (componentBase instanceof BasicTransform) {
            BasicTransform basicTransform = (BasicTransform) componentBase;
            this.position = basicTransform.position;
            this.rotation = basicTransform.rotation;
            this.scale = basicTransform.scale;
            this.objectEnabled = basicTransform.objectEnabled;
            this.visible = basicTransform.visible;
            this.skipUpdate = basicTransform.skipUpdate;
        }
        super.doUpdate(componentBase);
    }

    public boolean getObjectEnabled() {
        return this.objectEnabled;
    }

    public Vec3 getPosition() {
        return this.position;
    }

    public Quat getRotation() {
        return this.rotation;
    }

    public Vec3 getScale() {
        return this.scale;
    }

    public boolean getSkipUpdate() {
        return this.skipUpdate;
    }

    public boolean getVisible() {
        return this.visible;
    }

    public void setObjectEnabled(boolean z10) {
        this.objectEnabled = z10;
        reportPropertyChange("objectEnabled", Boolean.valueOf(z10));
    }

    public void setPosition(Vec3 vec3) {
        this.position = vec3;
        reportPropertyChange("position", vec3);
    }

    public void setRotation(Quat quat) {
        this.rotation = quat;
        reportPropertyChange(Key.ROTATION, quat);
    }

    public void setScale(Vec3 vec3) {
        this.scale = vec3;
        reportPropertyChange("scale", vec3);
    }

    public void setSkipUpdate(boolean z10) {
        this.skipUpdate = z10;
        reportPropertyChange("skipUpdate", Boolean.valueOf(z10));
    }

    public void setVisible(boolean z10) {
        this.visible = z10;
        reportPropertyChange("visible", Boolean.valueOf(z10));
    }

    @Override // org.light.lightAssetKit.components.Component, org.light.lightAssetKit.ComponentBase
    public String type() {
        return "BasicTransform";
    }
}
