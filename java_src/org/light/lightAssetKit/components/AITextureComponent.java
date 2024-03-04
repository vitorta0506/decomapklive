package org.light.lightAssetKit.components;

import com.google.gson.JsonObject;
import java.util.ArrayList;
import org.light.lightAssetKit.ComponentBase;
/* loaded from: classes7.dex */
public class AITextureComponent extends Component {
    private String aiInputType;
    private JsonObject aiTextureInputParams;
    private JsonObject aiTextureOutputParams;
    private String aiType;
    private int fps;
    private String inputRenderTarget;
    private boolean isRealTimeResult;
    private boolean preLoad;
    private ArrayList<String> renderTargetList;
    private String resourcePath;

    public AITextureComponent() {
        this.aiType = "";
        this.aiInputType = "";
        this.isRealTimeResult = true;
        this.inputRenderTarget = "";
        this.resourcePath = "";
        this.fps = 1;
        this.preLoad = false;
        this.renderTargetList = new ArrayList<>();
        this.aiTextureInputParams = new JsonObject();
        this.aiTextureOutputParams = new JsonObject();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // org.light.lightAssetKit.components.Component, org.light.lightAssetKit.ComponentBase
    public void doUpdate(ComponentBase componentBase) {
        if (componentBase instanceof AITextureComponent) {
            AITextureComponent aITextureComponent = (AITextureComponent) componentBase;
            this.aiType = aITextureComponent.aiType;
            this.aiInputType = aITextureComponent.aiInputType;
            this.isRealTimeResult = aITextureComponent.isRealTimeResult;
            this.inputRenderTarget = aITextureComponent.inputRenderTarget;
            this.resourcePath = aITextureComponent.resourcePath;
            this.fps = aITextureComponent.fps;
            this.preLoad = aITextureComponent.preLoad;
            this.renderTargetList = aITextureComponent.renderTargetList;
            this.aiTextureInputParams = aITextureComponent.aiTextureInputParams;
            this.aiTextureOutputParams = aITextureComponent.aiTextureOutputParams;
        }
        super.doUpdate(componentBase);
    }

    public String getAiInputType() {
        return this.aiInputType;
    }

    public JsonObject getAiTextureInputParams() {
        return this.aiTextureInputParams;
    }

    public JsonObject getAiTextureOutputParams() {
        return this.aiTextureOutputParams;
    }

    public String getAiType() {
        return this.aiType;
    }

    public int getFps() {
        return this.fps;
    }

    public String getInputRenderTarget() {
        return this.inputRenderTarget;
    }

    public boolean getIsRealTimeResult() {
        return this.isRealTimeResult;
    }

    public boolean getPreLoad() {
        return this.preLoad;
    }

    public ArrayList<String> getRenderTargetList() {
        return this.renderTargetList;
    }

    public String getResourcePath() {
        return this.resourcePath;
    }

    public void setAiInputType(String str) {
        this.aiInputType = str;
        reportPropertyChange("aiInputType", str);
    }

    public void setAiTextureInputParams(JsonObject jsonObject) {
        this.aiTextureInputParams = jsonObject;
        reportPropertyChange("aiTextureInputParams", jsonObject);
    }

    public void setAiTextureOutputParams(JsonObject jsonObject) {
        this.aiTextureOutputParams = jsonObject;
        reportPropertyChange("aiTextureOutputParams", jsonObject);
    }

    public void setAiType(String str) {
        this.aiType = str;
        reportPropertyChange("aiType", str);
    }

    public void setFps(int i9) {
        this.fps = i9;
        reportPropertyChange("fps", Integer.valueOf(i9));
    }

    public void setInputRenderTarget(String str) {
        this.inputRenderTarget = str;
        reportPropertyChange("inputRenderTarget", str);
    }

    public void setIsRealTimeResult(boolean z10) {
        this.isRealTimeResult = z10;
        reportPropertyChange("isRealTimeResult", Boolean.valueOf(z10));
    }

    public void setPreLoad(boolean z10) {
        this.preLoad = z10;
        reportPropertyChange("preLoad", Boolean.valueOf(z10));
    }

    public void setRenderTargetList(ArrayList<String> arrayList) {
        this.renderTargetList = arrayList;
        reportPropertyChange("renderTargetList", arrayList);
    }

    public void setResourcePath(String str) {
        this.resourcePath = str;
        reportPropertyChange("resourcePath", str);
    }

    @Override // org.light.lightAssetKit.components.Component, org.light.lightAssetKit.ComponentBase
    public String type() {
        return "AITextureComponent";
    }

    public AITextureComponent(String str, String str2, boolean z10, ArrayList<String> arrayList) {
        this.aiType = "";
        this.aiInputType = "";
        this.isRealTimeResult = true;
        this.inputRenderTarget = "";
        this.resourcePath = "";
        this.fps = 1;
        this.preLoad = false;
        this.renderTargetList = new ArrayList<>();
        this.aiTextureInputParams = new JsonObject();
        this.aiTextureOutputParams = new JsonObject();
        this.aiType = str;
        this.aiInputType = str2;
        this.isRealTimeResult = z10;
        this.renderTargetList = arrayList;
    }
}
