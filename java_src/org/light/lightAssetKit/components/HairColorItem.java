package org.light.lightAssetKit.components;

import org.light.lightAssetKit.enums.BlendModeType;
import org.light.lightAssetKit.enums.HairEffectType;
/* loaded from: classes7.dex */
public class HairColorItem {
    public HairEffectType effectType;
    public BlendModeType imageBlendMode;
    public int imageFillMode;
    public String imagePath;
    public String lutPath;
    public int maskType;

    public HairColorItem() {
        this.effectType = HairEffectType.Image;
        this.imagePath = "";
        this.lutPath = "";
        this.imageFillMode = 0;
        this.imageBlendMode = BlendModeType.Normal;
        this.maskType = 0;
    }

    public HairColorItem(HairEffectType hairEffectType, String str, String str2, int i9, BlendModeType blendModeType, int i10) {
        this.effectType = HairEffectType.Image;
        this.imagePath = "";
        this.lutPath = "";
        this.imageFillMode = 0;
        BlendModeType blendModeType2 = BlendModeType.Normal;
        this.effectType = hairEffectType;
        this.imagePath = str;
        this.lutPath = str2;
        this.imageFillMode = i9;
        this.imageBlendMode = blendModeType;
        this.maskType = i10;
    }
}
