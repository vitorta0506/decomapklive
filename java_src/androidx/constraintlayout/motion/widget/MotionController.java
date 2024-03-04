package androidx.constraintlayout.motion.widget;

import android.content.Context;
import android.graphics.Rect;
import android.graphics.RectF;
import android.util.Log;
import android.util.SparseArray;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.AccelerateDecelerateInterpolator;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.AnimationUtils;
import android.view.animation.BounceInterpolator;
import android.view.animation.DecelerateInterpolator;
import android.view.animation.Interpolator;
import android.view.animation.OvershootInterpolator;
import androidx.constraintlayout.core.motion.utils.CurveFit;
import androidx.constraintlayout.core.motion.utils.Easing;
import androidx.constraintlayout.core.motion.utils.KeyCache;
import androidx.constraintlayout.core.motion.utils.VelocityMatrix;
import androidx.constraintlayout.core.widgets.analyzer.BasicMeasure;
import androidx.constraintlayout.motion.utils.CustomSupport;
import androidx.constraintlayout.motion.utils.ViewOscillator;
import androidx.constraintlayout.motion.utils.ViewSpline;
import androidx.constraintlayout.motion.utils.ViewState;
import androidx.constraintlayout.motion.utils.ViewTimeCycle;
import androidx.constraintlayout.widget.ConstraintAttribute;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.constraintlayout.widget.ConstraintSet;
import java.lang.reflect.Array;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
/* loaded from: classes.dex */
public class MotionController {
    static final int BOUNCE = 4;
    private static final boolean DEBUG = false;
    public static final int DRAW_PATH_AS_CONFIGURED = 4;
    public static final int DRAW_PATH_BASIC = 1;
    public static final int DRAW_PATH_CARTESIAN = 3;
    public static final int DRAW_PATH_NONE = 0;
    public static final int DRAW_PATH_RECTANGLE = 5;
    public static final int DRAW_PATH_RELATIVE = 2;
    public static final int DRAW_PATH_SCREEN = 6;
    static final int EASE_IN = 1;
    static final int EASE_IN_OUT = 0;
    static final int EASE_OUT = 2;
    private static final boolean FAVOR_FIXED_SIZE_VIEWS = false;
    public static final int HORIZONTAL_PATH_X = 2;
    public static final int HORIZONTAL_PATH_Y = 3;
    private static final int INTERPOLATOR_REFERENCE_ID = -2;
    private static final int INTERPOLATOR_UNDEFINED = -3;
    static final int LINEAR = 3;
    static final int OVERSHOOT = 5;
    public static final int PATH_PERCENT = 0;
    public static final int PATH_PERPENDICULAR = 1;
    public static final int ROTATION_LEFT = 2;
    public static final int ROTATION_RIGHT = 1;
    private static final int SPLINE_STRING = -1;
    private static final String TAG = "MotionController";
    public static final int VERTICAL_PATH_X = 4;
    public static final int VERTICAL_PATH_Y = 5;
    String[] attributeTable;
    private CurveFit mArcSpline;
    private int[] mAttributeInterpolatorCount;
    private String[] mAttributeNames;
    private HashMap<String, ViewSpline> mAttributesMap;
    String mConstraintTag;
    float mCurrentCenterX;
    float mCurrentCenterY;
    private HashMap<String, ViewOscillator> mCycleMap;
    int mId;
    private double[] mInterpolateData;
    private int[] mInterpolateVariables;
    private double[] mInterpolateVelocity;
    private KeyTrigger[] mKeyTriggers;
    private boolean mNoMovement;
    private int mPathMotionArc;
    private Interpolator mQuantizeMotionInterpolator;
    private float mQuantizeMotionPhase;
    private int mQuantizeMotionSteps;
    private CurveFit[] mSpline;
    private HashMap<String, ViewTimeCycle> mTimeCycleAttributesMap;
    private int mTransformPivotTarget;
    private View mTransformPivotView;
    View mView;
    Rect mTempRect = new Rect();
    boolean mForceMeasure = false;
    private int mCurveFitType = -1;
    private MotionPaths mStartMotionPath = new MotionPaths();
    private MotionPaths mEndMotionPath = new MotionPaths();
    private MotionConstrainedPoint mStartPoint = new MotionConstrainedPoint();
    private MotionConstrainedPoint mEndPoint = new MotionConstrainedPoint();
    float mMotionStagger = Float.NaN;
    float mStaggerOffset = 0.0f;
    float mStaggerScale = 1.0f;
    private int MAX_DIMENSION = 4;
    private float[] mValuesBuff = new float[4];
    private ArrayList<MotionPaths> mMotionPaths = new ArrayList<>();
    private float[] mVelocity = new float[1];
    private ArrayList<Key> mKeyList = new ArrayList<>();

    /* JADX INFO: Access modifiers changed from: package-private */
    public MotionController(View view) {
        int i9 = Key.UNSET;
        this.mPathMotionArc = i9;
        this.mTransformPivotTarget = i9;
        this.mTransformPivotView = null;
        this.mQuantizeMotionSteps = i9;
        this.mQuantizeMotionPhase = Float.NaN;
        this.mQuantizeMotionInterpolator = null;
        this.mNoMovement = false;
        setView(view);
    }

    private float getAdjustedPosition(float f10, float[] fArr) {
        float f11 = 0.0f;
        if (fArr != null) {
            fArr[0] = 1.0f;
        } else {
            float f12 = this.mStaggerScale;
            if (f12 != 1.0d) {
                float f13 = this.mStaggerOffset;
                if (f10 < f13) {
                    f10 = 0.0f;
                }
                if (f10 > f13 && f10 < 1.0d) {
                    f10 = Math.min((f10 - f13) * f12, 1.0f);
                }
            }
        }
        Easing easing = this.mStartMotionPath.mKeyFrameEasing;
        float f14 = Float.NaN;
        Iterator<MotionPaths> it = this.mMotionPaths.iterator();
        while (it.hasNext()) {
            MotionPaths next = it.next();
            Easing easing2 = next.mKeyFrameEasing;
            if (easing2 != null) {
                float f15 = next.time;
                if (f15 < f10) {
                    easing = easing2;
                    f11 = f15;
                } else if (Float.isNaN(f14)) {
                    f14 = next.time;
                }
            }
        }
        if (easing != null) {
            float f16 = (Float.isNaN(f14) ? 1.0f : f14) - f11;
            double d10 = (f10 - f11) / f16;
            f10 = (((float) easing.get(d10)) * f16) + f11;
            if (fArr != null) {
                fArr[0] = (float) easing.getDiff(d10);
            }
        }
        return f10;
    }

    private static Interpolator getInterpolator(Context context, int i9, String str, int i10) {
        if (i9 != -2) {
            if (i9 == -1) {
                final Easing interpolator = Easing.getInterpolator(str);
                return new Interpolator() { // from class: androidx.constraintlayout.motion.widget.MotionController.1
                    @Override // android.animation.TimeInterpolator
                    public float getInterpolation(float f10) {
                        return (float) Easing.this.get(f10);
                    }
                };
            } else if (i9 != 0) {
                if (i9 != 1) {
                    if (i9 != 2) {
                        if (i9 != 4) {
                            if (i9 != 5) {
                                return null;
                            }
                            return new OvershootInterpolator();
                        }
                        return new BounceInterpolator();
                    }
                    return new DecelerateInterpolator();
                }
                return new AccelerateInterpolator();
            } else {
                return new AccelerateDecelerateInterpolator();
            }
        }
        return AnimationUtils.loadInterpolator(context, i10);
    }

    private float getPreCycleDistance() {
        char c10;
        float f10;
        float f11;
        float[] fArr = new float[2];
        float f12 = 1.0f / 99;
        double d10 = 0.0d;
        double d11 = 0.0d;
        float f13 = 0.0f;
        int i9 = 0;
        while (i9 < 100) {
            float f14 = i9 * f12;
            double d12 = f14;
            Easing easing = this.mStartMotionPath.mKeyFrameEasing;
            Iterator<MotionPaths> it = this.mMotionPaths.iterator();
            float f15 = Float.NaN;
            float f16 = 0.0f;
            while (it.hasNext()) {
                MotionPaths next = it.next();
                Easing easing2 = next.mKeyFrameEasing;
                if (easing2 != null) {
                    float f17 = next.time;
                    if (f17 < f14) {
                        easing = easing2;
                        f16 = f17;
                    } else if (Float.isNaN(f15)) {
                        f15 = next.time;
                    }
                }
            }
            if (easing != null) {
                if (Float.isNaN(f15)) {
                    f15 = 1.0f;
                }
                d12 = (((float) easing.get((f14 - f16) / f11)) * (f15 - f16)) + f16;
            }
            this.mSpline[0].getPos(d12, this.mInterpolateData);
            float f18 = f13;
            int i10 = i9;
            this.mStartMotionPath.getCenter(d12, this.mInterpolateVariables, this.mInterpolateData, fArr, 0);
            if (i10 > 0) {
                c10 = 0;
                f10 = (float) (f18 + Math.hypot(d11 - fArr[1], d10 - fArr[0]));
            } else {
                c10 = 0;
                f10 = f18;
            }
            d10 = fArr[c10];
            i9 = i10 + 1;
            f13 = f10;
            d11 = fArr[1];
        }
        return f13;
    }

    private void insertKey(MotionPaths motionPaths) {
        int binarySearch = Collections.binarySearch(this.mMotionPaths, motionPaths);
        if (binarySearch == 0) {
            Log.e(TAG, " KeyPath position \"" + motionPaths.position + "\" outside of range");
        }
        this.mMotionPaths.add((-binarySearch) - 1, motionPaths);
    }

    private void readView(MotionPaths motionPaths) {
        motionPaths.setBounds((int) this.mView.getX(), (int) this.mView.getY(), this.mView.getWidth(), this.mView.getHeight());
    }

    public void addKey(Key key) {
        this.mKeyList.add(key);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void addKeys(ArrayList<Key> arrayList) {
        this.mKeyList.addAll(arrayList);
    }

    void buildBounds(float[] fArr, int i9) {
        float f10;
        float f11 = 1.0f / (i9 - 1);
        HashMap<String, ViewSpline> hashMap = this.mAttributesMap;
        if (hashMap != null) {
            hashMap.get("translationX");
        }
        HashMap<String, ViewSpline> hashMap2 = this.mAttributesMap;
        if (hashMap2 != null) {
            hashMap2.get("translationY");
        }
        HashMap<String, ViewOscillator> hashMap3 = this.mCycleMap;
        if (hashMap3 != null) {
            hashMap3.get("translationX");
        }
        HashMap<String, ViewOscillator> hashMap4 = this.mCycleMap;
        if (hashMap4 != null) {
            hashMap4.get("translationY");
        }
        for (int i10 = 0; i10 < i9; i10++) {
            float f12 = i10 * f11;
            float f13 = this.mStaggerScale;
            float f14 = 0.0f;
            if (f13 != 1.0f) {
                float f15 = this.mStaggerOffset;
                if (f12 < f15) {
                    f12 = 0.0f;
                }
                if (f12 > f15 && f12 < 1.0d) {
                    f12 = Math.min((f12 - f15) * f13, 1.0f);
                }
            }
            double d10 = f12;
            Easing easing = this.mStartMotionPath.mKeyFrameEasing;
            float f16 = Float.NaN;
            Iterator<MotionPaths> it = this.mMotionPaths.iterator();
            while (it.hasNext()) {
                MotionPaths next = it.next();
                Easing easing2 = next.mKeyFrameEasing;
                if (easing2 != null) {
                    float f17 = next.time;
                    if (f17 < f12) {
                        easing = easing2;
                        f14 = f17;
                    } else if (Float.isNaN(f16)) {
                        f16 = next.time;
                    }
                }
            }
            if (easing != null) {
                if (Float.isNaN(f16)) {
                    f16 = 1.0f;
                }
                d10 = (((float) easing.get((f12 - f14) / f10)) * (f16 - f14)) + f14;
            }
            this.mSpline[0].getPos(d10, this.mInterpolateData);
            CurveFit curveFit = this.mArcSpline;
            if (curveFit != null) {
                double[] dArr = this.mInterpolateData;
                if (dArr.length > 0) {
                    curveFit.getPos(d10, dArr);
                }
            }
            this.mStartMotionPath.getBounds(this.mInterpolateVariables, this.mInterpolateData, fArr, i10 * 2);
        }
    }

    int buildKeyBounds(float[] fArr, int[] iArr) {
        if (fArr != null) {
            double[] timePoints = this.mSpline[0].getTimePoints();
            if (iArr != null) {
                Iterator<MotionPaths> it = this.mMotionPaths.iterator();
                int i9 = 0;
                while (it.hasNext()) {
                    iArr[i9] = it.next().mMode;
                    i9++;
                }
            }
            int i10 = 0;
            for (double d10 : timePoints) {
                this.mSpline[0].getPos(d10, this.mInterpolateData);
                this.mStartMotionPath.getBounds(this.mInterpolateVariables, this.mInterpolateData, fArr, i10);
                i10 += 2;
            }
            return i10 / 2;
        }
        return 0;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int buildKeyFrames(float[] fArr, int[] iArr) {
        if (fArr != null) {
            double[] timePoints = this.mSpline[0].getTimePoints();
            if (iArr != null) {
                Iterator<MotionPaths> it = this.mMotionPaths.iterator();
                int i9 = 0;
                while (it.hasNext()) {
                    iArr[i9] = it.next().mMode;
                    i9++;
                }
            }
            int i10 = 0;
            for (int i11 = 0; i11 < timePoints.length; i11++) {
                this.mSpline[0].getPos(timePoints[i11], this.mInterpolateData);
                this.mStartMotionPath.getCenter(timePoints[i11], this.mInterpolateVariables, this.mInterpolateData, fArr, i10);
                i10 += 2;
            }
            return i10 / 2;
        }
        return 0;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void buildPath(float[] fArr, int i9) {
        double d10;
        float f10;
        float f11 = 1.0f;
        float f12 = 1.0f / (i9 - 1);
        HashMap<String, ViewSpline> hashMap = this.mAttributesMap;
        ViewSpline viewSpline = hashMap == null ? null : hashMap.get("translationX");
        HashMap<String, ViewSpline> hashMap2 = this.mAttributesMap;
        ViewSpline viewSpline2 = hashMap2 == null ? null : hashMap2.get("translationY");
        HashMap<String, ViewOscillator> hashMap3 = this.mCycleMap;
        ViewOscillator viewOscillator = hashMap3 == null ? null : hashMap3.get("translationX");
        HashMap<String, ViewOscillator> hashMap4 = this.mCycleMap;
        ViewOscillator viewOscillator2 = hashMap4 != null ? hashMap4.get("translationY") : null;
        int i10 = 0;
        while (i10 < i9) {
            float f13 = i10 * f12;
            float f14 = this.mStaggerScale;
            if (f14 != f11) {
                float f15 = this.mStaggerOffset;
                if (f13 < f15) {
                    f13 = 0.0f;
                }
                if (f13 > f15 && f13 < 1.0d) {
                    f13 = Math.min((f13 - f15) * f14, f11);
                }
            }
            float f16 = f13;
            double d11 = f16;
            Easing easing = this.mStartMotionPath.mKeyFrameEasing;
            float f17 = Float.NaN;
            Iterator<MotionPaths> it = this.mMotionPaths.iterator();
            float f18 = 0.0f;
            while (it.hasNext()) {
                MotionPaths next = it.next();
                Easing easing2 = next.mKeyFrameEasing;
                double d12 = d11;
                if (easing2 != null) {
                    float f19 = next.time;
                    if (f19 < f16) {
                        f18 = f19;
                        easing = easing2;
                    } else if (Float.isNaN(f17)) {
                        f17 = next.time;
                    }
                }
                d11 = d12;
            }
            double d13 = d11;
            if (easing != null) {
                if (Float.isNaN(f17)) {
                    f17 = 1.0f;
                }
                d10 = (((float) easing.get((f16 - f18) / f10)) * (f17 - f18)) + f18;
            } else {
                d10 = d13;
            }
            this.mSpline[0].getPos(d10, this.mInterpolateData);
            CurveFit curveFit = this.mArcSpline;
            if (curveFit != null) {
                double[] dArr = this.mInterpolateData;
                if (dArr.length > 0) {
                    curveFit.getPos(d10, dArr);
                }
            }
            int i11 = i10 * 2;
            int i12 = i10;
            this.mStartMotionPath.getCenter(d10, this.mInterpolateVariables, this.mInterpolateData, fArr, i11);
            if (viewOscillator != null) {
                fArr[i11] = fArr[i11] + viewOscillator.get(f16);
            } else if (viewSpline != null) {
                fArr[i11] = fArr[i11] + viewSpline.get(f16);
            }
            if (viewOscillator2 != null) {
                int i13 = i11 + 1;
                fArr[i13] = fArr[i13] + viewOscillator2.get(f16);
            } else if (viewSpline2 != null) {
                int i14 = i11 + 1;
                fArr[i14] = fArr[i14] + viewSpline2.get(f16);
            }
            i10 = i12 + 1;
            f11 = 1.0f;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void buildRect(float f10, float[] fArr, int i9) {
        this.mSpline[0].getPos(getAdjustedPosition(f10, null), this.mInterpolateData);
        this.mStartMotionPath.getRect(this.mInterpolateVariables, this.mInterpolateData, fArr, i9);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void buildRectangles(float[] fArr, int i9) {
        float f10 = 1.0f / (i9 - 1);
        for (int i10 = 0; i10 < i9; i10++) {
            this.mSpline[0].getPos(getAdjustedPosition(i10 * f10, null), this.mInterpolateData);
            this.mStartMotionPath.getRect(this.mInterpolateVariables, this.mInterpolateData, fArr, i10 * 8);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void endTrigger(boolean z10) {
        if (!"button".equals(Debug.getName(this.mView)) || this.mKeyTriggers == null) {
            return;
        }
        int i9 = 0;
        while (true) {
            KeyTrigger[] keyTriggerArr = this.mKeyTriggers;
            if (i9 >= keyTriggerArr.length) {
                return;
            }
            keyTriggerArr[i9].conditionallyFire(z10 ? -100.0f : 100.0f, this.mView);
            i9++;
        }
    }

    public int getAnimateRelativeTo() {
        return this.mStartMotionPath.mAnimateRelativeTo;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int getAttributeValues(String str, float[] fArr, int i9) {
        ViewSpline viewSpline = this.mAttributesMap.get(str);
        if (viewSpline == null) {
            return -1;
        }
        for (int i10 = 0; i10 < fArr.length; i10++) {
            fArr[i10] = viewSpline.get(i10 / (fArr.length - 1));
        }
        return fArr.length;
    }

    public void getCenter(double d10, float[] fArr, float[] fArr2) {
        double[] dArr = new double[4];
        double[] dArr2 = new double[4];
        this.mSpline[0].getPos(d10, dArr);
        this.mSpline[0].getSlope(d10, dArr2);
        Arrays.fill(fArr2, 0.0f);
        this.mStartMotionPath.getCenter(d10, this.mInterpolateVariables, dArr, fArr, dArr2, fArr2);
    }

    public float getCenterX() {
        return this.mCurrentCenterX;
    }

    public float getCenterY() {
        return this.mCurrentCenterY;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void getDpDt(float f10, float f11, float f12, float[] fArr) {
        double[] dArr;
        float adjustedPosition = getAdjustedPosition(f10, this.mVelocity);
        CurveFit[] curveFitArr = this.mSpline;
        int i9 = 0;
        if (curveFitArr != null) {
            double d10 = adjustedPosition;
            curveFitArr[0].getSlope(d10, this.mInterpolateVelocity);
            this.mSpline[0].getPos(d10, this.mInterpolateData);
            float f13 = this.mVelocity[0];
            while (true) {
                dArr = this.mInterpolateVelocity;
                if (i9 >= dArr.length) {
                    break;
                }
                dArr[i9] = dArr[i9] * f13;
                i9++;
            }
            CurveFit curveFit = this.mArcSpline;
            if (curveFit != null) {
                double[] dArr2 = this.mInterpolateData;
                if (dArr2.length > 0) {
                    curveFit.getPos(d10, dArr2);
                    this.mArcSpline.getSlope(d10, this.mInterpolateVelocity);
                    this.mStartMotionPath.setDpDt(f11, f12, fArr, this.mInterpolateVariables, this.mInterpolateVelocity, this.mInterpolateData);
                    return;
                }
                return;
            }
            this.mStartMotionPath.setDpDt(f11, f12, fArr, this.mInterpolateVariables, dArr, this.mInterpolateData);
            return;
        }
        MotionPaths motionPaths = this.mEndMotionPath;
        float f14 = motionPaths.f833x;
        MotionPaths motionPaths2 = this.mStartMotionPath;
        float f15 = f14 - motionPaths2.f833x;
        float f16 = motionPaths.f834y - motionPaths2.f834y;
        float f17 = (motionPaths.width - motionPaths2.width) + f15;
        float f18 = (motionPaths.height - motionPaths2.height) + f16;
        fArr[0] = (f15 * (1.0f - f11)) + (f17 * f11);
        fArr[1] = (f16 * (1.0f - f12)) + (f18 * f12);
    }

    public int getDrawPath() {
        int i9 = this.mStartMotionPath.mDrawPath;
        Iterator<MotionPaths> it = this.mMotionPaths.iterator();
        while (it.hasNext()) {
            i9 = Math.max(i9, it.next().mDrawPath);
        }
        return Math.max(i9, this.mEndMotionPath.mDrawPath);
    }

    public float getFinalHeight() {
        return this.mEndMotionPath.height;
    }

    public float getFinalWidth() {
        return this.mEndMotionPath.width;
    }

    public float getFinalX() {
        return this.mEndMotionPath.f833x;
    }

    public float getFinalY() {
        return this.mEndMotionPath.f834y;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public MotionPaths getKeyFrame(int i9) {
        return this.mMotionPaths.get(i9);
    }

    public int getKeyFrameInfo(int i9, int[] iArr) {
        float[] fArr = new float[2];
        Iterator<Key> it = this.mKeyList.iterator();
        int i10 = 0;
        int i11 = 0;
        while (it.hasNext()) {
            Key next = it.next();
            int i12 = next.mType;
            if (i12 == i9 || i9 != -1) {
                iArr[i11] = 0;
                int i13 = i11 + 1;
                iArr[i13] = i12;
                int i14 = i13 + 1;
                int i15 = next.mFramePosition;
                iArr[i14] = i15;
                double d10 = i15 / 100.0f;
                this.mSpline[0].getPos(d10, this.mInterpolateData);
                this.mStartMotionPath.getCenter(d10, this.mInterpolateVariables, this.mInterpolateData, fArr, 0);
                int i16 = i14 + 1;
                iArr[i16] = Float.floatToIntBits(fArr[0]);
                int i17 = i16 + 1;
                iArr[i17] = Float.floatToIntBits(fArr[1]);
                if (next instanceof KeyPosition) {
                    KeyPosition keyPosition = (KeyPosition) next;
                    int i18 = i17 + 1;
                    iArr[i18] = keyPosition.mPositionType;
                    int i19 = i18 + 1;
                    iArr[i19] = Float.floatToIntBits(keyPosition.mPercentX);
                    i17 = i19 + 1;
                    iArr[i17] = Float.floatToIntBits(keyPosition.mPercentY);
                }
                int i20 = i17 + 1;
                iArr[i11] = i20 - i11;
                i10++;
                i11 = i20;
            }
        }
        return i10;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public float getKeyFrameParameter(int i9, float f10, float f11) {
        MotionPaths motionPaths = this.mEndMotionPath;
        float f12 = motionPaths.f833x;
        MotionPaths motionPaths2 = this.mStartMotionPath;
        float f13 = motionPaths2.f833x;
        float f14 = f12 - f13;
        float f15 = motionPaths.f834y;
        float f16 = motionPaths2.f834y;
        float f17 = f15 - f16;
        float f18 = f13 + (motionPaths2.width / 2.0f);
        float f19 = f16 + (motionPaths2.height / 2.0f);
        float hypot = (float) Math.hypot(f14, f17);
        if (hypot < 1.0E-7d) {
            return Float.NaN;
        }
        float f20 = f10 - f18;
        float f21 = f11 - f19;
        if (((float) Math.hypot(f20, f21)) == 0.0f) {
            return 0.0f;
        }
        float f22 = (f20 * f14) + (f21 * f17);
        if (i9 != 0) {
            if (i9 != 1) {
                if (i9 != 2) {
                    if (i9 != 3) {
                        if (i9 != 4) {
                            if (i9 != 5) {
                                return 0.0f;
                            }
                            return f21 / f17;
                        }
                        return f20 / f17;
                    }
                    return f21 / f14;
                }
                return f20 / f14;
            }
            return (float) Math.sqrt((hypot * hypot) - (f22 * f22));
        }
        return f22 / hypot;
    }

    public int getKeyFramePositions(int[] iArr, float[] fArr) {
        Iterator<Key> it = this.mKeyList.iterator();
        int i9 = 0;
        int i10 = 0;
        while (it.hasNext()) {
            Key next = it.next();
            int i11 = next.mFramePosition;
            iArr[i9] = (next.mType * 1000) + i11;
            double d10 = i11 / 100.0f;
            this.mSpline[0].getPos(d10, this.mInterpolateData);
            this.mStartMotionPath.getCenter(d10, this.mInterpolateVariables, this.mInterpolateData, fArr, i10);
            i10 += 2;
            i9++;
        }
        return i9;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public double[] getPos(double d10) {
        this.mSpline[0].getPos(d10, this.mInterpolateData);
        CurveFit curveFit = this.mArcSpline;
        if (curveFit != null) {
            double[] dArr = this.mInterpolateData;
            if (dArr.length > 0) {
                curveFit.getPos(d10, dArr);
            }
        }
        return this.mInterpolateData;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public KeyPositionBase getPositionKeyframe(int i9, int i10, float f10, float f11) {
        RectF rectF = new RectF();
        MotionPaths motionPaths = this.mStartMotionPath;
        float f12 = motionPaths.f833x;
        rectF.left = f12;
        float f13 = motionPaths.f834y;
        rectF.top = f13;
        rectF.right = f12 + motionPaths.width;
        rectF.bottom = f13 + motionPaths.height;
        RectF rectF2 = new RectF();
        MotionPaths motionPaths2 = this.mEndMotionPath;
        float f14 = motionPaths2.f833x;
        rectF2.left = f14;
        float f15 = motionPaths2.f834y;
        rectF2.top = f15;
        rectF2.right = f14 + motionPaths2.width;
        rectF2.bottom = f15 + motionPaths2.height;
        Iterator<Key> it = this.mKeyList.iterator();
        while (it.hasNext()) {
            Key next = it.next();
            if (next instanceof KeyPositionBase) {
                KeyPositionBase keyPositionBase = (KeyPositionBase) next;
                if (keyPositionBase.intersects(i9, i10, rectF, rectF2, f10, f11)) {
                    return keyPositionBase;
                }
            }
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void getPostLayoutDvDp(float f10, int i9, int i10, float f11, float f12, float[] fArr) {
        float adjustedPosition = getAdjustedPosition(f10, this.mVelocity);
        HashMap<String, ViewSpline> hashMap = this.mAttributesMap;
        ViewSpline viewSpline = hashMap == null ? null : hashMap.get("translationX");
        HashMap<String, ViewSpline> hashMap2 = this.mAttributesMap;
        ViewSpline viewSpline2 = hashMap2 == null ? null : hashMap2.get("translationY");
        HashMap<String, ViewSpline> hashMap3 = this.mAttributesMap;
        ViewSpline viewSpline3 = hashMap3 == null ? null : hashMap3.get(Key.ROTATION);
        HashMap<String, ViewSpline> hashMap4 = this.mAttributesMap;
        ViewSpline viewSpline4 = hashMap4 == null ? null : hashMap4.get("scaleX");
        HashMap<String, ViewSpline> hashMap5 = this.mAttributesMap;
        ViewSpline viewSpline5 = hashMap5 == null ? null : hashMap5.get("scaleY");
        HashMap<String, ViewOscillator> hashMap6 = this.mCycleMap;
        ViewOscillator viewOscillator = hashMap6 == null ? null : hashMap6.get("translationX");
        HashMap<String, ViewOscillator> hashMap7 = this.mCycleMap;
        ViewOscillator viewOscillator2 = hashMap7 == null ? null : hashMap7.get("translationY");
        HashMap<String, ViewOscillator> hashMap8 = this.mCycleMap;
        ViewOscillator viewOscillator3 = hashMap8 == null ? null : hashMap8.get(Key.ROTATION);
        HashMap<String, ViewOscillator> hashMap9 = this.mCycleMap;
        ViewOscillator viewOscillator4 = hashMap9 == null ? null : hashMap9.get("scaleX");
        HashMap<String, ViewOscillator> hashMap10 = this.mCycleMap;
        ViewOscillator viewOscillator5 = hashMap10 != null ? hashMap10.get("scaleY") : null;
        VelocityMatrix velocityMatrix = new VelocityMatrix();
        velocityMatrix.clear();
        velocityMatrix.setRotationVelocity(viewSpline3, adjustedPosition);
        velocityMatrix.setTranslationVelocity(viewSpline, viewSpline2, adjustedPosition);
        velocityMatrix.setScaleVelocity(viewSpline4, viewSpline5, adjustedPosition);
        velocityMatrix.setRotationVelocity(viewOscillator3, adjustedPosition);
        velocityMatrix.setTranslationVelocity(viewOscillator, viewOscillator2, adjustedPosition);
        velocityMatrix.setScaleVelocity(viewOscillator4, viewOscillator5, adjustedPosition);
        CurveFit curveFit = this.mArcSpline;
        if (curveFit != null) {
            double[] dArr = this.mInterpolateData;
            if (dArr.length > 0) {
                double d10 = adjustedPosition;
                curveFit.getPos(d10, dArr);
                this.mArcSpline.getSlope(d10, this.mInterpolateVelocity);
                this.mStartMotionPath.setDpDt(f11, f12, fArr, this.mInterpolateVariables, this.mInterpolateVelocity, this.mInterpolateData);
            }
            velocityMatrix.applyTransform(f11, f12, i9, i10, fArr);
            return;
        }
        int i11 = 0;
        if (this.mSpline != null) {
            double adjustedPosition2 = getAdjustedPosition(adjustedPosition, this.mVelocity);
            this.mSpline[0].getSlope(adjustedPosition2, this.mInterpolateVelocity);
            this.mSpline[0].getPos(adjustedPosition2, this.mInterpolateData);
            float f13 = this.mVelocity[0];
            while (true) {
                double[] dArr2 = this.mInterpolateVelocity;
                if (i11 < dArr2.length) {
                    dArr2[i11] = dArr2[i11] * f13;
                    i11++;
                } else {
                    this.mStartMotionPath.setDpDt(f11, f12, fArr, this.mInterpolateVariables, dArr2, this.mInterpolateData);
                    velocityMatrix.applyTransform(f11, f12, i9, i10, fArr);
                    return;
                }
            }
        } else {
            MotionPaths motionPaths = this.mEndMotionPath;
            float f14 = motionPaths.f833x;
            MotionPaths motionPaths2 = this.mStartMotionPath;
            float f15 = f14 - motionPaths2.f833x;
            float f16 = motionPaths.f834y - motionPaths2.f834y;
            ViewOscillator viewOscillator6 = viewOscillator4;
            float f17 = (motionPaths.height - motionPaths2.height) + f16;
            fArr[0] = (f15 * (1.0f - f11)) + (((motionPaths.width - motionPaths2.width) + f15) * f11);
            fArr[1] = (f16 * (1.0f - f12)) + (f17 * f12);
            velocityMatrix.clear();
            velocityMatrix.setRotationVelocity(viewSpline3, adjustedPosition);
            velocityMatrix.setTranslationVelocity(viewSpline, viewSpline2, adjustedPosition);
            velocityMatrix.setScaleVelocity(viewSpline4, viewSpline5, adjustedPosition);
            velocityMatrix.setRotationVelocity(viewOscillator3, adjustedPosition);
            velocityMatrix.setTranslationVelocity(viewOscillator, viewOscillator2, adjustedPosition);
            velocityMatrix.setScaleVelocity(viewOscillator6, viewOscillator5, adjustedPosition);
            velocityMatrix.applyTransform(f11, f12, i9, i10, fArr);
        }
    }

    public float getStartHeight() {
        return this.mStartMotionPath.height;
    }

    public float getStartWidth() {
        return this.mStartMotionPath.width;
    }

    public float getStartX() {
        return this.mStartMotionPath.f833x;
    }

    public float getStartY() {
        return this.mStartMotionPath.f834y;
    }

    public int getTransformPivotTarget() {
        return this.mTransformPivotTarget;
    }

    public View getView() {
        return this.mView;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean interpolate(View view, float f10, long j10, KeyCache keyCache) {
        ViewTimeCycle.PathRotate pathRotate;
        boolean z10;
        char c10;
        double d10;
        View view2;
        float f11;
        float adjustedPosition = getAdjustedPosition(f10, null);
        int i9 = this.mQuantizeMotionSteps;
        if (i9 != Key.UNSET) {
            float f12 = 1.0f / i9;
            float floor = ((float) Math.floor(adjustedPosition / f12)) * f12;
            float f13 = (adjustedPosition % f12) / f12;
            if (!Float.isNaN(this.mQuantizeMotionPhase)) {
                f13 = (f13 + this.mQuantizeMotionPhase) % 1.0f;
            }
            Interpolator interpolator = this.mQuantizeMotionInterpolator;
            if (interpolator != null) {
                f11 = interpolator.getInterpolation(f13);
            } else {
                f11 = ((double) f13) > 0.5d ? 1.0f : 0.0f;
            }
            adjustedPosition = (f11 * f12) + floor;
        }
        float f14 = adjustedPosition;
        HashMap<String, ViewSpline> hashMap = this.mAttributesMap;
        if (hashMap != null) {
            for (ViewSpline viewSpline : hashMap.values()) {
                viewSpline.setProperty(view, f14);
            }
        }
        HashMap<String, ViewTimeCycle> hashMap2 = this.mTimeCycleAttributesMap;
        if (hashMap2 != null) {
            ViewTimeCycle.PathRotate pathRotate2 = null;
            boolean z11 = false;
            for (ViewTimeCycle viewTimeCycle : hashMap2.values()) {
                if (viewTimeCycle instanceof ViewTimeCycle.PathRotate) {
                    pathRotate2 = (ViewTimeCycle.PathRotate) viewTimeCycle;
                } else {
                    z11 |= viewTimeCycle.setProperty(view, f14, j10, keyCache);
                }
            }
            z10 = z11;
            pathRotate = pathRotate2;
        } else {
            pathRotate = null;
            z10 = false;
        }
        CurveFit[] curveFitArr = this.mSpline;
        if (curveFitArr != null) {
            double d11 = f14;
            curveFitArr[0].getPos(d11, this.mInterpolateData);
            this.mSpline[0].getSlope(d11, this.mInterpolateVelocity);
            CurveFit curveFit = this.mArcSpline;
            if (curveFit != null) {
                double[] dArr = this.mInterpolateData;
                if (dArr.length > 0) {
                    curveFit.getPos(d11, dArr);
                    this.mArcSpline.getSlope(d11, this.mInterpolateVelocity);
                }
            }
            if (this.mNoMovement) {
                d10 = d11;
            } else {
                d10 = d11;
                this.mStartMotionPath.setView(f14, view, this.mInterpolateVariables, this.mInterpolateData, this.mInterpolateVelocity, null, this.mForceMeasure);
                this.mForceMeasure = false;
            }
            if (this.mTransformPivotTarget != Key.UNSET) {
                if (this.mTransformPivotView == null) {
                    this.mTransformPivotView = ((View) view.getParent()).findViewById(this.mTransformPivotTarget);
                }
                if (this.mTransformPivotView != null) {
                    float top = (view2.getTop() + this.mTransformPivotView.getBottom()) / 2.0f;
                    float left = (this.mTransformPivotView.getLeft() + this.mTransformPivotView.getRight()) / 2.0f;
                    if (view.getRight() - view.getLeft() > 0 && view.getBottom() - view.getTop() > 0) {
                        view.setPivotX(left - view.getLeft());
                        view.setPivotY(top - view.getTop());
                    }
                }
            }
            HashMap<String, ViewSpline> hashMap3 = this.mAttributesMap;
            if (hashMap3 != null) {
                for (ViewSpline viewSpline2 : hashMap3.values()) {
                    if (viewSpline2 instanceof ViewSpline.PathRotate) {
                        double[] dArr2 = this.mInterpolateVelocity;
                        if (dArr2.length > 1) {
                            ((ViewSpline.PathRotate) viewSpline2).setPathRotate(view, f14, dArr2[0], dArr2[1]);
                        }
                    }
                }
            }
            if (pathRotate != null) {
                double[] dArr3 = this.mInterpolateVelocity;
                c10 = 1;
                z10 |= pathRotate.setPathRotate(view, keyCache, f14, j10, dArr3[0], dArr3[1]);
            } else {
                c10 = 1;
            }
            int i10 = 1;
            while (true) {
                CurveFit[] curveFitArr2 = this.mSpline;
                if (i10 >= curveFitArr2.length) {
                    break;
                }
                curveFitArr2[i10].getPos(d10, this.mValuesBuff);
                CustomSupport.setInterpolatedValue(this.mStartMotionPath.attributes.get(this.mAttributeNames[i10 - 1]), view, this.mValuesBuff);
                i10++;
            }
            MotionConstrainedPoint motionConstrainedPoint = this.mStartPoint;
            if (motionConstrainedPoint.mVisibilityMode == 0) {
                if (f14 <= 0.0f) {
                    view.setVisibility(motionConstrainedPoint.visibility);
                } else if (f14 >= 1.0f) {
                    view.setVisibility(this.mEndPoint.visibility);
                } else if (this.mEndPoint.visibility != motionConstrainedPoint.visibility) {
                    view.setVisibility(0);
                }
            }
            if (this.mKeyTriggers != null) {
                int i11 = 0;
                while (true) {
                    KeyTrigger[] keyTriggerArr = this.mKeyTriggers;
                    if (i11 >= keyTriggerArr.length) {
                        break;
                    }
                    keyTriggerArr[i11].conditionallyFire(f14, view);
                    i11++;
                }
            }
        } else {
            c10 = 1;
            MotionPaths motionPaths = this.mStartMotionPath;
            float f15 = motionPaths.f833x;
            MotionPaths motionPaths2 = this.mEndMotionPath;
            float f16 = f15 + ((motionPaths2.f833x - f15) * f14);
            float f17 = motionPaths.f834y;
            float f18 = f17 + ((motionPaths2.f834y - f17) * f14);
            float f19 = motionPaths.width;
            float f20 = motionPaths2.width;
            float f21 = motionPaths.height;
            float f22 = motionPaths2.height;
            float f23 = f16 + 0.5f;
            int i12 = (int) f23;
            float f24 = f18 + 0.5f;
            int i13 = (int) f24;
            int i14 = (int) (f23 + ((f20 - f19) * f14) + f19);
            int i15 = (int) (f24 + ((f22 - f21) * f14) + f21);
            int i16 = i14 - i12;
            int i17 = i15 - i13;
            if (f20 != f19 || f22 != f21 || this.mForceMeasure) {
                view.measure(View.MeasureSpec.makeMeasureSpec(i16, BasicMeasure.EXACTLY), View.MeasureSpec.makeMeasureSpec(i17, BasicMeasure.EXACTLY));
                this.mForceMeasure = false;
            }
            view.layout(i12, i13, i14, i15);
        }
        HashMap<String, ViewOscillator> hashMap4 = this.mCycleMap;
        if (hashMap4 != null) {
            for (ViewOscillator viewOscillator : hashMap4.values()) {
                if (viewOscillator instanceof ViewOscillator.PathRotateSet) {
                    double[] dArr4 = this.mInterpolateVelocity;
                    ((ViewOscillator.PathRotateSet) viewOscillator).setPathRotate(view, f14, dArr4[0], dArr4[c10]);
                } else {
                    viewOscillator.setProperty(view, f14);
                }
            }
        }
        return z10;
    }

    String name() {
        return this.mView.getContext().getResources().getResourceEntryName(this.mView.getId());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void positionKeyframe(View view, KeyPositionBase keyPositionBase, float f10, float f11, String[] strArr, float[] fArr) {
        RectF rectF = new RectF();
        MotionPaths motionPaths = this.mStartMotionPath;
        float f12 = motionPaths.f833x;
        rectF.left = f12;
        float f13 = motionPaths.f834y;
        rectF.top = f13;
        rectF.right = f12 + motionPaths.width;
        rectF.bottom = f13 + motionPaths.height;
        RectF rectF2 = new RectF();
        MotionPaths motionPaths2 = this.mEndMotionPath;
        float f14 = motionPaths2.f833x;
        rectF2.left = f14;
        float f15 = motionPaths2.f834y;
        rectF2.top = f15;
        rectF2.right = f14 + motionPaths2.width;
        rectF2.bottom = f15 + motionPaths2.height;
        keyPositionBase.positionAttributes(view, rectF, rectF2, f10, f11, strArr, fArr);
    }

    public void remeasure() {
        this.mForceMeasure = true;
    }

    void rotate(Rect rect, Rect rect2, int i9, int i10, int i11) {
        if (i9 == 1) {
            int i12 = rect.left + rect.right;
            rect2.left = ((rect.top + rect.bottom) - rect.width()) / 2;
            rect2.top = i11 - ((i12 + rect.height()) / 2);
            rect2.right = rect2.left + rect.width();
            rect2.bottom = rect2.top + rect.height();
        } else if (i9 == 2) {
            int i13 = rect.left + rect.right;
            rect2.left = i10 - (((rect.top + rect.bottom) + rect.width()) / 2);
            rect2.top = (i13 - rect.height()) / 2;
            rect2.right = rect2.left + rect.width();
            rect2.bottom = rect2.top + rect.height();
        } else if (i9 == 3) {
            int i14 = rect.left + rect.right;
            rect2.left = ((rect.height() / 2) + rect.top) - (i14 / 2);
            rect2.top = i11 - ((i14 + rect.height()) / 2);
            rect2.right = rect2.left + rect.width();
            rect2.bottom = rect2.top + rect.height();
        } else if (i9 != 4) {
        } else {
            int i15 = rect.left + rect.right;
            rect2.left = i10 - (((rect.bottom + rect.top) + rect.width()) / 2);
            rect2.top = (i15 - rect.height()) / 2;
            rect2.right = rect2.left + rect.width();
            rect2.bottom = rect2.top + rect.height();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setBothStates(View view) {
        MotionPaths motionPaths = this.mStartMotionPath;
        motionPaths.time = 0.0f;
        motionPaths.position = 0.0f;
        this.mNoMovement = true;
        motionPaths.setBounds(view.getX(), view.getY(), view.getWidth(), view.getHeight());
        this.mEndMotionPath.setBounds(view.getX(), view.getY(), view.getWidth(), view.getHeight());
        this.mStartPoint.setState(view);
        this.mEndPoint.setState(view);
    }

    public void setDrawPath(int i9) {
        this.mStartMotionPath.mDrawPath = i9;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setEndState(Rect rect, ConstraintSet constraintSet, int i9, int i10) {
        int i11 = constraintSet.mRotate;
        if (i11 != 0) {
            rotate(rect, this.mTempRect, i11, i9, i10);
            rect = this.mTempRect;
        }
        MotionPaths motionPaths = this.mEndMotionPath;
        motionPaths.time = 1.0f;
        motionPaths.position = 1.0f;
        readView(motionPaths);
        this.mEndMotionPath.setBounds(rect.left, rect.top, rect.width(), rect.height());
        this.mEndMotionPath.applyParameters(constraintSet.getParameters(this.mId));
        this.mEndPoint.setState(rect, constraintSet, i11, this.mId);
    }

    public void setPathMotionArc(int i9) {
        this.mPathMotionArc = i9;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setStartCurrentState(View view) {
        MotionPaths motionPaths = this.mStartMotionPath;
        motionPaths.time = 0.0f;
        motionPaths.position = 0.0f;
        motionPaths.setBounds(view.getX(), view.getY(), view.getWidth(), view.getHeight());
        this.mStartPoint.setState(view);
    }

    public void setStartState(ViewState viewState, View view, int i9, int i10, int i11) {
        MotionPaths motionPaths = this.mStartMotionPath;
        motionPaths.time = 0.0f;
        motionPaths.position = 0.0f;
        Rect rect = new Rect();
        if (i9 == 1) {
            int i12 = viewState.left + viewState.right;
            rect.left = ((viewState.top + viewState.bottom) - viewState.width()) / 2;
            rect.top = i10 - ((i12 + viewState.height()) / 2);
            rect.right = rect.left + viewState.width();
            rect.bottom = rect.top + viewState.height();
        } else if (i9 == 2) {
            int i13 = viewState.left + viewState.right;
            rect.left = i11 - (((viewState.top + viewState.bottom) + viewState.width()) / 2);
            rect.top = (i13 - viewState.height()) / 2;
            rect.right = rect.left + viewState.width();
            rect.bottom = rect.top + viewState.height();
        }
        this.mStartMotionPath.setBounds(rect.left, rect.top, rect.width(), rect.height());
        this.mStartPoint.setState(rect, view, i9, viewState.rotation);
    }

    public void setTransformPivotTarget(int i9) {
        this.mTransformPivotTarget = i9;
        this.mTransformPivotView = null;
    }

    public void setView(View view) {
        this.mView = view;
        this.mId = view.getId();
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        if (layoutParams instanceof ConstraintLayout.LayoutParams) {
            this.mConstraintTag = ((ConstraintLayout.LayoutParams) layoutParams).getConstraintTag();
        }
    }

    public void setup(int i9, int i10, float f10, long j10) {
        ArrayList arrayList;
        String[] strArr;
        ConstraintAttribute constraintAttribute;
        ViewTimeCycle makeSpline;
        ConstraintAttribute constraintAttribute2;
        Integer num;
        ViewSpline makeSpline2;
        ConstraintAttribute constraintAttribute3;
        new HashSet();
        HashSet<String> hashSet = new HashSet<>();
        HashSet<String> hashSet2 = new HashSet<>();
        HashSet<String> hashSet3 = new HashSet<>();
        HashMap<String, Integer> hashMap = new HashMap<>();
        int i11 = this.mPathMotionArc;
        if (i11 != Key.UNSET) {
            this.mStartMotionPath.mPathMotionArc = i11;
        }
        this.mStartPoint.different(this.mEndPoint, hashSet2);
        ArrayList<Key> arrayList2 = this.mKeyList;
        if (arrayList2 != null) {
            Iterator<Key> it = arrayList2.iterator();
            arrayList = null;
            while (it.hasNext()) {
                Key next = it.next();
                if (next instanceof KeyPosition) {
                    KeyPosition keyPosition = (KeyPosition) next;
                    insertKey(new MotionPaths(i9, i10, keyPosition, this.mStartMotionPath, this.mEndMotionPath));
                    int i12 = keyPosition.mCurveFit;
                    if (i12 != Key.UNSET) {
                        this.mCurveFitType = i12;
                    }
                } else if (next instanceof KeyCycle) {
                    next.getAttributeNames(hashSet3);
                } else if (next instanceof KeyTimeCycle) {
                    next.getAttributeNames(hashSet);
                } else if (next instanceof KeyTrigger) {
                    if (arrayList == null) {
                        arrayList = new ArrayList();
                    }
                    arrayList.add((KeyTrigger) next);
                } else {
                    next.setInterpolation(hashMap);
                    next.getAttributeNames(hashSet2);
                }
            }
        } else {
            arrayList = null;
        }
        char c10 = 0;
        if (arrayList != null) {
            this.mKeyTriggers = (KeyTrigger[]) arrayList.toArray(new KeyTrigger[0]);
        }
        char c11 = 1;
        if (!hashSet2.isEmpty()) {
            this.mAttributesMap = new HashMap<>();
            Iterator<String> it2 = hashSet2.iterator();
            while (it2.hasNext()) {
                String next2 = it2.next();
                if (next2.startsWith("CUSTOM,")) {
                    SparseArray sparseArray = new SparseArray();
                    String str = next2.split(",")[c11];
                    Iterator<Key> it3 = this.mKeyList.iterator();
                    while (it3.hasNext()) {
                        Key next3 = it3.next();
                        HashMap<String, ConstraintAttribute> hashMap2 = next3.mCustomConstraints;
                        if (hashMap2 != null && (constraintAttribute3 = hashMap2.get(str)) != null) {
                            sparseArray.append(next3.mFramePosition, constraintAttribute3);
                        }
                    }
                    makeSpline2 = ViewSpline.makeCustomSpline(next2, sparseArray);
                } else {
                    makeSpline2 = ViewSpline.makeSpline(next2);
                }
                if (makeSpline2 != null) {
                    makeSpline2.setType(next2);
                    this.mAttributesMap.put(next2, makeSpline2);
                }
                c11 = 1;
            }
            ArrayList<Key> arrayList3 = this.mKeyList;
            if (arrayList3 != null) {
                Iterator<Key> it4 = arrayList3.iterator();
                while (it4.hasNext()) {
                    Key next4 = it4.next();
                    if (next4 instanceof KeyAttributes) {
                        next4.addValues(this.mAttributesMap);
                    }
                }
            }
            this.mStartPoint.addValues(this.mAttributesMap, 0);
            this.mEndPoint.addValues(this.mAttributesMap, 100);
            for (String str2 : this.mAttributesMap.keySet()) {
                int intValue = (!hashMap.containsKey(str2) || (num = hashMap.get(str2)) == null) ? 0 : num.intValue();
                ViewSpline viewSpline = this.mAttributesMap.get(str2);
                if (viewSpline != null) {
                    viewSpline.setup(intValue);
                }
            }
        }
        if (!hashSet.isEmpty()) {
            if (this.mTimeCycleAttributesMap == null) {
                this.mTimeCycleAttributesMap = new HashMap<>();
            }
            Iterator<String> it5 = hashSet.iterator();
            while (it5.hasNext()) {
                String next5 = it5.next();
                if (!this.mTimeCycleAttributesMap.containsKey(next5)) {
                    if (next5.startsWith("CUSTOM,")) {
                        SparseArray sparseArray2 = new SparseArray();
                        String str3 = next5.split(",")[1];
                        Iterator<Key> it6 = this.mKeyList.iterator();
                        while (it6.hasNext()) {
                            Key next6 = it6.next();
                            HashMap<String, ConstraintAttribute> hashMap3 = next6.mCustomConstraints;
                            if (hashMap3 != null && (constraintAttribute2 = hashMap3.get(str3)) != null) {
                                sparseArray2.append(next6.mFramePosition, constraintAttribute2);
                            }
                        }
                        makeSpline = ViewTimeCycle.makeCustomSpline(next5, sparseArray2);
                    } else {
                        makeSpline = ViewTimeCycle.makeSpline(next5, j10);
                    }
                    if (makeSpline != null) {
                        makeSpline.setType(next5);
                        this.mTimeCycleAttributesMap.put(next5, makeSpline);
                    }
                }
            }
            ArrayList<Key> arrayList4 = this.mKeyList;
            if (arrayList4 != null) {
                Iterator<Key> it7 = arrayList4.iterator();
                while (it7.hasNext()) {
                    Key next7 = it7.next();
                    if (next7 instanceof KeyTimeCycle) {
                        ((KeyTimeCycle) next7).addTimeValues(this.mTimeCycleAttributesMap);
                    }
                }
            }
            for (String str4 : this.mTimeCycleAttributesMap.keySet()) {
                this.mTimeCycleAttributesMap.get(str4).setup(hashMap.containsKey(str4) ? hashMap.get(str4).intValue() : 0);
            }
        }
        int i13 = 2;
        int size = this.mMotionPaths.size() + 2;
        MotionPaths[] motionPathsArr = new MotionPaths[size];
        motionPathsArr[0] = this.mStartMotionPath;
        motionPathsArr[size - 1] = this.mEndMotionPath;
        if (this.mMotionPaths.size() > 0 && this.mCurveFitType == -1) {
            this.mCurveFitType = 0;
        }
        Iterator<MotionPaths> it8 = this.mMotionPaths.iterator();
        int i14 = 1;
        while (it8.hasNext()) {
            motionPathsArr[i14] = it8.next();
            i14++;
        }
        HashSet hashSet4 = new HashSet();
        for (String str5 : this.mEndMotionPath.attributes.keySet()) {
            if (this.mStartMotionPath.attributes.containsKey(str5)) {
                if (!hashSet2.contains("CUSTOM," + str5)) {
                    hashSet4.add(str5);
                }
            }
        }
        String[] strArr2 = (String[]) hashSet4.toArray(new String[0]);
        this.mAttributeNames = strArr2;
        this.mAttributeInterpolatorCount = new int[strArr2.length];
        int i15 = 0;
        while (true) {
            strArr = this.mAttributeNames;
            if (i15 >= strArr.length) {
                break;
            }
            String str6 = strArr[i15];
            this.mAttributeInterpolatorCount[i15] = 0;
            int i16 = 0;
            while (true) {
                if (i16 >= size) {
                    break;
                }
                if (motionPathsArr[i16].attributes.containsKey(str6) && (constraintAttribute = motionPathsArr[i16].attributes.get(str6)) != null) {
                    int[] iArr = this.mAttributeInterpolatorCount;
                    iArr[i15] = iArr[i15] + constraintAttribute.numberOfInterpolatedValues();
                    break;
                }
                i16++;
            }
            i15++;
        }
        boolean z10 = motionPathsArr[0].mPathMotionArc != Key.UNSET;
        int length = 18 + strArr.length;
        boolean[] zArr = new boolean[length];
        for (int i17 = 1; i17 < size; i17++) {
            motionPathsArr[i17].different(motionPathsArr[i17 - 1], zArr, this.mAttributeNames, z10);
        }
        int i18 = 0;
        for (int i19 = 1; i19 < length; i19++) {
            if (zArr[i19]) {
                i18++;
            }
        }
        this.mInterpolateVariables = new int[i18];
        int max = Math.max(2, i18);
        this.mInterpolateData = new double[max];
        this.mInterpolateVelocity = new double[max];
        int i20 = 0;
        for (int i21 = 1; i21 < length; i21++) {
            if (zArr[i21]) {
                this.mInterpolateVariables[i20] = i21;
                i20++;
            }
        }
        double[][] dArr = (double[][]) Array.newInstance(double.class, size, this.mInterpolateVariables.length);
        double[] dArr2 = new double[size];
        for (int i22 = 0; i22 < size; i22++) {
            motionPathsArr[i22].fillStandard(dArr[i22], this.mInterpolateVariables);
            dArr2[i22] = motionPathsArr[i22].time;
        }
        int i23 = 0;
        while (true) {
            int[] iArr2 = this.mInterpolateVariables;
            if (i23 >= iArr2.length) {
                break;
            }
            if (iArr2[i23] < MotionPaths.names.length) {
                String str7 = MotionPaths.names[this.mInterpolateVariables[i23]] + " [";
                for (int i24 = 0; i24 < size; i24++) {
                    str7 = str7 + dArr[i24][i23];
                }
            }
            i23++;
        }
        this.mSpline = new CurveFit[this.mAttributeNames.length + 1];
        int i25 = 0;
        while (true) {
            String[] strArr3 = this.mAttributeNames;
            if (i25 >= strArr3.length) {
                break;
            }
            String str8 = strArr3[i25];
            int i26 = 0;
            double[] dArr3 = null;
            int i27 = 0;
            double[][] dArr4 = null;
            while (i26 < size) {
                if (motionPathsArr[i26].hasCustomData(str8)) {
                    if (dArr4 == null) {
                        dArr3 = new double[size];
                        int[] iArr3 = new int[i13];
                        iArr3[1] = motionPathsArr[i26].getCustomDataCount(str8);
                        iArr3[c10] = size;
                        dArr4 = (double[][]) Array.newInstance(double.class, iArr3);
                    }
                    dArr3[i27] = motionPathsArr[i26].time;
                    motionPathsArr[i26].getCustomData(str8, dArr4[i27], 0);
                    i27++;
                }
                i26++;
                i13 = 2;
                c10 = 0;
            }
            i25++;
            this.mSpline[i25] = CurveFit.get(this.mCurveFitType, Arrays.copyOf(dArr3, i27), (double[][]) Arrays.copyOf(dArr4, i27));
            i13 = 2;
            c10 = 0;
        }
        this.mSpline[0] = CurveFit.get(this.mCurveFitType, dArr2, dArr);
        if (motionPathsArr[0].mPathMotionArc != Key.UNSET) {
            int[] iArr4 = new int[size];
            double[] dArr5 = new double[size];
            double[][] dArr6 = (double[][]) Array.newInstance(double.class, size, 2);
            for (int i28 = 0; i28 < size; i28++) {
                iArr4[i28] = motionPathsArr[i28].mPathMotionArc;
                dArr5[i28] = motionPathsArr[i28].time;
                dArr6[i28][0] = motionPathsArr[i28].f833x;
                dArr6[i28][1] = motionPathsArr[i28].f834y;
            }
            this.mArcSpline = CurveFit.getArc(iArr4, dArr5, dArr6);
        }
        float f11 = Float.NaN;
        this.mCycleMap = new HashMap<>();
        if (this.mKeyList != null) {
            Iterator<String> it9 = hashSet3.iterator();
            while (it9.hasNext()) {
                String next8 = it9.next();
                ViewOscillator makeSpline3 = ViewOscillator.makeSpline(next8);
                if (makeSpline3 != null) {
                    if (makeSpline3.variesByPath() && Float.isNaN(f11)) {
                        f11 = getPreCycleDistance();
                    }
                    makeSpline3.setType(next8);
                    this.mCycleMap.put(next8, makeSpline3);
                }
            }
            Iterator<Key> it10 = this.mKeyList.iterator();
            while (it10.hasNext()) {
                Key next9 = it10.next();
                if (next9 instanceof KeyCycle) {
                    ((KeyCycle) next9).addCycleValues(this.mCycleMap);
                }
            }
            for (ViewOscillator viewOscillator : this.mCycleMap.values()) {
                viewOscillator.setup(f11);
            }
        }
    }

    public void setupRelative(MotionController motionController) {
        this.mStartMotionPath.setupRelative(motionController, motionController.mStartMotionPath);
        this.mEndMotionPath.setupRelative(motionController, motionController.mEndMotionPath);
    }

    public String toString() {
        return " start: x: " + this.mStartMotionPath.f833x + " y: " + this.mStartMotionPath.f834y + " end: x: " + this.mEndMotionPath.f833x + " y: " + this.mEndMotionPath.f834y;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setStartState(Rect rect, ConstraintSet constraintSet, int i9, int i10) {
        int i11 = constraintSet.mRotate;
        if (i11 != 0) {
            rotate(rect, this.mTempRect, i11, i9, i10);
        }
        MotionPaths motionPaths = this.mStartMotionPath;
        motionPaths.time = 0.0f;
        motionPaths.position = 0.0f;
        readView(motionPaths);
        this.mStartMotionPath.setBounds(rect.left, rect.top, rect.width(), rect.height());
        ConstraintSet.Constraint parameters = constraintSet.getParameters(this.mId);
        this.mStartMotionPath.applyParameters(parameters);
        this.mMotionStagger = parameters.motion.mMotionStagger;
        this.mStartPoint.setState(rect, constraintSet, i11, this.mId);
        this.mTransformPivotTarget = parameters.transform.transformPivotTarget;
        ConstraintSet.Motion motion = parameters.motion;
        this.mQuantizeMotionSteps = motion.mQuantizeMotionSteps;
        this.mQuantizeMotionPhase = motion.mQuantizeMotionPhase;
        Context context = this.mView.getContext();
        ConstraintSet.Motion motion2 = parameters.motion;
        this.mQuantizeMotionInterpolator = getInterpolator(context, motion2.mQuantizeInterpolatorType, motion2.mQuantizeInterpolatorString, motion2.mQuantizeInterpolatorID);
    }
}
