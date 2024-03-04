package org.light.lightAssetKit.components;

import java.util.HashMap;
import org.light.lightAssetKit.ComponentBase;
import org.light.lightAssetKit.enums.ModelMoveType;
/* loaded from: classes7.dex */
public class BodyDriving3D extends Component {
    private boolean enableBlockByBody;
    private boolean enableTranslateXY;
    private boolean enableTranslateZ;
    private int groundPlaneEntityId;
    private String halfBodyMode = "FullBodyMode";
    private boolean enableHandMode = false;
    private HashMap<String, Boolean> trackingBones = new HashMap<>();
    private ModelMoveType modelMoveType = ModelMoveType.FollowUser;
    private Vec3 offsetXYZ = new Vec3(0.0f, 0.0f, 0.0f);
    private boolean enableContactGround = false;

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // org.light.lightAssetKit.components.Component, org.light.lightAssetKit.ComponentBase
    public void doUpdate(ComponentBase componentBase) {
        if (componentBase instanceof BodyDriving3D) {
            BodyDriving3D bodyDriving3D = (BodyDriving3D) componentBase;
            this.halfBodyMode = bodyDriving3D.halfBodyMode;
            this.enableHandMode = bodyDriving3D.enableHandMode;
            this.trackingBones = bodyDriving3D.trackingBones;
            this.modelMoveType = bodyDriving3D.modelMoveType;
            this.offsetXYZ = bodyDriving3D.offsetXYZ;
            this.enableTranslateXY = bodyDriving3D.enableTranslateXY;
            this.enableTranslateZ = bodyDriving3D.enableTranslateZ;
            this.enableBlockByBody = bodyDriving3D.enableBlockByBody;
            this.enableContactGround = bodyDriving3D.enableContactGround;
            this.groundPlaneEntityId = bodyDriving3D.groundPlaneEntityId;
        }
        super.doUpdate(componentBase);
    }

    public boolean getEnableBlockByBody() {
        return this.enableBlockByBody;
    }

    public boolean getEnableContactGround() {
        return this.enableContactGround;
    }

    public boolean getEnableHandMode() {
        return this.enableHandMode;
    }

    public boolean getEnableTranslateXY() {
        return this.enableTranslateXY;
    }

    public boolean getEnableTranslateZ() {
        return this.enableTranslateZ;
    }

    public int getGroundPlaneEntityId() {
        return this.groundPlaneEntityId;
    }

    public String getHalfBodyMode() {
        return this.halfBodyMode;
    }

    public ModelMoveType getModelMoveType() {
        return this.modelMoveType;
    }

    public Vec3 getOffsetXYZ() {
        return this.offsetXYZ;
    }

    public HashMap<String, Boolean> getTrackingBones() {
        return this.trackingBones;
    }

    public void setEnableBlockByBody(boolean z10) {
        this.enableBlockByBody = z10;
        reportPropertyChange("enableBlockByBody", Boolean.valueOf(z10));
    }

    public void setEnableContactGround(boolean z10) {
        this.enableContactGround = z10;
        reportPropertyChange("enableContactGround", Boolean.valueOf(z10));
    }

    public void setEnableHandMode(boolean z10) {
        this.enableHandMode = z10;
        reportPropertyChange("enableHandMode", Boolean.valueOf(z10));
    }

    public void setEnableTranslateXY(boolean z10) {
        this.enableTranslateXY = z10;
        reportPropertyChange("enableTranslateXY", Boolean.valueOf(z10));
    }

    public void setEnableTranslateZ(boolean z10) {
        this.enableTranslateZ = z10;
        reportPropertyChange("enableTranslateZ", Boolean.valueOf(z10));
    }

    public void setGroundPlaneEntityId(int i9) {
        this.groundPlaneEntityId = i9;
        reportPropertyChange("groundPlaneEntityId", Integer.valueOf(i9));
    }

    public void setHalfBodyMode(String str) {
        this.halfBodyMode = str;
        reportPropertyChange("halfBodyMode", str);
    }

    public void setModelMoveType(ModelMoveType modelMoveType) {
        this.modelMoveType = modelMoveType;
        reportPropertyChange("modelMoveType", modelMoveType);
    }

    public void setOffsetXYZ(Vec3 vec3) {
        this.offsetXYZ = vec3;
        reportPropertyChange("offsetXYZ", vec3);
    }

    public void setTrackingBones(HashMap<String, Boolean> hashMap) {
        this.trackingBones = hashMap;
        reportPropertyChange("trackingBones", hashMap);
    }

    @Override // org.light.lightAssetKit.components.Component, org.light.lightAssetKit.ComponentBase
    public String type() {
        return "BodyDriving3D";
    }
}
