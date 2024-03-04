package org.light.lightAssetKit.components;

import org.light.lightAssetKit.enums.DirectionType;
/* loaded from: classes7.dex */
public class LiquefactionParam {
    public DirectionType direction;
    public float positionX;
    public float positionY;
    public float radiusX;
    public float radiusY;
    public boolean selected;
    public float strength;
    public boolean symmetry;
    public boolean visible;

    public LiquefactionParam() {
        this.radiusX = 0.0f;
        this.radiusY = 0.0f;
        this.positionX = 0.0f;
        this.positionY = 0.0f;
        this.strength = 0.0f;
        this.direction = DirectionType.Expand;
        this.symmetry = true;
        this.selected = true;
        this.visible = true;
    }

    public LiquefactionParam(float f10, float f11, float f12, float f13, float f14, DirectionType directionType, boolean z10, boolean z11, boolean z12) {
        this.radiusX = 0.0f;
        this.radiusY = 0.0f;
        this.positionX = 0.0f;
        this.positionY = 0.0f;
        this.strength = 0.0f;
        DirectionType directionType2 = DirectionType.Expand;
        this.radiusX = f10;
        this.radiusY = f11;
        this.positionX = f12;
        this.positionY = f13;
        this.strength = f14;
        this.direction = directionType;
        this.symmetry = z10;
        this.selected = z11;
        this.visible = z12;
    }
}
