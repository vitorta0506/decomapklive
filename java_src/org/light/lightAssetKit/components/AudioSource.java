package org.light.lightAssetKit.components;

import java.util.ArrayList;
import org.light.lightAssetKit.ComponentBase;
import org.light.lightAssetKit.enums.AudioSourceType;
/* loaded from: classes7.dex */
public class AudioSource extends Component {
    private float volume = 1.0f;
    private float speed = 1.0f;
    private ArrayList<VolumeEffect> volumeEffects = new ArrayList<>();
    private AudioSourceType audioSourceType = AudioSourceType.Effect;
    private String src = "";

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // org.light.lightAssetKit.components.Component, org.light.lightAssetKit.ComponentBase
    public void doUpdate(ComponentBase componentBase) {
        if (componentBase instanceof AudioSource) {
            AudioSource audioSource = (AudioSource) componentBase;
            this.volume = audioSource.volume;
            this.speed = audioSource.speed;
            this.volumeEffects = audioSource.volumeEffects;
            this.audioSourceType = audioSource.audioSourceType;
            this.src = audioSource.src;
        }
        super.doUpdate(componentBase);
    }

    public AudioSourceType getAudioSourceType() {
        return this.audioSourceType;
    }

    public float getSpeed() {
        return this.speed;
    }

    public String getSrc() {
        return this.src;
    }

    public float getVolume() {
        return this.volume;
    }

    public ArrayList<VolumeEffect> getVolumeEffects() {
        return this.volumeEffects;
    }

    public void setAudioSourceType(AudioSourceType audioSourceType) {
        this.audioSourceType = audioSourceType;
        reportPropertyChange("audioSourceType", audioSourceType);
    }

    public void setSpeed(float f10) {
        this.speed = f10;
        reportPropertyChange("speed", Float.valueOf(f10));
    }

    public void setSrc(String str) {
        this.src = str;
        reportPropertyChange("src", str);
    }

    public void setVolume(float f10) {
        this.volume = f10;
        reportPropertyChange("volume", Float.valueOf(f10));
    }

    public void setVolumeEffects(ArrayList<VolumeEffect> arrayList) {
        this.volumeEffects = arrayList;
        reportPropertyChange("volumeEffects", arrayList);
    }

    @Override // org.light.lightAssetKit.components.Component, org.light.lightAssetKit.ComponentBase
    public String type() {
        return "AudioSource";
    }
}
