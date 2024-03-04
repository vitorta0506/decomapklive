package org.light.lightAssetKit.components;

import org.light.lightAssetKit.ComponentBase;
import org.light.lightAssetKit.enums.Camera3DFovType;
import org.light.lightAssetKit.enums.Camera3DProjectionType;
import org.light.lightAssetKit.enums.Camera3DTargetBufferFlags;
/* loaded from: classes7.dex */
public class Camera3DComponent extends Component {
    private float far;
    private float fov;
    private Camera3DFovType fovType;
    private float near;
    private Camera3DProjectionType projectionType;
    private float size;
    private Camera3DTargetBufferFlags targetBufferFlags;
    private int layers = 1;
    private Rect viewportRect = new Rect(0.0f, 0.0f, 1.0f, 1.0f);
    private boolean copyInput = true;
    private String clearColor = "";
    private float clearDepth = 1.0f;
    private int clearStencil = 0;
    private boolean frustumCulling = true;
    private String renderTargetKey = "";
    private boolean is_use_3d_rt_ = false;
    private String output_3d_rendertarget_ = "";

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // org.light.lightAssetKit.components.Component, org.light.lightAssetKit.ComponentBase
    public void doUpdate(ComponentBase componentBase) {
        if (componentBase instanceof Camera3DComponent) {
            Camera3DComponent camera3DComponent = (Camera3DComponent) componentBase;
            this.layers = camera3DComponent.layers;
            this.projectionType = camera3DComponent.projectionType;
            this.fovType = camera3DComponent.fovType;
            this.fov = camera3DComponent.fov;
            this.size = camera3DComponent.size;
            this.near = camera3DComponent.near;
            this.far = camera3DComponent.far;
            this.viewportRect = camera3DComponent.viewportRect;
            this.copyInput = camera3DComponent.copyInput;
            this.targetBufferFlags = camera3DComponent.targetBufferFlags;
            this.clearColor = camera3DComponent.clearColor;
            this.clearDepth = camera3DComponent.clearDepth;
            this.clearStencil = camera3DComponent.clearStencil;
            this.frustumCulling = camera3DComponent.frustumCulling;
            this.renderTargetKey = camera3DComponent.renderTargetKey;
            this.is_use_3d_rt_ = camera3DComponent.is_use_3d_rt_;
            this.output_3d_rendertarget_ = camera3DComponent.output_3d_rendertarget_;
        }
        super.doUpdate(componentBase);
    }

    public String getClearColor() {
        return this.clearColor;
    }

    public float getClearDepth() {
        return this.clearDepth;
    }

    public int getClearStencil() {
        return this.clearStencil;
    }

    public boolean getCopyInput() {
        return this.copyInput;
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

    public boolean getFrustumCulling() {
        return this.frustumCulling;
    }

    public boolean getIs_use_3d_rt_() {
        return this.is_use_3d_rt_;
    }

    public int getLayers() {
        return this.layers;
    }

    public float getNear() {
        return this.near;
    }

    public String getOutput_3d_rendertarget_() {
        return this.output_3d_rendertarget_;
    }

    public Camera3DProjectionType getProjectionType() {
        return this.projectionType;
    }

    public String getRenderTargetKey() {
        return this.renderTargetKey;
    }

    public float getSize() {
        return this.size;
    }

    public Camera3DTargetBufferFlags getTargetBufferFlags() {
        return this.targetBufferFlags;
    }

    public Rect getViewportRect() {
        return this.viewportRect;
    }

    public void setClearColor(String str) {
        this.clearColor = str;
        reportPropertyChange("clearColor", str);
    }

    public void setClearDepth(float f10) {
        this.clearDepth = f10;
        reportPropertyChange("clearDepth", Float.valueOf(f10));
    }

    public void setClearStencil(int i9) {
        this.clearStencil = i9;
        reportPropertyChange("clearStencil", Integer.valueOf(i9));
    }

    public void setCopyInput(boolean z10) {
        this.copyInput = z10;
        reportPropertyChange("copyInput", Boolean.valueOf(z10));
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

    public void setFrustumCulling(boolean z10) {
        this.frustumCulling = z10;
        reportPropertyChange("frustumCulling", Boolean.valueOf(z10));
    }

    public void setIs_use_3d_rt_(boolean z10) {
        this.is_use_3d_rt_ = z10;
        reportPropertyChange("is_use_3d_rt_", Boolean.valueOf(z10));
    }

    public void setLayers(int i9) {
        this.layers = i9;
        reportPropertyChange("layers", Integer.valueOf(i9));
    }

    public void setNear(float f10) {
        this.near = f10;
        reportPropertyChange("near", Float.valueOf(f10));
    }

    public void setOutput_3d_rendertarget_(String str) {
        this.output_3d_rendertarget_ = str;
        reportPropertyChange("output_3d_rendertarget_", str);
    }

    public void setProjectionType(Camera3DProjectionType camera3DProjectionType) {
        this.projectionType = camera3DProjectionType;
        reportPropertyChange("projectionType", camera3DProjectionType);
    }

    public void setRenderTargetKey(String str) {
        this.renderTargetKey = str;
        reportPropertyChange("renderTargetKey", str);
    }

    public void setSize(float f10) {
        this.size = f10;
        reportPropertyChange("size", Float.valueOf(f10));
    }

    public void setTargetBufferFlags(Camera3DTargetBufferFlags camera3DTargetBufferFlags) {
        this.targetBufferFlags = camera3DTargetBufferFlags;
        reportPropertyChange("targetBufferFlags", camera3DTargetBufferFlags);
    }

    public void setViewportRect(Rect rect) {
        this.viewportRect = rect;
        reportPropertyChange("viewportRect", rect);
    }

    @Override // org.light.lightAssetKit.components.Component, org.light.lightAssetKit.ComponentBase
    public String type() {
        return "Camera3DComponent";
    }
}
