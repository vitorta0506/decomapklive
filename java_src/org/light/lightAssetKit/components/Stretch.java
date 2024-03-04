package org.light.lightAssetKit.components;

import org.light.lightAssetKit.ComponentBase;
/* loaded from: classes7.dex */
public class Stretch extends Component {
    private float basicFace = 0.0f;
    private float vFace = 0.0f;
    private float chin = 0.0f;
    private float thinFace = 0.0f;
    private float shortFace = 0.0f;
    private float cheekboneThin = 0.0f;
    private float enlargeEye = 0.0f;
    private float noseSize = 0.0f;
    private float foreHead = 0.0f;
    private float eyeDistance = 0.0f;
    private float eyeAngle = 0.0f;
    private float noseWing = 0.0f;
    private float noseHeight = 0.0f;
    private float mouthSize = 0.0f;
    private float mouthWidth = 0.0f;
    private float mouthHeight = 0.0f;
    private float mouthPosition = 0.0f;

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // org.light.lightAssetKit.components.Component, org.light.lightAssetKit.ComponentBase
    public void doUpdate(ComponentBase componentBase) {
        if (componentBase instanceof Stretch) {
            Stretch stretch = (Stretch) componentBase;
            this.basicFace = stretch.basicFace;
            this.vFace = stretch.vFace;
            this.chin = stretch.chin;
            this.thinFace = stretch.thinFace;
            this.shortFace = stretch.shortFace;
            this.cheekboneThin = stretch.cheekboneThin;
            this.enlargeEye = stretch.enlargeEye;
            this.noseSize = stretch.noseSize;
            this.foreHead = stretch.foreHead;
            this.eyeDistance = stretch.eyeDistance;
            this.eyeAngle = stretch.eyeAngle;
            this.noseWing = stretch.noseWing;
            this.noseHeight = stretch.noseHeight;
            this.mouthSize = stretch.mouthSize;
            this.mouthWidth = stretch.mouthWidth;
            this.mouthHeight = stretch.mouthHeight;
            this.mouthPosition = stretch.mouthPosition;
        }
        super.doUpdate(componentBase);
    }

    public float getBasicFace() {
        return this.basicFace;
    }

    public float getCheekboneThin() {
        return this.cheekboneThin;
    }

    public float getChin() {
        return this.chin;
    }

    public float getEnlargeEye() {
        return this.enlargeEye;
    }

    public float getEyeAngle() {
        return this.eyeAngle;
    }

    public float getEyeDistance() {
        return this.eyeDistance;
    }

    public float getForeHead() {
        return this.foreHead;
    }

    public float getMouthHeight() {
        return this.mouthHeight;
    }

    public float getMouthPosition() {
        return this.mouthPosition;
    }

    public float getMouthSize() {
        return this.mouthSize;
    }

    public float getMouthWidth() {
        return this.mouthWidth;
    }

    public float getNoseHeight() {
        return this.noseHeight;
    }

    public float getNoseSize() {
        return this.noseSize;
    }

    public float getNoseWing() {
        return this.noseWing;
    }

    public float getShortFace() {
        return this.shortFace;
    }

    public float getThinFace() {
        return this.thinFace;
    }

    public float getVFace() {
        return this.vFace;
    }

    public void setBasicFace(float f10) {
        this.basicFace = f10;
        reportPropertyChange("basicFace", Float.valueOf(f10));
    }

    public void setCheekboneThin(float f10) {
        this.cheekboneThin = f10;
        reportPropertyChange("cheekboneThin", Float.valueOf(f10));
    }

    public void setChin(float f10) {
        this.chin = f10;
        reportPropertyChange("chin", Float.valueOf(f10));
    }

    public void setEnlargeEye(float f10) {
        this.enlargeEye = f10;
        reportPropertyChange("enlargeEye", Float.valueOf(f10));
    }

    public void setEyeAngle(float f10) {
        this.eyeAngle = f10;
        reportPropertyChange("eyeAngle", Float.valueOf(f10));
    }

    public void setEyeDistance(float f10) {
        this.eyeDistance = f10;
        reportPropertyChange("eyeDistance", Float.valueOf(f10));
    }

    public void setForeHead(float f10) {
        this.foreHead = f10;
        reportPropertyChange("foreHead", Float.valueOf(f10));
    }

    public void setMouthHeight(float f10) {
        this.mouthHeight = f10;
        reportPropertyChange("mouthHeight", Float.valueOf(f10));
    }

    public void setMouthPosition(float f10) {
        this.mouthPosition = f10;
        reportPropertyChange("mouthPosition", Float.valueOf(f10));
    }

    public void setMouthSize(float f10) {
        this.mouthSize = f10;
        reportPropertyChange("mouthSize", Float.valueOf(f10));
    }

    public void setMouthWidth(float f10) {
        this.mouthWidth = f10;
        reportPropertyChange("mouthWidth", Float.valueOf(f10));
    }

    public void setNoseHeight(float f10) {
        this.noseHeight = f10;
        reportPropertyChange("noseHeight", Float.valueOf(f10));
    }

    public void setNoseSize(float f10) {
        this.noseSize = f10;
        reportPropertyChange("noseSize", Float.valueOf(f10));
    }

    public void setNoseWing(float f10) {
        this.noseWing = f10;
        reportPropertyChange("noseWing", Float.valueOf(f10));
    }

    public void setShortFace(float f10) {
        this.shortFace = f10;
        reportPropertyChange("shortFace", Float.valueOf(f10));
    }

    public void setThinFace(float f10) {
        this.thinFace = f10;
        reportPropertyChange("thinFace", Float.valueOf(f10));
    }

    public void setVFace(float f10) {
        this.vFace = f10;
        reportPropertyChange("vFace", Float.valueOf(f10));
    }

    @Override // org.light.lightAssetKit.components.Component, org.light.lightAssetKit.ComponentBase
    public String type() {
        return "Stretch";
    }
}
