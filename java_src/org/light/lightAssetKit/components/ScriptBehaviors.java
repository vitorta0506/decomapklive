package org.light.lightAssetKit.components;

import java.util.ArrayList;
import org.light.lightAssetKit.ComponentBase;
/* loaded from: classes7.dex */
public class ScriptBehaviors extends Component {
    private ArrayList<String> behaviorProperties;

    public ScriptBehaviors() {
        this.behaviorProperties = new ArrayList<>();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // org.light.lightAssetKit.components.Component, org.light.lightAssetKit.ComponentBase
    public void doUpdate(ComponentBase componentBase) {
        if (componentBase instanceof ScriptBehaviors) {
            this.behaviorProperties = ((ScriptBehaviors) componentBase).behaviorProperties;
        }
        super.doUpdate(componentBase);
    }

    public ArrayList<String> getBehaviorProperties() {
        return this.behaviorProperties;
    }

    public void setBehaviorProperties(ArrayList<String> arrayList) {
        this.behaviorProperties = arrayList;
        reportPropertyChange("behaviorProperties", arrayList);
    }

    @Override // org.light.lightAssetKit.components.Component, org.light.lightAssetKit.ComponentBase
    public String type() {
        return "ScriptBehaviors";
    }

    public ScriptBehaviors(ArrayList<String> arrayList) {
        new ArrayList();
        this.behaviorProperties = arrayList;
    }
}
