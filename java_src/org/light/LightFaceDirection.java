package org.light;
/* loaded from: classes7.dex */
public enum LightFaceDirection {
    LightFaceDirectionPosition(1),
    LightFaceDirectionSide(2);
    
    private int value;

    LightFaceDirection(int i9) {
        this.value = i9;
    }

    public int value() {
        return this.value;
    }

    public static LightFaceDirection valueOf(int i9) {
        if (i9 != 1) {
            if (i9 != 2) {
                return LightFaceDirectionPosition;
            }
            return LightFaceDirectionSide;
        }
        return LightFaceDirectionPosition;
    }
}
