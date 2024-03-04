package org.light.lightAssetKit.components;

import java.util.ArrayList;
import org.light.lightAssetKit.ComponentBase;
/* loaded from: classes7.dex */
public class LiquefactionV6 extends Component {
    private boolean editMode;
    private float enlargeeyeFactor;
    private ArrayList<LiquefactionParam> liquefactionParams;

    public LiquefactionV6() {
        this.liquefactionParams = new ArrayList<>();
        this.editMode = false;
        this.enlargeeyeFactor = 1.0f;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // org.light.lightAssetKit.components.Component, org.light.lightAssetKit.ComponentBase
    public void doUpdate(ComponentBase componentBase) {
        if (componentBase instanceof LiquefactionV6) {
            LiquefactionV6 liquefactionV6 = (LiquefactionV6) componentBase;
            this.liquefactionParams = liquefactionV6.liquefactionParams;
            this.editMode = liquefactionV6.editMode;
            this.enlargeeyeFactor = liquefactionV6.enlargeeyeFactor;
        }
        super.doUpdate(componentBase);
    }

    public boolean getEditMode() {
        return this.editMode;
    }

    public float getEnlargeeyeFactor() {
        return this.enlargeeyeFactor;
    }

    public ArrayList<LiquefactionParam> getLiquefactionParams() {
        return this.liquefactionParams;
    }

    public void setEditMode(boolean z10) {
        this.editMode = z10;
        reportPropertyChange("editMode", Boolean.valueOf(z10));
    }

    public void setEnlargeeyeFactor(float f10) {
        this.enlargeeyeFactor = f10;
        reportPropertyChange("enlargeeyeFactor", Float.valueOf(f10));
    }

    public void setLiquefactionParams(ArrayList<LiquefactionParam> arrayList) {
        this.liquefactionParams = arrayList;
        reportPropertyChange("liquefactionParams", arrayList);
    }

    @Override // org.light.lightAssetKit.components.Component, org.light.lightAssetKit.ComponentBase
    public String type() {
        return "LiquefactionV6";
    }

    public LiquefactionV6(ArrayList<LiquefactionParam> arrayList, boolean z10) {
        new ArrayList();
        this.enlargeeyeFactor = 1.0f;
        this.liquefactionParams = arrayList;
        this.editMode = z10;
    }
}
