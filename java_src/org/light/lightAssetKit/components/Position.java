package org.light.lightAssetKit.components;

import com.guochao.faceshow.aaspring.modulars.live.common.x;
import org.light.lightAssetKit.ComponentBase;
/* loaded from: classes7.dex */
public class Position extends Component {

    /* renamed from: x  reason: collision with root package name */
    private float f56440x;

    /* renamed from: y  reason: collision with root package name */
    private float f56441y;

    /* renamed from: z  reason: collision with root package name */
    private float f56442z;

    public Position() {
        this.f56440x = 1.0f;
        this.f56441y = 1.0f;
        this.f56442z = 0.0f;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // org.light.lightAssetKit.components.Component, org.light.lightAssetKit.ComponentBase
    public void doUpdate(ComponentBase componentBase) {
        if (componentBase instanceof Position) {
            Position position = (Position) componentBase;
            this.f56440x = position.f56440x;
            this.f56441y = position.f56441y;
            this.f56442z = position.f56442z;
        }
        super.doUpdate(componentBase);
    }

    public float getX() {
        return this.f56440x;
    }

    public float getY() {
        return this.f56441y;
    }

    public float getZ() {
        return this.f56442z;
    }

    public void setX(float f10) {
        this.f56440x = f10;
        reportPropertyChange(x.f19108w, Float.valueOf(f10));
    }

    public void setY(float f10) {
        this.f56441y = f10;
        reportPropertyChange("y", Float.valueOf(f10));
    }

    public void setZ(float f10) {
        this.f56442z = f10;
        reportPropertyChange("z", Float.valueOf(f10));
    }

    @Override // org.light.lightAssetKit.components.Component, org.light.lightAssetKit.ComponentBase
    public String type() {
        return "Position";
    }

    public Position(float f10, float f11, float f12) {
        this.f56440x = f10;
        this.f56441y = f11;
        this.f56442z = f12;
    }
}
