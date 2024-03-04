package org.light.lightAssetKit.components;

import java.util.ArrayList;
import org.light.lightAssetKit.ComponentBase;
/* loaded from: classes7.dex */
public class ExpressionTransfer extends Component {
    private float cropY;
    private int driveType;
    private String driveVideoPath;
    private int imageType;
    private ArrayList<String> inputResources;
    private boolean isEffectEnable;
    private String originImagePath;
    private String resourcePath;
    private String userSelectImagePath;

    public ExpressionTransfer() {
        this.resourcePath = "";
        this.inputResources = new ArrayList<>();
        this.originImagePath = "";
        this.userSelectImagePath = "";
        this.driveVideoPath = "";
        this.cropY = 0.5f;
        this.isEffectEnable = false;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // org.light.lightAssetKit.components.Component, org.light.lightAssetKit.ComponentBase
    public void doUpdate(ComponentBase componentBase) {
        if (componentBase instanceof ExpressionTransfer) {
            ExpressionTransfer expressionTransfer = (ExpressionTransfer) componentBase;
            this.resourcePath = expressionTransfer.resourcePath;
            this.inputResources = expressionTransfer.inputResources;
            this.imageType = expressionTransfer.imageType;
            this.originImagePath = expressionTransfer.originImagePath;
            this.userSelectImagePath = expressionTransfer.userSelectImagePath;
            this.driveType = expressionTransfer.driveType;
            this.driveVideoPath = expressionTransfer.driveVideoPath;
            this.cropY = expressionTransfer.cropY;
            this.isEffectEnable = expressionTransfer.isEffectEnable;
        }
        super.doUpdate(componentBase);
    }

    public float getCropY() {
        return this.cropY;
    }

    public int getDriveType() {
        return this.driveType;
    }

    public String getDriveVideoPath() {
        return this.driveVideoPath;
    }

    public int getImageType() {
        return this.imageType;
    }

    public ArrayList<String> getInputResources() {
        return this.inputResources;
    }

    public boolean getIsEffectEnable() {
        return this.isEffectEnable;
    }

    public String getOriginImagePath() {
        return this.originImagePath;
    }

    public String getResourcePath() {
        return this.resourcePath;
    }

    public String getUserSelectImagePath() {
        return this.userSelectImagePath;
    }

    public void setCropY(float f10) {
        this.cropY = f10;
        reportPropertyChange("cropY", Float.valueOf(f10));
    }

    public void setDriveType(int i9) {
        this.driveType = i9;
        reportPropertyChange("driveType", Integer.valueOf(i9));
    }

    public void setDriveVideoPath(String str) {
        this.driveVideoPath = str;
        reportPropertyChange("driveVideoPath", str);
    }

    public void setImageType(int i9) {
        this.imageType = i9;
        reportPropertyChange("imageType", Integer.valueOf(i9));
    }

    public void setInputResources(ArrayList<String> arrayList) {
        this.inputResources = arrayList;
        reportPropertyChange("inputResources", arrayList);
    }

    public void setIsEffectEnable(boolean z10) {
        this.isEffectEnable = z10;
        reportPropertyChange("isEffectEnable", Boolean.valueOf(z10));
    }

    public void setOriginImagePath(String str) {
        this.originImagePath = str;
        reportPropertyChange("originImagePath", str);
    }

    public void setResourcePath(String str) {
        this.resourcePath = str;
        reportPropertyChange("resourcePath", str);
    }

    public void setUserSelectImagePath(String str) {
        this.userSelectImagePath = str;
        reportPropertyChange("userSelectImagePath", str);
    }

    @Override // org.light.lightAssetKit.components.Component, org.light.lightAssetKit.ComponentBase
    public String type() {
        return "ExpressionTransfer";
    }

    public ExpressionTransfer(String str) {
        this.resourcePath = "";
        this.inputResources = new ArrayList<>();
        this.originImagePath = "";
        this.userSelectImagePath = "";
        this.driveVideoPath = "";
        this.cropY = 0.5f;
        this.isEffectEnable = false;
        this.resourcePath = str;
    }
}
