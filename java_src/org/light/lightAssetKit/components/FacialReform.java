package org.light.lightAssetKit.components;

import com.tencent.ugc.UGCTransitionRules;
import com.vk.api.sdk.exceptions.VKApiCodes;
import java.util.ArrayList;
import org.light.lightAssetKit.ComponentBase;
/* loaded from: classes7.dex */
public class FacialReform extends Component {
    private boolean stretchEnabled = false;
    private boolean pinchFaceEnabled = false;
    private float overallFactor = 0.0f;
    private float basicFace = 0.0f;
    private float vFace = 0.0f;
    private float chin = 0.0f;
    private float thinFace = 0.0f;
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
    private float facejaw = 0.0f;
    private float shortFace = 0.0f;
    private float longNose = 0.0f;
    private float basicFaceEyelarge = 0.0f;
    private ArrayList<PointItem> points = new ArrayList<>();
    private ArrayList<PointItem> lastPoints = new ArrayList<>();
    private float strength = 1.0f;
    private boolean symmetry = true;
    private boolean fixPoints = false;
    private boolean editMode = false;
    private int width = UGCTransitionRules.DEFAULT_IMAGE_WIDTH;
    private int height = VKApiCodes.CODE_CALL_REQUIRES_AUTH;
    private String reformSubType = "";

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // org.light.lightAssetKit.components.Component, org.light.lightAssetKit.ComponentBase
    public void doUpdate(ComponentBase componentBase) {
        if (componentBase instanceof FacialReform) {
            FacialReform facialReform = (FacialReform) componentBase;
            this.stretchEnabled = facialReform.stretchEnabled;
            this.pinchFaceEnabled = facialReform.pinchFaceEnabled;
            this.overallFactor = facialReform.overallFactor;
            this.basicFace = facialReform.basicFace;
            this.vFace = facialReform.vFace;
            this.chin = facialReform.chin;
            this.thinFace = facialReform.thinFace;
            this.cheekboneThin = facialReform.cheekboneThin;
            this.enlargeEye = facialReform.enlargeEye;
            this.noseSize = facialReform.noseSize;
            this.foreHead = facialReform.foreHead;
            this.eyeDistance = facialReform.eyeDistance;
            this.eyeAngle = facialReform.eyeAngle;
            this.noseWing = facialReform.noseWing;
            this.noseHeight = facialReform.noseHeight;
            this.mouthSize = facialReform.mouthSize;
            this.mouthWidth = facialReform.mouthWidth;
            this.mouthHeight = facialReform.mouthHeight;
            this.mouthPosition = facialReform.mouthPosition;
            this.facejaw = facialReform.facejaw;
            this.shortFace = facialReform.shortFace;
            this.longNose = facialReform.longNose;
            this.basicFaceEyelarge = facialReform.basicFaceEyelarge;
            this.points = facialReform.points;
            this.lastPoints = facialReform.lastPoints;
            this.strength = facialReform.strength;
            this.symmetry = facialReform.symmetry;
            this.fixPoints = facialReform.fixPoints;
            this.editMode = facialReform.editMode;
            this.width = facialReform.width;
            this.height = facialReform.height;
            this.reformSubType = facialReform.reformSubType;
        }
        super.doUpdate(componentBase);
    }

    public float getBasicFace() {
        return this.basicFace;
    }

    public float getBasicFaceEyelarge() {
        return this.basicFaceEyelarge;
    }

    public float getCheekboneThin() {
        return this.cheekboneThin;
    }

    public float getChin() {
        return this.chin;
    }

    public boolean getEditMode() {
        return this.editMode;
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

    public float getFacejaw() {
        return this.facejaw;
    }

    public boolean getFixPoints() {
        return this.fixPoints;
    }

    public float getForeHead() {
        return this.foreHead;
    }

    public int getHeight() {
        return this.height;
    }

    public ArrayList<PointItem> getLastPoints() {
        return this.lastPoints;
    }

    public float getLongNose() {
        return this.longNose;
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

    public float getOverallFactor() {
        return this.overallFactor;
    }

    public boolean getPinchFaceEnabled() {
        return this.pinchFaceEnabled;
    }

    public ArrayList<PointItem> getPoints() {
        return this.points;
    }

    public String getReformSubType() {
        return this.reformSubType;
    }

    public float getShortFace() {
        return this.shortFace;
    }

    public float getStrength() {
        return this.strength;
    }

    public boolean getStretchEnabled() {
        return this.stretchEnabled;
    }

    public boolean getSymmetry() {
        return this.symmetry;
    }

    public float getThinFace() {
        return this.thinFace;
    }

    public float getVFace() {
        return this.vFace;
    }

    public int getWidth() {
        return this.width;
    }

    public void setBasicFace(float f10) {
        this.basicFace = f10;
        reportPropertyChange("basicFace", Float.valueOf(f10));
    }

    public void setBasicFaceEyelarge(float f10) {
        this.basicFaceEyelarge = f10;
        reportPropertyChange("basicFaceEyelarge", Float.valueOf(f10));
    }

    public void setCheekboneThin(float f10) {
        this.cheekboneThin = f10;
        reportPropertyChange("cheekboneThin", Float.valueOf(f10));
    }

    public void setChin(float f10) {
        this.chin = f10;
        reportPropertyChange("chin", Float.valueOf(f10));
    }

    public void setEditMode(boolean z10) {
        this.editMode = z10;
        reportPropertyChange("editMode", Boolean.valueOf(z10));
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

    public void setFacejaw(float f10) {
        this.facejaw = f10;
        reportPropertyChange("facejaw", Float.valueOf(f10));
    }

    public void setFixPoints(boolean z10) {
        this.fixPoints = z10;
        reportPropertyChange("fixPoints", Boolean.valueOf(z10));
    }

    public void setForeHead(float f10) {
        this.foreHead = f10;
        reportPropertyChange("foreHead", Float.valueOf(f10));
    }

    public void setHeight(int i9) {
        this.height = i9;
        reportPropertyChange("height", Integer.valueOf(i9));
    }

    public void setLastPoints(ArrayList<PointItem> arrayList) {
        this.lastPoints = arrayList;
        reportPropertyChange("lastPoints", arrayList);
    }

    public void setLongNose(float f10) {
        this.longNose = f10;
        reportPropertyChange("longNose", Float.valueOf(f10));
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

    public void setOverallFactor(float f10) {
        this.overallFactor = f10;
        reportPropertyChange("overallFactor", Float.valueOf(f10));
    }

    public void setPinchFaceEnabled(boolean z10) {
        this.pinchFaceEnabled = z10;
        reportPropertyChange("pinchFaceEnabled", Boolean.valueOf(z10));
    }

    public void setPoints(ArrayList<PointItem> arrayList) {
        this.points = arrayList;
        reportPropertyChange("points", arrayList);
    }

    public void setReformSubType(String str) {
        this.reformSubType = str;
        reportPropertyChange("reformSubType", str);
    }

    public void setShortFace(float f10) {
        this.shortFace = f10;
        reportPropertyChange("shortFace", Float.valueOf(f10));
    }

    public void setStrength(float f10) {
        this.strength = f10;
        reportPropertyChange("strength", Float.valueOf(f10));
    }

    public void setStretchEnabled(boolean z10) {
        this.stretchEnabled = z10;
        reportPropertyChange("stretchEnabled", Boolean.valueOf(z10));
    }

    public void setSymmetry(boolean z10) {
        this.symmetry = z10;
        reportPropertyChange("symmetry", Boolean.valueOf(z10));
    }

    public void setThinFace(float f10) {
        this.thinFace = f10;
        reportPropertyChange("thinFace", Float.valueOf(f10));
    }

    public void setVFace(float f10) {
        this.vFace = f10;
        reportPropertyChange("vFace", Float.valueOf(f10));
    }

    public void setWidth(int i9) {
        this.width = i9;
        reportPropertyChange("width", Integer.valueOf(i9));
    }

    @Override // org.light.lightAssetKit.components.Component, org.light.lightAssetKit.ComponentBase
    public String type() {
        return "FacialReform";
    }
}
