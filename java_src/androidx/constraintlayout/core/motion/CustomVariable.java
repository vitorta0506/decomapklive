package androidx.constraintlayout.core.motion;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import androidx.core.view.ViewCompat;
/* loaded from: classes.dex */
public class CustomVariable {
    private static final String TAG = "TransitionLayout";
    boolean mBooleanValue;
    private float mFloatValue;
    private int mIntegerValue;
    String mName;
    private String mStringValue;
    private int mType;

    public CustomVariable(CustomVariable customVariable) {
        this.mIntegerValue = Integer.MIN_VALUE;
        this.mFloatValue = Float.NaN;
        this.mStringValue = null;
        this.mName = customVariable.mName;
        this.mType = customVariable.mType;
        this.mIntegerValue = customVariable.mIntegerValue;
        this.mFloatValue = customVariable.mFloatValue;
        this.mStringValue = customVariable.mStringValue;
        this.mBooleanValue = customVariable.mBooleanValue;
    }

    private static int clamp(int i9) {
        int i10 = (i9 & (~(i9 >> 31))) - 255;
        return (i10 & (i10 >> 31)) + 255;
    }

    public static String colorString(int i9) {
        String str = "00000000" + Integer.toHexString(i9);
        return "#" + str.substring(str.length() - 8);
    }

    public static int hsvToRgb(float f10, float f11, float f12) {
        float f13 = f10 * 6.0f;
        int i9 = (int) f13;
        float f14 = f13 - i9;
        float f15 = f12 * 255.0f;
        int i10 = (int) (((1.0f - f11) * f15) + 0.5f);
        int i11 = (int) (((1.0f - (f14 * f11)) * f15) + 0.5f);
        int i12 = (int) (((1.0f - ((1.0f - f14) * f11)) * f15) + 0.5f);
        int i13 = (int) (f15 + 0.5f);
        if (i9 != 0) {
            if (i9 != 1) {
                if (i9 != 2) {
                    if (i9 != 3) {
                        if (i9 != 4) {
                            if (i9 != 5) {
                                return 0;
                            }
                            return ((i13 << 16) + (i10 << 8) + i11) | ViewCompat.MEASURED_STATE_MASK;
                        }
                        return ((i12 << 16) + (i10 << 8) + i13) | ViewCompat.MEASURED_STATE_MASK;
                    }
                    return ((i10 << 16) + (i11 << 8) + i13) | ViewCompat.MEASURED_STATE_MASK;
                }
                return ((i10 << 16) + (i13 << 8) + i12) | ViewCompat.MEASURED_STATE_MASK;
            }
            return ((i11 << 16) + (i13 << 8) + i10) | ViewCompat.MEASURED_STATE_MASK;
        }
        return ((i13 << 16) + (i12 << 8) + i10) | ViewCompat.MEASURED_STATE_MASK;
    }

    public static int rgbaTocColor(float f10, float f11, float f12, float f13) {
        int clamp = clamp((int) (f10 * 255.0f));
        int clamp2 = clamp((int) (f11 * 255.0f));
        return (clamp << 16) | (clamp((int) (f13 * 255.0f)) << 24) | (clamp2 << 8) | clamp((int) (f12 * 255.0f));
    }

    public void applyToWidget(MotionWidget motionWidget) {
        int i9 = this.mType;
        switch (i9) {
            case 900:
            case 902:
            case TypedValues.Custom.TYPE_REFERENCE /* 906 */:
                motionWidget.setCustomAttribute(this.mName, i9, this.mIntegerValue);
                return;
            case 901:
            case TypedValues.Custom.TYPE_DIMENSION /* 905 */:
                motionWidget.setCustomAttribute(this.mName, i9, this.mFloatValue);
                return;
            case TypedValues.Custom.TYPE_STRING /* 903 */:
                motionWidget.setCustomAttribute(this.mName, i9, this.mStringValue);
                return;
            case TypedValues.Custom.TYPE_BOOLEAN /* 904 */:
                motionWidget.setCustomAttribute(this.mName, i9, this.mBooleanValue);
                return;
            default:
                return;
        }
    }

    public CustomVariable copy() {
        return new CustomVariable(this);
    }

    public boolean diff(CustomVariable customVariable) {
        int i9;
        if (customVariable == null || (i9 = this.mType) != customVariable.mType) {
            return false;
        }
        switch (i9) {
            case 900:
            case TypedValues.Custom.TYPE_REFERENCE /* 906 */:
                return this.mIntegerValue == customVariable.mIntegerValue;
            case 901:
                return this.mFloatValue == customVariable.mFloatValue;
            case 902:
                return this.mIntegerValue == customVariable.mIntegerValue;
            case TypedValues.Custom.TYPE_STRING /* 903 */:
                return this.mIntegerValue == customVariable.mIntegerValue;
            case TypedValues.Custom.TYPE_BOOLEAN /* 904 */:
                return this.mBooleanValue == customVariable.mBooleanValue;
            case TypedValues.Custom.TYPE_DIMENSION /* 905 */:
                return this.mFloatValue == customVariable.mFloatValue;
            default:
                return false;
        }
    }

    public boolean getBooleanValue() {
        return this.mBooleanValue;
    }

    public int getColorValue() {
        return this.mIntegerValue;
    }

    public float getFloatValue() {
        return this.mFloatValue;
    }

    public int getIntegerValue() {
        return this.mIntegerValue;
    }

    public int getInterpolatedColor(float[] fArr) {
        int clamp = clamp((int) (((float) Math.pow(fArr[0], 0.45454545454545453d)) * 255.0f));
        int clamp2 = clamp((int) (((float) Math.pow(fArr[1], 0.45454545454545453d)) * 255.0f));
        return (clamp((int) (fArr[3] * 255.0f)) << 24) | (clamp << 16) | (clamp2 << 8) | clamp((int) (((float) Math.pow(fArr[2], 0.45454545454545453d)) * 255.0f));
    }

    public String getName() {
        return this.mName;
    }

    public String getStringValue() {
        return this.mStringValue;
    }

    public int getType() {
        return this.mType;
    }

    public float getValueToInterpolate() {
        switch (this.mType) {
            case 900:
                return this.mIntegerValue;
            case 901:
                return this.mFloatValue;
            case 902:
                throw new RuntimeException("Color does not have a single color to interpolate");
            case TypedValues.Custom.TYPE_STRING /* 903 */:
                throw new RuntimeException("Cannot interpolate String");
            case TypedValues.Custom.TYPE_BOOLEAN /* 904 */:
                return this.mBooleanValue ? 1.0f : 0.0f;
            case TypedValues.Custom.TYPE_DIMENSION /* 905 */:
                return this.mFloatValue;
            default:
                return Float.NaN;
        }
    }

    public void getValuesToInterpolate(float[] fArr) {
        switch (this.mType) {
            case 900:
                fArr[0] = this.mIntegerValue;
                return;
            case 901:
                fArr[0] = this.mFloatValue;
                return;
            case 902:
                int i9 = this.mIntegerValue;
                float pow = (float) Math.pow(((i9 >> 16) & 255) / 255.0f, 2.2d);
                float pow2 = (float) Math.pow(((i9 >> 8) & 255) / 255.0f, 2.2d);
                fArr[0] = pow;
                fArr[1] = pow2;
                fArr[2] = (float) Math.pow((i9 & 255) / 255.0f, 2.2d);
                fArr[3] = ((i9 >> 24) & 255) / 255.0f;
                return;
            case TypedValues.Custom.TYPE_STRING /* 903 */:
                throw new RuntimeException("Cannot interpolate String");
            case TypedValues.Custom.TYPE_BOOLEAN /* 904 */:
                fArr[0] = this.mBooleanValue ? 1.0f : 0.0f;
                return;
            case TypedValues.Custom.TYPE_DIMENSION /* 905 */:
                fArr[0] = this.mFloatValue;
                return;
            default:
                return;
        }
    }

    public boolean isContinuous() {
        int i9 = this.mType;
        return (i9 == 903 || i9 == 904 || i9 == 906) ? false : true;
    }

    public int numberOfInterpolatedValues() {
        return this.mType != 902 ? 1 : 4;
    }

    public void setBooleanValue(boolean z10) {
        this.mBooleanValue = z10;
    }

    public void setFloatValue(float f10) {
        this.mFloatValue = f10;
    }

    public void setIntValue(int i9) {
        this.mIntegerValue = i9;
    }

    public void setInterpolatedValue(MotionWidget motionWidget, float[] fArr) {
        int i9 = this.mType;
        switch (i9) {
            case 900:
                motionWidget.setCustomAttribute(this.mName, i9, (int) fArr[0]);
                return;
            case 901:
            case TypedValues.Custom.TYPE_DIMENSION /* 905 */:
                motionWidget.setCustomAttribute(this.mName, i9, fArr[0]);
                return;
            case 902:
                int clamp = clamp((int) (((float) Math.pow(fArr[0], 0.45454545454545453d)) * 255.0f));
                int clamp2 = clamp((int) (((float) Math.pow(fArr[1], 0.45454545454545453d)) * 255.0f));
                motionWidget.setCustomAttribute(this.mName, this.mType, (clamp((int) (fArr[3] * 255.0f)) << 24) | (clamp << 16) | (clamp2 << 8) | clamp((int) (((float) Math.pow(fArr[2], 0.45454545454545453d)) * 255.0f)));
                return;
            case TypedValues.Custom.TYPE_STRING /* 903 */:
            case TypedValues.Custom.TYPE_REFERENCE /* 906 */:
                throw new RuntimeException("unable to interpolate " + this.mName);
            case TypedValues.Custom.TYPE_BOOLEAN /* 904 */:
                motionWidget.setCustomAttribute(this.mName, i9, fArr[0] > 0.5f);
                return;
            default:
                return;
        }
    }

    public void setStringValue(String str) {
        this.mStringValue = str;
    }

    public void setValue(float[] fArr) {
        switch (this.mType) {
            case 900:
            case TypedValues.Custom.TYPE_REFERENCE /* 906 */:
                this.mIntegerValue = (int) fArr[0];
                return;
            case 901:
            case TypedValues.Custom.TYPE_DIMENSION /* 905 */:
                this.mFloatValue = fArr[0];
                return;
            case 902:
                this.mIntegerValue = ((Math.round(fArr[3] * 255.0f) & 255) << 24) | ((Math.round(((float) Math.pow(fArr[0], 0.5d)) * 255.0f) & 255) << 16) | ((Math.round(((float) Math.pow(fArr[1], 0.5d)) * 255.0f) & 255) << 8) | (Math.round(((float) Math.pow(fArr[2], 0.5d)) * 255.0f) & 255);
                return;
            case TypedValues.Custom.TYPE_STRING /* 903 */:
                throw new RuntimeException("Cannot interpolate String");
            case TypedValues.Custom.TYPE_BOOLEAN /* 904 */:
                this.mBooleanValue = ((double) fArr[0]) > 0.5d;
                return;
            default:
                return;
        }
    }

    public String toString() {
        String str = this.mName + ':';
        switch (this.mType) {
            case 900:
                return str + this.mIntegerValue;
            case 901:
                return str + this.mFloatValue;
            case 902:
                return str + colorString(this.mIntegerValue);
            case TypedValues.Custom.TYPE_STRING /* 903 */:
                return str + this.mStringValue;
            case TypedValues.Custom.TYPE_BOOLEAN /* 904 */:
                return str + Boolean.valueOf(this.mBooleanValue);
            case TypedValues.Custom.TYPE_DIMENSION /* 905 */:
                return str + this.mFloatValue;
            default:
                return str + "????";
        }
    }

    public CustomVariable(String str, int i9, String str2) {
        this.mIntegerValue = Integer.MIN_VALUE;
        this.mFloatValue = Float.NaN;
        this.mName = str;
        this.mType = i9;
        this.mStringValue = str2;
    }

    public void setValue(Object obj) {
        switch (this.mType) {
            case 900:
            case TypedValues.Custom.TYPE_REFERENCE /* 906 */:
                this.mIntegerValue = ((Integer) obj).intValue();
                return;
            case 901:
                this.mFloatValue = ((Float) obj).floatValue();
                return;
            case 902:
                this.mIntegerValue = ((Integer) obj).intValue();
                return;
            case TypedValues.Custom.TYPE_STRING /* 903 */:
                this.mStringValue = (String) obj;
                return;
            case TypedValues.Custom.TYPE_BOOLEAN /* 904 */:
                this.mBooleanValue = ((Boolean) obj).booleanValue();
                return;
            case TypedValues.Custom.TYPE_DIMENSION /* 905 */:
                this.mFloatValue = ((Float) obj).floatValue();
                return;
            default:
                return;
        }
    }

    public CustomVariable(String str, int i9, int i10) {
        this.mIntegerValue = Integer.MIN_VALUE;
        this.mFloatValue = Float.NaN;
        this.mStringValue = null;
        this.mName = str;
        this.mType = i9;
        if (i9 == 901) {
            this.mFloatValue = i10;
        } else {
            this.mIntegerValue = i10;
        }
    }

    public CustomVariable(String str, int i9, float f10) {
        this.mIntegerValue = Integer.MIN_VALUE;
        this.mStringValue = null;
        this.mName = str;
        this.mType = i9;
        this.mFloatValue = f10;
    }

    public CustomVariable(String str, int i9, boolean z10) {
        this.mIntegerValue = Integer.MIN_VALUE;
        this.mFloatValue = Float.NaN;
        this.mStringValue = null;
        this.mName = str;
        this.mType = i9;
        this.mBooleanValue = z10;
    }

    public CustomVariable(String str, int i9) {
        this.mIntegerValue = Integer.MIN_VALUE;
        this.mFloatValue = Float.NaN;
        this.mStringValue = null;
        this.mName = str;
        this.mType = i9;
    }

    public CustomVariable(String str, int i9, Object obj) {
        this.mIntegerValue = Integer.MIN_VALUE;
        this.mFloatValue = Float.NaN;
        this.mStringValue = null;
        this.mName = str;
        this.mType = i9;
        setValue(obj);
    }

    public CustomVariable(CustomVariable customVariable, Object obj) {
        this.mIntegerValue = Integer.MIN_VALUE;
        this.mFloatValue = Float.NaN;
        this.mStringValue = null;
        this.mName = customVariable.mName;
        this.mType = customVariable.mType;
        setValue(obj);
    }
}
