package org.light.lightAssetKit.components;

import java.util.ArrayList;
import org.light.lightAssetKit.ComponentBase;
/* loaded from: classes7.dex */
public class Avatar2D extends Component {
    private String renderTargetKey = "";
    private ArrayList<String> animationList = new ArrayList<>();
    private ArrayList<Integer> animationQueue = new ArrayList<>();
    private Size size = new Size();
    private String animationTriggerJSONString = "";
    private String src = "";

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // org.light.lightAssetKit.components.Component, org.light.lightAssetKit.ComponentBase
    public void doUpdate(ComponentBase componentBase) {
        if (componentBase instanceof Avatar2D) {
            Avatar2D avatar2D = (Avatar2D) componentBase;
            this.renderTargetKey = avatar2D.renderTargetKey;
            this.animationList = avatar2D.animationList;
            this.animationQueue = avatar2D.animationQueue;
            this.size = avatar2D.size;
            this.animationTriggerJSONString = avatar2D.animationTriggerJSONString;
            this.src = avatar2D.src;
        }
        super.doUpdate(componentBase);
    }

    public ArrayList<String> getAnimationList() {
        return this.animationList;
    }

    public ArrayList<Integer> getAnimationQueue() {
        return this.animationQueue;
    }

    public String getAnimationTriggerJSONString() {
        return this.animationTriggerJSONString;
    }

    public String getRenderTargetKey() {
        return this.renderTargetKey;
    }

    public Size getSize() {
        return this.size;
    }

    public String getSrc() {
        return this.src;
    }

    public void setAnimationList(ArrayList<String> arrayList) {
        this.animationList = arrayList;
        reportPropertyChange("animationList", arrayList);
    }

    public void setAnimationQueue(ArrayList<Integer> arrayList) {
        this.animationQueue = arrayList;
        reportPropertyChange("animationQueue", arrayList);
    }

    public void setAnimationTriggerJSONString(String str) {
        this.animationTriggerJSONString = str;
        reportPropertyChange("animationTriggerJSONString", str);
    }

    public void setRenderTargetKey(String str) {
        this.renderTargetKey = str;
        reportPropertyChange("renderTargetKey", str);
    }

    public void setSize(Size size) {
        this.size = size;
        reportPropertyChange("size", size);
    }

    public void setSrc(String str) {
        this.src = str;
        reportPropertyChange("src", str);
    }

    @Override // org.light.lightAssetKit.components.Component, org.light.lightAssetKit.ComponentBase
    public String type() {
        return "Avatar2D";
    }
}
