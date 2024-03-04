package androidx.constraintlayout.motion.utils;

import android.util.Log;
import android.util.SparseArray;
import android.view.View;
import androidx.constraintlayout.core.motion.utils.CurveFit;
import androidx.constraintlayout.core.motion.utils.SplineSet;
import androidx.constraintlayout.motion.widget.Key;
import androidx.constraintlayout.motion.widget.MotionLayout;
import androidx.constraintlayout.widget.ConstraintAttribute;
import java.lang.reflect.Array;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
/* loaded from: classes.dex */
public abstract class ViewSpline extends SplineSet {
    private static final String TAG = "ViewSpline";

    /* loaded from: classes.dex */
    static class AlphaSet extends ViewSpline {
        AlphaSet() {
        }

        @Override // androidx.constraintlayout.motion.utils.ViewSpline
        public void setProperty(View view, float f10) {
            view.setAlpha(get(f10));
        }
    }

    /* loaded from: classes.dex */
    public static class CustomSet extends ViewSpline {
        String mAttributeName;
        SparseArray<ConstraintAttribute> mConstraintAttributeList;
        float[] mTempValues;

        public CustomSet(String str, SparseArray<ConstraintAttribute> sparseArray) {
            this.mAttributeName = str.split(",")[1];
            this.mConstraintAttributeList = sparseArray;
        }

        @Override // androidx.constraintlayout.core.motion.utils.SplineSet
        public void setPoint(int i9, float f10) {
            throw new RuntimeException("don't call for custom attribute call setPoint(pos, ConstraintAttribute)");
        }

        @Override // androidx.constraintlayout.motion.utils.ViewSpline
        public void setProperty(View view, float f10) {
            this.mCurveFit.getPos(f10, this.mTempValues);
            CustomSupport.setInterpolatedValue(this.mConstraintAttributeList.valueAt(0), view, this.mTempValues);
        }

        @Override // androidx.constraintlayout.core.motion.utils.SplineSet
        public void setup(int i9) {
            int size = this.mConstraintAttributeList.size();
            int numberOfInterpolatedValues = this.mConstraintAttributeList.valueAt(0).numberOfInterpolatedValues();
            double[] dArr = new double[size];
            this.mTempValues = new float[numberOfInterpolatedValues];
            double[][] dArr2 = (double[][]) Array.newInstance(double.class, size, numberOfInterpolatedValues);
            for (int i10 = 0; i10 < size; i10++) {
                dArr[i10] = this.mConstraintAttributeList.keyAt(i10) * 0.01d;
                this.mConstraintAttributeList.valueAt(i10).getValuesToInterpolate(this.mTempValues);
                int i11 = 0;
                while (true) {
                    float[] fArr = this.mTempValues;
                    if (i11 < fArr.length) {
                        dArr2[i10][i11] = fArr[i11];
                        i11++;
                    }
                }
            }
            this.mCurveFit = CurveFit.get(i9, dArr, dArr2);
        }

        public void setPoint(int i9, ConstraintAttribute constraintAttribute) {
            this.mConstraintAttributeList.append(i9, constraintAttribute);
        }
    }

    /* loaded from: classes.dex */
    static class ElevationSet extends ViewSpline {
        ElevationSet() {
        }

        @Override // androidx.constraintlayout.motion.utils.ViewSpline
        public void setProperty(View view, float f10) {
            view.setElevation(get(f10));
        }
    }

    /* loaded from: classes.dex */
    public static class PathRotate extends ViewSpline {
        public void setPathRotate(View view, float f10, double d10, double d11) {
            view.setRotation(get(f10) + ((float) Math.toDegrees(Math.atan2(d11, d10))));
        }

        @Override // androidx.constraintlayout.motion.utils.ViewSpline
        public void setProperty(View view, float f10) {
        }
    }

    /* loaded from: classes.dex */
    static class PivotXset extends ViewSpline {
        PivotXset() {
        }

        @Override // androidx.constraintlayout.motion.utils.ViewSpline
        public void setProperty(View view, float f10) {
            view.setPivotX(get(f10));
        }
    }

    /* loaded from: classes.dex */
    static class PivotYset extends ViewSpline {
        PivotYset() {
        }

        @Override // androidx.constraintlayout.motion.utils.ViewSpline
        public void setProperty(View view, float f10) {
            view.setPivotY(get(f10));
        }
    }

    /* loaded from: classes.dex */
    static class ProgressSet extends ViewSpline {
        boolean mNoMethod = false;

        ProgressSet() {
        }

        @Override // androidx.constraintlayout.motion.utils.ViewSpline
        public void setProperty(View view, float f10) {
            if (view instanceof MotionLayout) {
                ((MotionLayout) view).setProgress(get(f10));
            } else if (this.mNoMethod) {
            } else {
                Method method = null;
                try {
                    method = view.getClass().getMethod("setProgress", Float.TYPE);
                } catch (NoSuchMethodException unused) {
                    this.mNoMethod = true;
                }
                if (method != null) {
                    try {
                        method.invoke(view, Float.valueOf(get(f10)));
                    } catch (IllegalAccessException e10) {
                        Log.e(ViewSpline.TAG, "unable to setProgress", e10);
                    } catch (InvocationTargetException e11) {
                        Log.e(ViewSpline.TAG, "unable to setProgress", e11);
                    }
                }
            }
        }
    }

    /* loaded from: classes.dex */
    static class RotationSet extends ViewSpline {
        RotationSet() {
        }

        @Override // androidx.constraintlayout.motion.utils.ViewSpline
        public void setProperty(View view, float f10) {
            view.setRotation(get(f10));
        }
    }

    /* loaded from: classes.dex */
    static class RotationXset extends ViewSpline {
        RotationXset() {
        }

        @Override // androidx.constraintlayout.motion.utils.ViewSpline
        public void setProperty(View view, float f10) {
            view.setRotationX(get(f10));
        }
    }

    /* loaded from: classes.dex */
    static class RotationYset extends ViewSpline {
        RotationYset() {
        }

        @Override // androidx.constraintlayout.motion.utils.ViewSpline
        public void setProperty(View view, float f10) {
            view.setRotationY(get(f10));
        }
    }

    /* loaded from: classes.dex */
    static class ScaleXset extends ViewSpline {
        ScaleXset() {
        }

        @Override // androidx.constraintlayout.motion.utils.ViewSpline
        public void setProperty(View view, float f10) {
            view.setScaleX(get(f10));
        }
    }

    /* loaded from: classes.dex */
    static class ScaleYset extends ViewSpline {
        ScaleYset() {
        }

        @Override // androidx.constraintlayout.motion.utils.ViewSpline
        public void setProperty(View view, float f10) {
            view.setScaleY(get(f10));
        }
    }

    /* loaded from: classes.dex */
    static class TranslationXset extends ViewSpline {
        TranslationXset() {
        }

        @Override // androidx.constraintlayout.motion.utils.ViewSpline
        public void setProperty(View view, float f10) {
            view.setTranslationX(get(f10));
        }
    }

    /* loaded from: classes.dex */
    static class TranslationYset extends ViewSpline {
        TranslationYset() {
        }

        @Override // androidx.constraintlayout.motion.utils.ViewSpline
        public void setProperty(View view, float f10) {
            view.setTranslationY(get(f10));
        }
    }

    /* loaded from: classes.dex */
    static class TranslationZset extends ViewSpline {
        TranslationZset() {
        }

        @Override // androidx.constraintlayout.motion.utils.ViewSpline
        public void setProperty(View view, float f10) {
            view.setTranslationZ(get(f10));
        }
    }

    public static ViewSpline makeCustomSpline(String str, SparseArray<ConstraintAttribute> sparseArray) {
        return new CustomSet(str, sparseArray);
    }

    public static ViewSpline makeSpline(String str) {
        str.hashCode();
        char c10 = 65535;
        switch (str.hashCode()) {
            case -1249320806:
                if (str.equals("rotationX")) {
                    c10 = 0;
                    break;
                }
                break;
            case -1249320805:
                if (str.equals("rotationY")) {
                    c10 = 1;
                    break;
                }
                break;
            case -1225497657:
                if (str.equals("translationX")) {
                    c10 = 2;
                    break;
                }
                break;
            case -1225497656:
                if (str.equals("translationY")) {
                    c10 = 3;
                    break;
                }
                break;
            case -1225497655:
                if (str.equals("translationZ")) {
                    c10 = 4;
                    break;
                }
                break;
            case -1001078227:
                if (str.equals("progress")) {
                    c10 = 5;
                    break;
                }
                break;
            case -908189618:
                if (str.equals("scaleX")) {
                    c10 = 6;
                    break;
                }
                break;
            case -908189617:
                if (str.equals("scaleY")) {
                    c10 = 7;
                    break;
                }
                break;
            case -797520672:
                if (str.equals(Key.WAVE_VARIES_BY)) {
                    c10 = '\b';
                    break;
                }
                break;
            case -760884510:
                if (str.equals(Key.PIVOT_X)) {
                    c10 = '\t';
                    break;
                }
                break;
            case -760884509:
                if (str.equals(Key.PIVOT_Y)) {
                    c10 = '\n';
                    break;
                }
                break;
            case -40300674:
                if (str.equals(Key.ROTATION)) {
                    c10 = 11;
                    break;
                }
                break;
            case -4379043:
                if (str.equals("elevation")) {
                    c10 = '\f';
                    break;
                }
                break;
            case 37232917:
                if (str.equals("transitionPathRotate")) {
                    c10 = '\r';
                    break;
                }
                break;
            case 92909918:
                if (str.equals("alpha")) {
                    c10 = 14;
                    break;
                }
                break;
            case 156108012:
                if (str.equals("waveOffset")) {
                    c10 = 15;
                    break;
                }
                break;
        }
        switch (c10) {
            case 0:
                return new RotationXset();
            case 1:
                return new RotationYset();
            case 2:
                return new TranslationXset();
            case 3:
                return new TranslationYset();
            case 4:
                return new TranslationZset();
            case 5:
                return new ProgressSet();
            case 6:
                return new ScaleXset();
            case 7:
                return new ScaleYset();
            case '\b':
                return new AlphaSet();
            case '\t':
                return new PivotXset();
            case '\n':
                return new PivotYset();
            case 11:
                return new RotationSet();
            case '\f':
                return new ElevationSet();
            case '\r':
                return new PathRotate();
            case 14:
                return new AlphaSet();
            case 15:
                return new AlphaSet();
            default:
                return null;
        }
    }

    public abstract void setProperty(View view, float f10);
}
