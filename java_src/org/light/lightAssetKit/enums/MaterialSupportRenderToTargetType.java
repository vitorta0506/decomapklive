package org.light.lightAssetKit.enums;
/* loaded from: classes7.dex */
public enum MaterialSupportRenderToTargetType {
    RenderTarget(0, "RenderTarget"),
    CameraTexture(1, "CameraTexture");
    
    public String name;
    public int value;

    MaterialSupportRenderToTargetType(int i9, String str) {
        this.value = i9;
        this.name = str;
    }

    @Override // java.lang.Enum
    public String toString() {
        return this.name;
    }
}
