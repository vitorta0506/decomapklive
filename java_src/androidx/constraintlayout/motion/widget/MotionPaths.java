package androidx.constraintlayout.motion.widget;

import android.view.View;
import androidx.annotation.NonNull;
import androidx.constraintlayout.core.motion.utils.Easing;
import androidx.constraintlayout.core.widgets.analyzer.BasicMeasure;
import androidx.constraintlayout.widget.ConstraintAttribute;
import androidx.constraintlayout.widget.ConstraintSet;
import com.guochao.faceshow.aaspring.modulars.live.common.x;
import java.util.Arrays;
import java.util.LinkedHashMap;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class MotionPaths implements Comparable<MotionPaths> {
    static final int CARTESIAN = 0;
    public static final boolean DEBUG = false;
    static final int OFF_HEIGHT = 4;
    static final int OFF_PATH_ROTATE = 5;
    static final int OFF_POSITION = 0;
    static final int OFF_WIDTH = 3;
    static final int OFF_X = 1;
    static final int OFF_Y = 2;
    public static final boolean OLD_WAY = false;
    static final int PERPENDICULAR = 1;
    static final int SCREEN = 2;
    public static final String TAG = "MotionPaths";
    static String[] names = {"position", x.f19108w, "y", "width", "height", "pathRotate"};
    LinkedHashMap<String, ConstraintAttribute> attributes;
    float height;
    int mAnimateCircleAngleTo;
    int mAnimateRelativeTo;
    Easing mKeyFrameEasing;
    int mMode;
    int mPathMotionArc;
    float mRelativeAngle;
    MotionController mRelativeToController;
    double[] mTempDelta;
    double[] mTempValue;
    float position;
    float time;
    float width;

    /* renamed from: x  reason: collision with root package name */
    float f833x;

    /* renamed from: y  reason: collision with root package name */
    float f834y;
    int mDrawPath = 0;
    float mPathRotate = Float.NaN;
    float mProgress = Float.NaN;

    public MotionPaths() {
        int i9 = Key.UNSET;
        this.mPathMotionArc = i9;
        this.mAnimateRelativeTo = i9;
        this.mRelativeAngle = Float.NaN;
        this.mRelativeToController = null;
        this.attributes = new LinkedHashMap<>();
        this.mMode = 0;
        this.mTempValue = new double[18];
        this.mTempDelta = new double[18];
    }

    private boolean diff(float f10, float f11) {
        return (Float.isNaN(f10) || Float.isNaN(f11)) ? Float.isNaN(f10) != Float.isNaN(f11) : Math.abs(f10 - f11) > 1.0E-6f;
    }

    private static final float xRotate(float f10, float f11, float f12, float f13, float f14, float f15) {
        return (((f14 - f12) * f11) - ((f15 - f13) * f10)) + f12;
    }

    private static final float yRotate(float f10, float f11, float f12, float f13, float f14, float f15) {
        return ((f14 - f12) * f10) + ((f15 - f13) * f11) + f13;
    }

    public void applyParameters(ConstraintSet.Constraint constraint) {
        this.mKeyFrameEasing = Easing.getInterpolator(constraint.motion.mTransitionEasing);
        ConstraintSet.Motion motion = constraint.motion;
        this.mPathMotionArc = motion.mPathMotionArc;
        this.mAnimateRelativeTo = motion.mAnimateRelativeTo;
        this.mPathRotate = motion.mPathRotate;
        this.mDrawPath = motion.mDrawPath;
        this.mAnimateCircleAngleTo = motion.mAnimateCircleAngleTo;
        this.mProgress = constraint.propertySet.mProgress;
        this.mRelativeAngle = constraint.layout.circleAngle;
        for (String str : constraint.mCustomConstraints.keySet()) {
            ConstraintAttribute constraintAttribute = constraint.mCustomConstraints.get(str);
            if (constraintAttribute != null && constraintAttribute.isContinuous()) {
                this.attributes.put(str, constraintAttribute);
            }
        }
    }

    public void configureRelativeTo(MotionController motionController) {
        motionController.getPos(this.mProgress);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void different(MotionPaths motionPaths, boolean[] zArr, String[] strArr, boolean z10) {
        boolean diff = diff(this.f833x, motionPaths.f833x);
        boolean diff2 = diff(this.f834y, motionPaths.f834y);
        zArr[0] = zArr[0] | diff(this.position, motionPaths.position);
        boolean z11 = diff | diff2 | z10;
        zArr[1] = zArr[1] | z11;
        zArr[2] = z11 | zArr[2];
        zArr[3] = zArr[3] | diff(this.width, motionPaths.width);
        zArr[4] = diff(this.height, motionPaths.height) | zArr[4];
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void fillStandard(double[] dArr, int[] iArr) {
        float[] fArr = {this.position, this.f833x, this.f834y, this.width, this.height, this.mPathRotate};
        int i9 = 0;
        for (int i10 = 0; i10 < iArr.length; i10++) {
            if (iArr[i10] < 6) {
                dArr[i9] = fArr[iArr[i10]];
                i9++;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void getBounds(int[] iArr, double[] dArr, float[] fArr, int i9) {
        float f10 = this.width;
        float f11 = this.height;
        for (int i10 = 0; i10 < iArr.length; i10++) {
            float f12 = (float) dArr[i10];
            int i11 = iArr[i10];
            if (i11 == 3) {
                f10 = f12;
            } else if (i11 == 4) {
                f11 = f12;
            }
        }
        fArr[i9] = f10;
        fArr[i9 + 1] = f11;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void getCenter(double d10, int[] iArr, double[] dArr, float[] fArr, int i9) {
        float f10 = this.f833x;
        float f11 = this.f834y;
        float f12 = this.width;
        float f13 = this.height;
        for (int i10 = 0; i10 < iArr.length; i10++) {
            float f14 = (float) dArr[i10];
            int i11 = iArr[i10];
            if (i11 == 1) {
                f10 = f14;
            } else if (i11 == 2) {
                f11 = f14;
            } else if (i11 == 3) {
                f12 = f14;
            } else if (i11 == 4) {
                f13 = f14;
            }
        }
        MotionController motionController = this.mRelativeToController;
        if (motionController != null) {
            float[] fArr2 = new float[2];
            motionController.getCenter(d10, fArr2, new float[2]);
            float f15 = fArr2[0];
            float f16 = fArr2[1];
            double d11 = f15;
            double d12 = f10;
            double d13 = f11;
            f10 = (float) ((d11 + (Math.sin(d13) * d12)) - (f12 / 2.0f));
            f11 = (float) ((f16 - (d12 * Math.cos(d13))) - (f13 / 2.0f));
        }
        fArr[i9] = f10 + (f12 / 2.0f) + 0.0f;
        fArr[i9 + 1] = f11 + (f13 / 2.0f) + 0.0f;
    }

    void getCenterVelocity(double d10, int[] iArr, double[] dArr, float[] fArr, int i9) {
        float f10 = this.f833x;
        float f11 = this.f834y;
        float f12 = this.width;
        float f13 = this.height;
        for (int i10 = 0; i10 < iArr.length; i10++) {
            float f14 = (float) dArr[i10];
            int i11 = iArr[i10];
            if (i11 == 1) {
                f10 = f14;
            } else if (i11 == 2) {
                f11 = f14;
            } else if (i11 == 3) {
                f12 = f14;
            } else if (i11 == 4) {
                f13 = f14;
            }
        }
        MotionController motionController = this.mRelativeToController;
        if (motionController != null) {
            float[] fArr2 = new float[2];
            motionController.getCenter(d10, fArr2, new float[2]);
            float f15 = fArr2[0];
            float f16 = fArr2[1];
            double d11 = f15;
            double d12 = f10;
            double d13 = f11;
            f10 = (float) ((d11 + (Math.sin(d13) * d12)) - (f12 / 2.0f));
            f11 = (float) ((f16 - (d12 * Math.cos(d13))) - (f13 / 2.0f));
        }
        fArr[i9] = f10 + (f12 / 2.0f) + 0.0f;
        fArr[i9 + 1] = f11 + (f13 / 2.0f) + 0.0f;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int getCustomData(String str, double[] dArr, int i9) {
        ConstraintAttribute constraintAttribute = this.attributes.get(str);
        int i10 = 0;
        if (constraintAttribute == null) {
            return 0;
        }
        if (constraintAttribute.numberOfInterpolatedValues() == 1) {
            dArr[i9] = constraintAttribute.getValueToInterpolate();
            return 1;
        }
        int numberOfInterpolatedValues = constraintAttribute.numberOfInterpolatedValues();
        float[] fArr = new float[numberOfInterpolatedValues];
        constraintAttribute.getValuesToInterpolate(fArr);
        while (i10 < numberOfInterpolatedValues) {
            dArr[i9] = fArr[i10];
            i10++;
            i9++;
        }
        return numberOfInterpolatedValues;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int getCustomDataCount(String str) {
        ConstraintAttribute constraintAttribute = this.attributes.get(str);
        if (constraintAttribute == null) {
            return 0;
        }
        return constraintAttribute.numberOfInterpolatedValues();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void getRect(int[] iArr, double[] dArr, float[] fArr, int i9) {
        float f10 = this.f833x;
        float f11 = this.f834y;
        float f12 = this.width;
        float f13 = this.height;
        for (int i10 = 0; i10 < iArr.length; i10++) {
            float f14 = (float) dArr[i10];
            int i11 = iArr[i10];
            if (i11 == 1) {
                f10 = f14;
            } else if (i11 == 2) {
                f11 = f14;
            } else if (i11 == 3) {
                f12 = f14;
            } else if (i11 == 4) {
                f13 = f14;
            }
        }
        MotionController motionController = this.mRelativeToController;
        if (motionController != null) {
            float centerX = motionController.getCenterX();
            double d10 = f10;
            double d11 = f11;
            f11 = (float) ((this.mRelativeToController.getCenterY() - (d10 * Math.cos(d11))) - (f13 / 2.0f));
            f10 = (float) ((centerX + (Math.sin(d11) * d10)) - (f12 / 2.0f));
        }
        float f15 = f12 + f10;
        float f16 = f13 + f11;
        Float.isNaN(Float.NaN);
        Float.isNaN(Float.NaN);
        int i12 = i9 + 1;
        fArr[i9] = f10 + 0.0f;
        int i13 = i12 + 1;
        fArr[i12] = f11 + 0.0f;
        int i14 = i13 + 1;
        fArr[i13] = f15 + 0.0f;
        int i15 = i14 + 1;
        fArr[i14] = f11 + 0.0f;
        int i16 = i15 + 1;
        fArr[i15] = f15 + 0.0f;
        int i17 = i16 + 1;
        fArr[i16] = f16 + 0.0f;
        fArr[i17] = f10 + 0.0f;
        fArr[i17 + 1] = f16 + 0.0f;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean hasCustomData(String str) {
        return this.attributes.containsKey(str);
    }

    void initCartesian(KeyPosition keyPosition, MotionPaths motionPaths, MotionPaths motionPaths2) {
        float f10 = keyPosition.mFramePosition / 100.0f;
        this.time = f10;
        this.mDrawPath = keyPosition.mDrawPath;
        float f11 = Float.isNaN(keyPosition.mPercentWidth) ? f10 : keyPosition.mPercentWidth;
        float f12 = Float.isNaN(keyPosition.mPercentHeight) ? f10 : keyPosition.mPercentHeight;
        float f13 = motionPaths2.width;
        float f14 = motionPaths.width;
        float f15 = motionPaths2.height;
        float f16 = motionPaths.height;
        this.position = this.time;
        float f17 = motionPaths.f833x;
        float f18 = motionPaths.f834y;
        float f19 = (motionPaths2.f833x + (f13 / 2.0f)) - ((f14 / 2.0f) + f17);
        float f20 = (motionPaths2.f834y + (f15 / 2.0f)) - (f18 + (f16 / 2.0f));
        float f21 = (f13 - f14) * f11;
        float f22 = f21 / 2.0f;
        this.f833x = (int) ((f17 + (f19 * f10)) - f22);
        float f23 = (f15 - f16) * f12;
        float f24 = f23 / 2.0f;
        this.f834y = (int) ((f18 + (f20 * f10)) - f24);
        this.width = (int) (f14 + f21);
        this.height = (int) (f16 + f23);
        float f25 = Float.isNaN(keyPosition.mPercentX) ? f10 : keyPosition.mPercentX;
        float f26 = Float.isNaN(keyPosition.mAltPercentY) ? 0.0f : keyPosition.mAltPercentY;
        if (!Float.isNaN(keyPosition.mPercentY)) {
            f10 = keyPosition.mPercentY;
        }
        float f27 = Float.isNaN(keyPosition.mAltPercentX) ? 0.0f : keyPosition.mAltPercentX;
        this.mMode = 0;
        this.f833x = (int) (((motionPaths.f833x + (f25 * f19)) + (f27 * f20)) - f22);
        this.f834y = (int) (((motionPaths.f834y + (f19 * f26)) + (f20 * f10)) - f24);
        this.mKeyFrameEasing = Easing.getInterpolator(keyPosition.mTransitionEasing);
        this.mPathMotionArc = keyPosition.mPathMotionArc;
    }

    void initPath(KeyPosition keyPosition, MotionPaths motionPaths, MotionPaths motionPaths2) {
        float f10;
        float f11;
        float f12 = keyPosition.mFramePosition / 100.0f;
        this.time = f12;
        this.mDrawPath = keyPosition.mDrawPath;
        float f13 = Float.isNaN(keyPosition.mPercentWidth) ? f12 : keyPosition.mPercentWidth;
        float f14 = Float.isNaN(keyPosition.mPercentHeight) ? f12 : keyPosition.mPercentHeight;
        float f15 = motionPaths2.width - motionPaths.width;
        float f16 = motionPaths2.height - motionPaths.height;
        this.position = this.time;
        if (!Float.isNaN(keyPosition.mPercentX)) {
            f12 = keyPosition.mPercentX;
        }
        float f17 = motionPaths.f833x;
        float f18 = motionPaths.width;
        float f19 = motionPaths.f834y;
        float f20 = motionPaths.height;
        float f21 = (motionPaths2.f833x + (motionPaths2.width / 2.0f)) - ((f18 / 2.0f) + f17);
        float f22 = (motionPaths2.f834y + (motionPaths2.height / 2.0f)) - ((f20 / 2.0f) + f19);
        float f23 = f21 * f12;
        float f24 = (f15 * f13) / 2.0f;
        this.f833x = (int) ((f17 + f23) - f24);
        float f25 = f12 * f22;
        float f26 = (f16 * f14) / 2.0f;
        this.f834y = (int) ((f19 + f25) - f26);
        this.width = (int) (f18 + f10);
        this.height = (int) (f20 + f11);
        float f27 = Float.isNaN(keyPosition.mPercentY) ? 0.0f : keyPosition.mPercentY;
        this.mMode = 1;
        float f28 = (int) ((motionPaths.f833x + f23) - f24);
        float f29 = (int) ((motionPaths.f834y + f25) - f26);
        this.f833x = f28 + ((-f22) * f27);
        this.f834y = f29 + (f21 * f27);
        this.mAnimateRelativeTo = this.mAnimateRelativeTo;
        this.mKeyFrameEasing = Easing.getInterpolator(keyPosition.mTransitionEasing);
        this.mPathMotionArc = keyPosition.mPathMotionArc;
    }

    void initPolar(int i9, int i10, KeyPosition keyPosition, MotionPaths motionPaths, MotionPaths motionPaths2) {
        float min;
        float f10;
        float f11 = keyPosition.mFramePosition / 100.0f;
        this.time = f11;
        this.mDrawPath = keyPosition.mDrawPath;
        this.mMode = keyPosition.mPositionType;
        float f12 = Float.isNaN(keyPosition.mPercentWidth) ? f11 : keyPosition.mPercentWidth;
        float f13 = Float.isNaN(keyPosition.mPercentHeight) ? f11 : keyPosition.mPercentHeight;
        float f14 = motionPaths2.width;
        float f15 = motionPaths.width;
        float f16 = motionPaths2.height;
        float f17 = motionPaths.height;
        this.position = this.time;
        this.width = (int) (f15 + ((f14 - f15) * f12));
        this.height = (int) (f17 + ((f16 - f17) * f13));
        int i11 = keyPosition.mPositionType;
        if (i11 == 1) {
            float f18 = Float.isNaN(keyPosition.mPercentX) ? f11 : keyPosition.mPercentX;
            float f19 = motionPaths2.f833x;
            float f20 = motionPaths.f833x;
            this.f833x = (f18 * (f19 - f20)) + f20;
            if (!Float.isNaN(keyPosition.mPercentY)) {
                f11 = keyPosition.mPercentY;
            }
            float f21 = motionPaths2.f834y;
            float f22 = motionPaths.f834y;
            this.f834y = (f11 * (f21 - f22)) + f22;
        } else if (i11 != 2) {
            float f23 = Float.isNaN(keyPosition.mPercentX) ? f11 : keyPosition.mPercentX;
            float f24 = motionPaths2.f833x;
            float f25 = motionPaths.f833x;
            this.f833x = (f23 * (f24 - f25)) + f25;
            if (!Float.isNaN(keyPosition.mPercentY)) {
                f11 = keyPosition.mPercentY;
            }
            float f26 = motionPaths2.f834y;
            float f27 = motionPaths.f834y;
            this.f834y = (f11 * (f26 - f27)) + f27;
        } else {
            if (Float.isNaN(keyPosition.mPercentX)) {
                float f28 = motionPaths2.f833x;
                float f29 = motionPaths.f833x;
                min = ((f28 - f29) * f11) + f29;
            } else {
                min = Math.min(f13, f12) * keyPosition.mPercentX;
            }
            this.f833x = min;
            if (Float.isNaN(keyPosition.mPercentY)) {
                float f30 = motionPaths2.f834y;
                float f31 = motionPaths.f834y;
                f10 = (f11 * (f30 - f31)) + f31;
            } else {
                f10 = keyPosition.mPercentY;
            }
            this.f834y = f10;
        }
        this.mAnimateRelativeTo = motionPaths.mAnimateRelativeTo;
        this.mKeyFrameEasing = Easing.getInterpolator(keyPosition.mTransitionEasing);
        this.mPathMotionArc = keyPosition.mPathMotionArc;
    }

    void initScreen(int i9, int i10, KeyPosition keyPosition, MotionPaths motionPaths, MotionPaths motionPaths2) {
        float f10 = keyPosition.mFramePosition / 100.0f;
        this.time = f10;
        this.mDrawPath = keyPosition.mDrawPath;
        float f11 = Float.isNaN(keyPosition.mPercentWidth) ? f10 : keyPosition.mPercentWidth;
        float f12 = Float.isNaN(keyPosition.mPercentHeight) ? f10 : keyPosition.mPercentHeight;
        float f13 = motionPaths2.width;
        float f14 = motionPaths.width;
        float f15 = motionPaths2.height;
        float f16 = motionPaths.height;
        this.position = this.time;
        float f17 = motionPaths.f833x;
        float f18 = motionPaths.f834y;
        float f19 = motionPaths2.f833x + (f13 / 2.0f);
        float f20 = motionPaths2.f834y + (f15 / 2.0f);
        float f21 = (f13 - f14) * f11;
        this.f833x = (int) ((f17 + ((f19 - ((f14 / 2.0f) + f17)) * f10)) - (f21 / 2.0f));
        float f22 = (f15 - f16) * f12;
        this.f834y = (int) ((f18 + ((f20 - (f18 + (f16 / 2.0f))) * f10)) - (f22 / 2.0f));
        this.width = (int) (f14 + f21);
        this.height = (int) (f16 + f22);
        this.mMode = 2;
        if (!Float.isNaN(keyPosition.mPercentX)) {
            this.f833x = (int) (keyPosition.mPercentX * ((int) (i9 - this.width)));
        }
        if (!Float.isNaN(keyPosition.mPercentY)) {
            this.f834y = (int) (keyPosition.mPercentY * ((int) (i10 - this.height)));
        }
        this.mAnimateRelativeTo = this.mAnimateRelativeTo;
        this.mKeyFrameEasing = Easing.getInterpolator(keyPosition.mTransitionEasing);
        this.mPathMotionArc = keyPosition.mPathMotionArc;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setBounds(float f10, float f11, float f12, float f13) {
        this.f833x = f10;
        this.f834y = f11;
        this.width = f12;
        this.height = f13;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setDpDt(float f10, float f11, float[] fArr, int[] iArr, double[] dArr, double[] dArr2) {
        float f12 = 0.0f;
        float f13 = 0.0f;
        float f14 = 0.0f;
        float f15 = 0.0f;
        for (int i9 = 0; i9 < iArr.length; i9++) {
            float f16 = (float) dArr[i9];
            double d10 = dArr2[i9];
            int i10 = iArr[i9];
            if (i10 == 1) {
                f12 = f16;
            } else if (i10 == 2) {
                f14 = f16;
            } else if (i10 == 3) {
                f13 = f16;
            } else if (i10 == 4) {
                f15 = f16;
            }
        }
        float f17 = f12 - ((0.0f * f13) / 2.0f);
        float f18 = f14 - ((0.0f * f15) / 2.0f);
        fArr[0] = (f17 * (1.0f - f10)) + (((f13 * 1.0f) + f17) * f10) + 0.0f;
        fArr[1] = (f18 * (1.0f - f11)) + (((f15 * 1.0f) + f18) * f11) + 0.0f;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setView(float f10, View view, int[] iArr, double[] dArr, double[] dArr2, double[] dArr3, boolean z10) {
        float f11;
        boolean z11;
        float f12;
        float f13 = this.f833x;
        float f14 = this.f834y;
        float f15 = this.width;
        float f16 = this.height;
        if (iArr.length != 0 && this.mTempValue.length <= iArr[iArr.length - 1]) {
            int i9 = iArr[iArr.length - 1] + 1;
            this.mTempValue = new double[i9];
            this.mTempDelta = new double[i9];
        }
        Arrays.fill(this.mTempValue, Double.NaN);
        for (int i10 = 0; i10 < iArr.length; i10++) {
            this.mTempValue[iArr[i10]] = dArr[i10];
            this.mTempDelta[iArr[i10]] = dArr2[i10];
        }
        float f17 = Float.NaN;
        int i11 = 0;
        float f18 = 0.0f;
        float f19 = 0.0f;
        float f20 = 0.0f;
        float f21 = 0.0f;
        while (true) {
            double[] dArr4 = this.mTempValue;
            if (i11 >= dArr4.length) {
                break;
            }
            if (Double.isNaN(dArr4[i11]) && (dArr3 == null || dArr3[i11] == 0.0d)) {
                f12 = f17;
            } else {
                double d10 = dArr3 != null ? dArr3[i11] : 0.0d;
                if (!Double.isNaN(this.mTempValue[i11])) {
                    d10 = this.mTempValue[i11] + d10;
                }
                f12 = f17;
                float f22 = (float) d10;
                float f23 = (float) this.mTempDelta[i11];
                if (i11 == 1) {
                    f17 = f12;
                    f18 = f23;
                    f13 = f22;
                } else if (i11 == 2) {
                    f17 = f12;
                    f19 = f23;
                    f14 = f22;
                } else if (i11 == 3) {
                    f17 = f12;
                    f20 = f23;
                    f15 = f22;
                } else if (i11 == 4) {
                    f17 = f12;
                    f21 = f23;
                    f16 = f22;
                } else if (i11 == 5) {
                    f17 = f22;
                }
                i11++;
            }
            f17 = f12;
            i11++;
        }
        float f24 = f17;
        MotionController motionController = this.mRelativeToController;
        if (motionController != null) {
            float[] fArr = new float[2];
            float[] fArr2 = new float[2];
            motionController.getCenter(f10, fArr, fArr2);
            float f25 = fArr[0];
            float f26 = fArr[1];
            float f27 = fArr2[0];
            float f28 = fArr2[1];
            double d11 = f13;
            double d12 = f14;
            float sin = (float) ((f25 + (Math.sin(d12) * d11)) - (f15 / 2.0f));
            f11 = f16;
            float cos = (float) ((f26 - (Math.cos(d12) * d11)) - (f16 / 2.0f));
            double d13 = f18;
            double d14 = f19;
            float sin2 = (float) (f27 + (Math.sin(d12) * d13) + (Math.cos(d12) * d11 * d14));
            float cos2 = (float) ((f28 - (d13 * Math.cos(d12))) + (d11 * Math.sin(d12) * d14));
            if (dArr2.length >= 2) {
                z11 = false;
                dArr2[0] = sin2;
                dArr2[1] = cos2;
            } else {
                z11 = false;
            }
            if (!Float.isNaN(f24)) {
                view.setRotation((float) (f24 + Math.toDegrees(Math.atan2(cos2, sin2))));
            }
            f13 = sin;
            f14 = cos;
        } else {
            f11 = f16;
            z11 = false;
            if (!Float.isNaN(f24)) {
                view.setRotation((float) (0.0f + f24 + Math.toDegrees(Math.atan2(f19 + (f21 / 2.0f), f18 + (f20 / 2.0f)))));
            }
        }
        if (view instanceof FloatLayout) {
            ((FloatLayout) view).layout(f13, f14, f15 + f13, f14 + f11);
            return;
        }
        float f29 = f13 + 0.5f;
        int i12 = (int) f29;
        float f30 = f14 + 0.5f;
        int i13 = (int) f30;
        int i14 = (int) (f29 + f15);
        int i15 = (int) (f30 + f11);
        int i16 = i14 - i12;
        int i17 = i15 - i13;
        if (((i16 == view.getMeasuredWidth() && i17 == view.getMeasuredHeight()) ? true : true) || z10) {
            view.measure(View.MeasureSpec.makeMeasureSpec(i16, BasicMeasure.EXACTLY), View.MeasureSpec.makeMeasureSpec(i17, BasicMeasure.EXACTLY));
        }
        view.layout(i12, i13, i14, i15);
    }

    public void setupRelative(MotionController motionController, MotionPaths motionPaths) {
        double d10 = ((this.f833x + (this.width / 2.0f)) - motionPaths.f833x) - (motionPaths.width / 2.0f);
        double d11 = ((this.f834y + (this.height / 2.0f)) - motionPaths.f834y) - (motionPaths.height / 2.0f);
        this.mRelativeToController = motionController;
        this.f833x = (float) Math.hypot(d11, d10);
        if (Float.isNaN(this.mRelativeAngle)) {
            this.f834y = (float) (Math.atan2(d11, d10) + 1.5707963267948966d);
        } else {
            this.f834y = (float) Math.toRadians(this.mRelativeAngle);
        }
    }

    @Override // java.lang.Comparable
    public int compareTo(@NonNull MotionPaths motionPaths) {
        return Float.compare(this.position, motionPaths.position);
    }

    public MotionPaths(int i9, int i10, KeyPosition keyPosition, MotionPaths motionPaths, MotionPaths motionPaths2) {
        int i11 = Key.UNSET;
        this.mPathMotionArc = i11;
        this.mAnimateRelativeTo = i11;
        this.mRelativeAngle = Float.NaN;
        this.mRelativeToController = null;
        this.attributes = new LinkedHashMap<>();
        this.mMode = 0;
        this.mTempValue = new double[18];
        this.mTempDelta = new double[18];
        if (motionPaths.mAnimateRelativeTo != Key.UNSET) {
            initPolar(i9, i10, keyPosition, motionPaths, motionPaths2);
            return;
        }
        int i12 = keyPosition.mPositionType;
        if (i12 == 1) {
            initPath(keyPosition, motionPaths, motionPaths2);
        } else if (i12 != 2) {
            initCartesian(keyPosition, motionPaths, motionPaths2);
        } else {
            initScreen(i9, i10, keyPosition, motionPaths, motionPaths2);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void getCenter(double d10, int[] iArr, double[] dArr, float[] fArr, double[] dArr2, float[] fArr2) {
        float f10;
        float f11 = this.f833x;
        float f12 = this.f834y;
        float f13 = this.width;
        float f14 = this.height;
        float f15 = 0.0f;
        float f16 = 0.0f;
        float f17 = 0.0f;
        float f18 = 0.0f;
        for (int i9 = 0; i9 < iArr.length; i9++) {
            float f19 = (float) dArr[i9];
            float f20 = (float) dArr2[i9];
            int i10 = iArr[i9];
            if (i10 == 1) {
                f11 = f19;
                f15 = f20;
            } else if (i10 == 2) {
                f12 = f19;
                f17 = f20;
            } else if (i10 == 3) {
                f13 = f19;
                f16 = f20;
            } else if (i10 == 4) {
                f14 = f19;
                f18 = f20;
            }
        }
        float f21 = 2.0f;
        float f22 = (f16 / 2.0f) + f15;
        float f23 = (f18 / 2.0f) + f17;
        MotionController motionController = this.mRelativeToController;
        if (motionController != null) {
            float[] fArr3 = new float[2];
            float[] fArr4 = new float[2];
            motionController.getCenter(d10, fArr3, fArr4);
            float f24 = fArr3[0];
            float f25 = fArr3[1];
            float f26 = fArr4[0];
            float f27 = fArr4[1];
            double d11 = f11;
            double d12 = f12;
            f10 = f13;
            double d13 = f15;
            double d14 = f17;
            float sin = (float) (f26 + (Math.sin(d12) * d13) + (Math.cos(d12) * d14));
            f23 = (float) ((f27 - (d13 * Math.cos(d12))) + (Math.sin(d12) * d14));
            f22 = sin;
            f11 = (float) ((f24 + (Math.sin(d12) * d11)) - (f13 / 2.0f));
            f12 = (float) ((f25 - (d11 * Math.cos(d12))) - (f14 / 2.0f));
            f21 = 2.0f;
        } else {
            f10 = f13;
        }
        fArr[0] = f11 + (f10 / f21) + 0.0f;
        fArr[1] = f12 + (f14 / f21) + 0.0f;
        fArr2[0] = f22;
        fArr2[1] = f23;
    }
}
