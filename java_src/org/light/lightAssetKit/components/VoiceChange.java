package org.light.lightAssetKit.components;

import org.light.lightAssetKit.ComponentBase;
/* loaded from: classes7.dex */
public class VoiceChange extends Component {
    private int environment;
    private int voiceKind;

    public VoiceChange() {
        this.voiceKind = -1;
        this.environment = -1;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // org.light.lightAssetKit.components.Component, org.light.lightAssetKit.ComponentBase
    public void doUpdate(ComponentBase componentBase) {
        if (componentBase instanceof VoiceChange) {
            VoiceChange voiceChange = (VoiceChange) componentBase;
            this.voiceKind = voiceChange.voiceKind;
            this.environment = voiceChange.environment;
        }
        super.doUpdate(componentBase);
    }

    public int getEnvironment() {
        return this.environment;
    }

    public int getVoiceKind() {
        return this.voiceKind;
    }

    public void setEnvironment(int i9) {
        this.environment = i9;
        reportPropertyChange("environment", Integer.valueOf(i9));
    }

    public void setVoiceKind(int i9) {
        this.voiceKind = i9;
        reportPropertyChange("voiceKind", Integer.valueOf(i9));
    }

    @Override // org.light.lightAssetKit.components.Component, org.light.lightAssetKit.ComponentBase
    public String type() {
        return "VoiceChange";
    }

    public VoiceChange(int i9, int i10) {
        this.voiceKind = i9;
        this.environment = i10;
    }
}
