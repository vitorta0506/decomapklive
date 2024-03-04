package org.light.lightAssetKit.components;

import com.tencent.ugc.UGCTransitionRules;
import com.vk.api.sdk.exceptions.VKApiCodes;
import java.util.ArrayList;
import org.light.lightAssetKit.ComponentBase;
/* loaded from: classes7.dex */
public class PinchFace extends Component {
    private ArrayList<PointItem> points = new ArrayList<>();
    private ArrayList<PointItem> lastPoints = new ArrayList<>();
    private float strength = 1.0f;
    private boolean symmetry = true;
    private boolean fixPoints = false;
    private boolean editMode = false;
    private int width = UGCTransitionRules.DEFAULT_IMAGE_WIDTH;
    private int height = VKApiCodes.CODE_CALL_REQUIRES_AUTH;

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // org.light.lightAssetKit.components.Component, org.light.lightAssetKit.ComponentBase
    public void doUpdate(ComponentBase componentBase) {
        if (componentBase instanceof PinchFace) {
            PinchFace pinchFace = (PinchFace) componentBase;
            this.points = pinchFace.points;
            this.lastPoints = pinchFace.lastPoints;
            this.strength = pinchFace.strength;
            this.symmetry = pinchFace.symmetry;
            this.fixPoints = pinchFace.fixPoints;
            this.editMode = pinchFace.editMode;
            this.width = pinchFace.width;
            this.height = pinchFace.height;
        }
        super.doUpdate(componentBase);
    }

    public boolean getEditMode() {
        return this.editMode;
    }

    public boolean getFixPoints() {
        return this.fixPoints;
    }

    public int getHeight() {
        return this.height;
    }

    public ArrayList<PointItem> getLastPoints() {
        return this.lastPoints;
    }

    public ArrayList<PointItem> getPoints() {
        return this.points;
    }

    public float getStrength() {
        return this.strength;
    }

    public boolean getSymmetry() {
        return this.symmetry;
    }

    public int getWidth() {
        return this.width;
    }

    public void setEditMode(boolean z10) {
        this.editMode = z10;
        reportPropertyChange("editMode", Boolean.valueOf(z10));
    }

    public void setFixPoints(boolean z10) {
        this.fixPoints = z10;
        reportPropertyChange("fixPoints", Boolean.valueOf(z10));
    }

    public void setHeight(int i9) {
        this.height = i9;
        reportPropertyChange("height", Integer.valueOf(i9));
    }

    public void setLastPoints(ArrayList<PointItem> arrayList) {
        this.lastPoints = arrayList;
        reportPropertyChange("lastPoints", arrayList);
    }

    public void setPoints(ArrayList<PointItem> arrayList) {
        this.points = arrayList;
        reportPropertyChange("points", arrayList);
    }

    public void setStrength(float f10) {
        this.strength = f10;
        reportPropertyChange("strength", Float.valueOf(f10));
    }

    public void setSymmetry(boolean z10) {
        this.symmetry = z10;
        reportPropertyChange("symmetry", Boolean.valueOf(z10));
    }

    public void setWidth(int i9) {
        this.width = i9;
        reportPropertyChange("width", Integer.valueOf(i9));
    }

    @Override // org.light.lightAssetKit.components.Component, org.light.lightAssetKit.ComponentBase
    public String type() {
        return "PinchFace";
    }
}
