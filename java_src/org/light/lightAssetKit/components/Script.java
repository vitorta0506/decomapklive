package org.light.lightAssetKit.components;

import java.util.ArrayList;
import org.light.lightAssetKit.ComponentBase;
/* loaded from: classes7.dex */
public class Script extends Component {
    private ArrayList<String> aiRequire;
    private ArrayList<String> dataRequire;
    private int entityIDOffset;
    private String scriptPath;

    public Script() {
        this.scriptPath = "";
        this.aiRequire = new ArrayList<>();
        this.dataRequire = new ArrayList<>();
        this.entityIDOffset = 0;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // org.light.lightAssetKit.components.Component, org.light.lightAssetKit.ComponentBase
    public void doUpdate(ComponentBase componentBase) {
        if (componentBase instanceof Script) {
            Script script = (Script) componentBase;
            this.scriptPath = script.scriptPath;
            this.aiRequire = script.aiRequire;
            this.dataRequire = script.dataRequire;
            this.entityIDOffset = script.entityIDOffset;
        }
        super.doUpdate(componentBase);
    }

    public ArrayList<String> getAiRequire() {
        return this.aiRequire;
    }

    public ArrayList<String> getDataRequire() {
        return this.dataRequire;
    }

    public int getEntityIDOffset() {
        return this.entityIDOffset;
    }

    public String getScriptPath() {
        return this.scriptPath;
    }

    public void setAiRequire(ArrayList<String> arrayList) {
        this.aiRequire = arrayList;
        reportPropertyChange("aiRequire", arrayList);
    }

    public void setDataRequire(ArrayList<String> arrayList) {
        this.dataRequire = arrayList;
        reportPropertyChange("dataRequire", arrayList);
    }

    public void setEntityIDOffset(int i9) {
        this.entityIDOffset = i9;
        reportPropertyChange("entityIDOffset", Integer.valueOf(i9));
    }

    public void setScriptPath(String str) {
        this.scriptPath = str;
        reportPropertyChange("scriptPath", str);
    }

    @Override // org.light.lightAssetKit.components.Component, org.light.lightAssetKit.ComponentBase
    public String type() {
        return "Script";
    }

    public Script(String str, ArrayList<String> arrayList, ArrayList<String> arrayList2, int i9) {
        this.scriptPath = "";
        this.aiRequire = new ArrayList<>();
        new ArrayList();
        this.scriptPath = str;
        this.aiRequire = arrayList;
        this.dataRequire = arrayList2;
        this.entityIDOffset = i9;
    }
}
