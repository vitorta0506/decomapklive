package org.light.lightAssetKit.components;

import org.light.lightAssetKit.ComponentBase;
import org.light.lightAssetKit.enums.Camera3DFovType;
import org.light.lightAssetKit.enums.Camera3DProjectionType;
/* loaded from: classes7.dex */
public class MockingCamera3DComponent extends Component {
    private float far;
    private float fov;
    private Camera3DFovType fovType;
    private float near;
    private float orthographicSize;
    private Camera3DProjectionType projectionType;

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // org.light.lightAssetKit.components.Component, org.light.lightAssetKit.ComponentBase
    public void doUpdate(ComponentBase componentBase) {
        if (componentBase instanceof MockingCamera3DComponent) {
            MockingCamera3DComponent mockingCamera3DComponent = (MockingCamera3DComponent) componentBase;
            this.projectionType = mockingCamera3DComponent.projectionType;
            this.near = mockingCamera3DComponent.near;
            this.far = mockingCamera3DComponent.far;
            this.fovType = mockingCamera3DComponent.fovType;
            this.fov = mockingCamera3DComponent.fov;
            this.orthographicSize = mockingCamera3DComponent.orthographicSize;
        }
        super.doUpdate(componentBase);
    }

    public float getFar() {
        return this.far;
    }

    public float getFov() {
        return this.fov;
    }

    public Camera3DFovType getFovType() {
        return this.fovType;
    }

    public float getNear() {
        return this.near;
    }

    public float getOrthographicSize() {
        return this.orthographicSize;
    }

    public Camera3DProjectionType getProjectionType() {
        return this.projectionType;
    }

    public void setFar(float f10) {
        this.far = f10;
        reportPropertyChange("far", Float.valueOf(f10));
    }

    public void setFov(float f10) {
        this.fov = f10;
        reportPropertyChange("fov", Float.valueOf(f10));
    }

    public void setFovType(Camera3DFovType camera3DFovType) {
        this.fovType = camera3DFovType;
        reportPropertyChange("fovType", camera3DFovType);
    }

    public void setNear(float f10) {
        this.near = f10;
        reportPropertyChange("near", Float.valueOf(f10));
    }

    public void setOrthographicSize(float f10) {
        this.orthographicSize = f10;
        reportPropertyChange("orthographicSize", Float.valueOf(f10));
    }

    public void setProjectionType(Camera3DProjectionType camera3DProjectionType) {
        this.projectionType = camera3DProjectionType;
        reportPropertyChange("projectionType", camera3DProjectionType);
    }

    @Override // org.light.lightAssetKit.components.Component, org.light.lightAssetKit.ComponentBase
    public String type() {
        return "MockingCamera3DComponent";
    }
}
