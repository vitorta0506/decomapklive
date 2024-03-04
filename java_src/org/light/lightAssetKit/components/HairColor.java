package org.light.lightAssetKit.components;

import java.util.ArrayList;
import org.light.lightAssetKit.ComponentBase;
/* loaded from: classes7.dex */
public class HairColor extends Component {
    private ArrayList<HairColorItem> effectList;
    private String hairMask;
    private String yyMaskImage;

    public HairColor() {
        this.effectList = new ArrayList<>();
        this.hairMask = "";
        this.yyMaskImage = "";
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // org.light.lightAssetKit.components.Component, org.light.lightAssetKit.ComponentBase
    public void doUpdate(ComponentBase componentBase) {
        if (componentBase instanceof HairColor) {
            HairColor hairColor = (HairColor) componentBase;
            this.effectList = hairColor.effectList;
            this.hairMask = hairColor.hairMask;
            this.yyMaskImage = hairColor.yyMaskImage;
        }
        super.doUpdate(componentBase);
    }

    public ArrayList<HairColorItem> getEffectList() {
        return this.effectList;
    }

    public String getHairMask() {
        return this.hairMask;
    }

    public String getYyMaskImage() {
        return this.yyMaskImage;
    }

    public void setEffectList(ArrayList<HairColorItem> arrayList) {
        this.effectList = arrayList;
        reportPropertyChange("effectList", arrayList);
    }

    public void setHairMask(String str) {
        this.hairMask = str;
        reportPropertyChange("hairMask", str);
    }

    public void setYyMaskImage(String str) {
        this.yyMaskImage = str;
        reportPropertyChange("yyMaskImage", str);
    }

    @Override // org.light.lightAssetKit.components.Component, org.light.lightAssetKit.ComponentBase
    public String type() {
        return "HairColor";
    }

    public HairColor(ArrayList<HairColorItem> arrayList, String str, String str2) {
        new ArrayList();
        this.effectList = arrayList;
        this.hairMask = str;
        this.yyMaskImage = str2;
    }
}
