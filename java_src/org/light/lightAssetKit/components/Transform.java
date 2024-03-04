package org.light.lightAssetKit.components;

import androidx.constraintlayout.motion.widget.Key;
import org.light.lightAssetKit.ComponentBase;
/* loaded from: classes7.dex */
public class Transform extends Component {
    private Position anchor;
    private Position position;
    private float rotation;
    private Size size;
    private boolean visible;

    public Transform() {
        this.anchor = new Position();
        this.position = new Position();
        this.size = new Size();
        this.rotation = 0.0f;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // org.light.lightAssetKit.components.Component, org.light.lightAssetKit.ComponentBase
    public void doUpdate(ComponentBase componentBase) {
        if (componentBase instanceof Transform) {
            Transform transform = (Transform) componentBase;
            this.anchor = transform.anchor;
            this.position = transform.position;
            this.size = transform.size;
            this.rotation = transform.rotation;
            this.visible = transform.visible;
        }
        super.doUpdate(componentBase);
    }

    public Position getAnchor() {
        return this.anchor;
    }

    public Position getPosition() {
        return this.position;
    }

    public float getRotation() {
        return this.rotation;
    }

    public Size getSize() {
        return this.size;
    }

    public boolean getVisible() {
        return this.visible;
    }

    public void setAnchor(Position position) {
        this.anchor = position;
        reportPropertyChange("anchor", position);
    }

    public void setPosition(Position position) {
        this.position = position;
        reportPropertyChange("position", position);
    }

    public void setRotation(float f10) {
        this.rotation = f10;
        reportPropertyChange(Key.ROTATION, Float.valueOf(f10));
    }

    public void setSize(Size size) {
        this.size = size;
        reportPropertyChange("size", size);
    }

    public void setVisible(boolean z10) {
        this.visible = z10;
        reportPropertyChange("visible", Boolean.valueOf(z10));
    }

    @Override // org.light.lightAssetKit.components.Component, org.light.lightAssetKit.ComponentBase
    public String type() {
        return "Transform";
    }

    public Transform(Position position, Position position2, Size size, float f10, boolean z10) {
        this.anchor = new Position();
        this.position = new Position();
        new Size();
        this.anchor = position;
        this.position = position2;
        this.size = size;
        this.rotation = f10;
        this.visible = z10;
    }
}
