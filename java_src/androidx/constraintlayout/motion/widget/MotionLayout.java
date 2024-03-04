package androidx.constraintlayout.motion.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.DashPathEffect;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.Rect;
import android.graphics.RectF;
import android.os.Bundle;
import android.util.AttributeSet;
import android.util.Log;
import android.util.SparseArray;
import android.util.SparseBooleanArray;
import android.util.SparseIntArray;
import android.view.Display;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.Interpolator;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.constraintlayout.core.motion.utils.KeyCache;
import androidx.constraintlayout.core.widgets.ConstraintAnchor;
import androidx.constraintlayout.core.widgets.ConstraintWidget;
import androidx.constraintlayout.core.widgets.ConstraintWidgetContainer;
import androidx.constraintlayout.core.widgets.Flow;
import androidx.constraintlayout.core.widgets.Guideline;
import androidx.constraintlayout.core.widgets.Helper;
import androidx.constraintlayout.core.widgets.HelperWidget;
import androidx.constraintlayout.core.widgets.Placeholder;
import androidx.constraintlayout.core.widgets.VirtualLayout;
import androidx.constraintlayout.core.widgets.analyzer.BasicMeasure;
import androidx.constraintlayout.motion.utils.StopLogic;
import androidx.constraintlayout.motion.utils.ViewState;
import androidx.constraintlayout.motion.widget.MotionScene;
import androidx.constraintlayout.widget.Barrier;
import androidx.constraintlayout.widget.ConstraintHelper;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.constraintlayout.widget.ConstraintLayoutStates;
import androidx.constraintlayout.widget.ConstraintSet;
import androidx.constraintlayout.widget.Constraints;
import androidx.constraintlayout.widget.R;
import androidx.constraintlayout.widget.StateSet;
import androidx.core.internal.view.SupportMenu;
import androidx.core.view.NestedScrollingParent3;
import androidx.core.view.ViewCompat;
import androidx.exifinterface.media.ExifInterface;
import com.facebook.internal.security.CertificateUtil;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArrayList;
/* loaded from: classes.dex */
public class MotionLayout extends ConstraintLayout implements NestedScrollingParent3 {
    private static final boolean DEBUG = false;
    public static final int DEBUG_SHOW_NONE = 0;
    public static final int DEBUG_SHOW_PATH = 2;
    public static final int DEBUG_SHOW_PROGRESS = 1;
    private static final float EPSILON = 1.0E-5f;
    public static boolean IS_IN_EDIT_MODE = false;
    static final int MAX_KEY_FRAMES = 50;
    static final String TAG = "MotionLayout";
    public static final int TOUCH_UP_COMPLETE = 0;
    public static final int TOUCH_UP_COMPLETE_TO_END = 2;
    public static final int TOUCH_UP_COMPLETE_TO_START = 1;
    public static final int TOUCH_UP_DECELERATE = 4;
    public static final int TOUCH_UP_DECELERATE_AND_COMPLETE = 5;
    public static final int TOUCH_UP_NEVER_TO_END = 7;
    public static final int TOUCH_UP_NEVER_TO_START = 6;
    public static final int TOUCH_UP_STOP = 3;
    public static final int VELOCITY_LAYOUT = 1;
    public static final int VELOCITY_POST_LAYOUT = 0;
    public static final int VELOCITY_STATIC_LAYOUT = 3;
    public static final int VELOCITY_STATIC_POST_LAYOUT = 2;
    boolean firstDown;
    private float lastPos;
    private float lastY;
    private long mAnimationStartTime;
    private int mBeginState;
    private RectF mBoundsCheck;
    int mCurrentState;
    int mDebugPath;
    private DecelerateInterpolator mDecelerateLogic;
    private ArrayList<MotionHelper> mDecoratorsHelpers;
    private boolean mDelayedApply;
    private DesignTool mDesignTool;
    DevModeDraw mDevModeDraw;
    private int mEndState;
    int mEndWrapHeight;
    int mEndWrapWidth;
    HashMap<View, MotionController> mFrameArrayList;
    private int mFrames;
    int mHeightMeasureMode;
    private boolean mInLayout;
    private boolean mInRotation;
    boolean mInTransition;
    boolean mIndirectTransition;
    private boolean mInteractionEnabled;
    Interpolator mInterpolator;
    private Matrix mInverseMatrix;
    boolean mIsAnimating;
    private boolean mKeepAnimating;
    private KeyCache mKeyCache;
    private long mLastDrawTime;
    private float mLastFps;
    private int mLastHeightMeasureSpec;
    int mLastLayoutHeight;
    int mLastLayoutWidth;
    float mLastVelocity;
    private int mLastWidthMeasureSpec;
    private float mListenerPosition;
    private int mListenerState;
    protected boolean mMeasureDuringTransition;
    Model mModel;
    private boolean mNeedsFireTransitionCompleted;
    int mOldHeight;
    int mOldWidth;
    private Runnable mOnComplete;
    private ArrayList<MotionHelper> mOnHideHelpers;
    private ArrayList<MotionHelper> mOnShowHelpers;
    float mPostInterpolationPosition;
    HashMap<View, ViewState> mPreRotate;
    private int mPreRotateHeight;
    private int mPreRotateWidth;
    private int mPreviouseRotation;
    Interpolator mProgressInterpolator;
    private View mRegionView;
    int mRotatMode;
    MotionScene mScene;
    private int[] mScheduledTransitionTo;
    int mScheduledTransitions;
    float mScrollTargetDT;
    float mScrollTargetDX;
    float mScrollTargetDY;
    long mScrollTargetTime;
    int mStartWrapHeight;
    int mStartWrapWidth;
    private StateCache mStateCache;
    private StopLogic mStopLogic;
    Rect mTempRect;
    private boolean mTemporalInterpolator;
    ArrayList<Integer> mTransitionCompleted;
    private float mTransitionDuration;
    float mTransitionGoalPosition;
    private boolean mTransitionInstantly;
    float mTransitionLastPosition;
    private long mTransitionLastTime;
    private TransitionListener mTransitionListener;
    private CopyOnWriteArrayList<TransitionListener> mTransitionListeners;
    float mTransitionPosition;
    TransitionState mTransitionState;
    boolean mUndergoingMotion;
    int mWidthMeasureMode;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.constraintlayout.motion.widget.MotionLayout$5  reason: invalid class name */
    /* loaded from: classes.dex */
    public static /* synthetic */ class AnonymousClass5 {
        static final /* synthetic */ int[] $SwitchMap$androidx$constraintlayout$motion$widget$MotionLayout$TransitionState;

        static {
            int[] iArr = new int[TransitionState.values().length];
            $SwitchMap$androidx$constraintlayout$motion$widget$MotionLayout$TransitionState = iArr;
            try {
                iArr[TransitionState.UNDEFINED.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$androidx$constraintlayout$motion$widget$MotionLayout$TransitionState[TransitionState.SETUP.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$androidx$constraintlayout$motion$widget$MotionLayout$TransitionState[TransitionState.MOVING.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$androidx$constraintlayout$motion$widget$MotionLayout$TransitionState[TransitionState.FINISHED.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    /* loaded from: classes.dex */
    class DecelerateInterpolator extends MotionInterpolator {
        float maxA;
        float initalV = 0.0f;
        float currentP = 0.0f;

        DecelerateInterpolator() {
        }

        public void config(float f10, float f11, float f12) {
            this.initalV = f10;
            this.currentP = f11;
            this.maxA = f12;
        }

        @Override // androidx.constraintlayout.motion.widget.MotionInterpolator, android.animation.TimeInterpolator
        public float getInterpolation(float f10) {
            float f11;
            float f12;
            float f13 = this.initalV;
            if (f13 > 0.0f) {
                float f14 = this.maxA;
                if (f13 / f14 < f10) {
                    f10 = f13 / f14;
                }
                MotionLayout.this.mLastVelocity = f13 - (f14 * f10);
                f11 = (f13 * f10) - (((f14 * f10) * f10) / 2.0f);
                f12 = this.currentP;
            } else {
                float f15 = this.maxA;
                if ((-f13) / f15 < f10) {
                    f10 = (-f13) / f15;
                }
                MotionLayout.this.mLastVelocity = (f15 * f10) + f13;
                f11 = (f13 * f10) + (((f15 * f10) * f10) / 2.0f);
                f12 = this.currentP;
            }
            return f11 + f12;
        }

        @Override // androidx.constraintlayout.motion.widget.MotionInterpolator
        public float getVelocity() {
            return MotionLayout.this.mLastVelocity;
        }
    }

    /* loaded from: classes.dex */
    private class DevModeDraw {
        private static final int DEBUG_PATH_TICKS_PER_MS = 16;
        DashPathEffect mDashPathEffect;
        Paint mFillPaint;
        int mKeyFrameCount;
        float[] mKeyFramePoints;
        Paint mPaint;
        Paint mPaintGraph;
        Paint mPaintKeyframes;
        Path mPath;
        int[] mPathMode;
        float[] mPoints;
        private float[] mRectangle;
        int mShadowTranslate;
        Paint mTextPaint;
        final int RED_COLOR = -21965;
        final int KEYFRAME_COLOR = -2067046;
        final int GRAPH_COLOR = -13391360;
        final int SHADOW_COLOR = 1996488704;
        final int DIAMOND_SIZE = 10;
        Rect mBounds = new Rect();
        boolean mPresentationMode = false;

        public DevModeDraw() {
            this.mShadowTranslate = 1;
            Paint paint = new Paint();
            this.mPaint = paint;
            paint.setAntiAlias(true);
            this.mPaint.setColor(-21965);
            this.mPaint.setStrokeWidth(2.0f);
            this.mPaint.setStyle(Paint.Style.STROKE);
            Paint paint2 = new Paint();
            this.mPaintKeyframes = paint2;
            paint2.setAntiAlias(true);
            this.mPaintKeyframes.setColor(-2067046);
            this.mPaintKeyframes.setStrokeWidth(2.0f);
            this.mPaintKeyframes.setStyle(Paint.Style.STROKE);
            Paint paint3 = new Paint();
            this.mPaintGraph = paint3;
            paint3.setAntiAlias(true);
            this.mPaintGraph.setColor(-13391360);
            this.mPaintGraph.setStrokeWidth(2.0f);
            this.mPaintGraph.setStyle(Paint.Style.STROKE);
            Paint paint4 = new Paint();
            this.mTextPaint = paint4;
            paint4.setAntiAlias(true);
            this.mTextPaint.setColor(-13391360);
            this.mTextPaint.setTextSize(MotionLayout.this.getContext().getResources().getDisplayMetrics().density * 12.0f);
            this.mRectangle = new float[8];
            Paint paint5 = new Paint();
            this.mFillPaint = paint5;
            paint5.setAntiAlias(true);
            DashPathEffect dashPathEffect = new DashPathEffect(new float[]{4.0f, 8.0f}, 0.0f);
            this.mDashPathEffect = dashPathEffect;
            this.mPaintGraph.setPathEffect(dashPathEffect);
            this.mKeyFramePoints = new float[100];
            this.mPathMode = new int[50];
            if (this.mPresentationMode) {
                this.mPaint.setStrokeWidth(8.0f);
                this.mFillPaint.setStrokeWidth(8.0f);
                this.mPaintKeyframes.setStrokeWidth(8.0f);
                this.mShadowTranslate = 4;
            }
        }

        private void drawBasicPath(Canvas canvas) {
            canvas.drawLines(this.mPoints, this.mPaint);
        }

        private void drawPathAsConfigured(Canvas canvas) {
            boolean z10 = false;
            boolean z11 = false;
            for (int i9 = 0; i9 < this.mKeyFrameCount; i9++) {
                int[] iArr = this.mPathMode;
                if (iArr[i9] == 1) {
                    z10 = true;
                }
                if (iArr[i9] == 0) {
                    z11 = true;
                }
            }
            if (z10) {
                drawPathRelative(canvas);
            }
            if (z11) {
                drawPathCartesian(canvas);
            }
        }

        private void drawPathCartesian(Canvas canvas) {
            float[] fArr = this.mPoints;
            float f10 = fArr[0];
            float f11 = fArr[1];
            float f12 = fArr[fArr.length - 2];
            float f13 = fArr[fArr.length - 1];
            canvas.drawLine(Math.min(f10, f12), Math.max(f11, f13), Math.max(f10, f12), Math.max(f11, f13), this.mPaintGraph);
            canvas.drawLine(Math.min(f10, f12), Math.min(f11, f13), Math.min(f10, f12), Math.max(f11, f13), this.mPaintGraph);
        }

        private void drawPathCartesianTicks(Canvas canvas, float f10, float f11) {
            float[] fArr = this.mPoints;
            float f12 = fArr[0];
            float f13 = fArr[1];
            float f14 = fArr[fArr.length - 2];
            float f15 = fArr[fArr.length - 1];
            float min = Math.min(f12, f14);
            float max = Math.max(f13, f15);
            float min2 = f10 - Math.min(f12, f14);
            float max2 = Math.max(f13, f15) - f11;
            String str = "" + (((int) (((min2 * 100.0f) / Math.abs(f14 - f12)) + 0.5d)) / 100.0f);
            getTextBounds(str, this.mTextPaint);
            canvas.drawText(str, ((min2 / 2.0f) - (this.mBounds.width() / 2)) + min, f11 - 20.0f, this.mTextPaint);
            canvas.drawLine(f10, f11, Math.min(f12, f14), f11, this.mPaintGraph);
            String str2 = "" + (((int) (((max2 * 100.0f) / Math.abs(f15 - f13)) + 0.5d)) / 100.0f);
            getTextBounds(str2, this.mTextPaint);
            canvas.drawText(str2, f10 + 5.0f, max - ((max2 / 2.0f) - (this.mBounds.height() / 2)), this.mTextPaint);
            canvas.drawLine(f10, f11, f10, Math.max(f13, f15), this.mPaintGraph);
        }

        private void drawPathRelative(Canvas canvas) {
            float[] fArr = this.mPoints;
            canvas.drawLine(fArr[0], fArr[1], fArr[fArr.length - 2], fArr[fArr.length - 1], this.mPaintGraph);
        }

        private void drawPathRelativeTicks(Canvas canvas, float f10, float f11) {
            float[] fArr = this.mPoints;
            float f12 = fArr[0];
            float f13 = fArr[1];
            float f14 = fArr[fArr.length - 2];
            float f15 = fArr[fArr.length - 1];
            float hypot = (float) Math.hypot(f12 - f14, f13 - f15);
            float f16 = f14 - f12;
            float f17 = f15 - f13;
            float f18 = (((f10 - f12) * f16) + ((f11 - f13) * f17)) / (hypot * hypot);
            float f19 = f12 + (f16 * f18);
            float f20 = f13 + (f18 * f17);
            Path path = new Path();
            path.moveTo(f10, f11);
            path.lineTo(f19, f20);
            float hypot2 = (float) Math.hypot(f19 - f10, f20 - f11);
            String str = "" + (((int) ((hypot2 * 100.0f) / hypot)) / 100.0f);
            getTextBounds(str, this.mTextPaint);
            canvas.drawTextOnPath(str, path, (hypot2 / 2.0f) - (this.mBounds.width() / 2), -20.0f, this.mTextPaint);
            canvas.drawLine(f10, f11, f19, f20, this.mPaintGraph);
        }

        private void drawPathScreenTicks(Canvas canvas, float f10, float f11, int i9, int i10) {
            String str = "" + (((int) ((((f10 - (i9 / 2)) * 100.0f) / (MotionLayout.this.getWidth() - i9)) + 0.5d)) / 100.0f);
            getTextBounds(str, this.mTextPaint);
            canvas.drawText(str, ((f10 / 2.0f) - (this.mBounds.width() / 2)) + 0.0f, f11 - 20.0f, this.mTextPaint);
            canvas.drawLine(f10, f11, Math.min(0.0f, 1.0f), f11, this.mPaintGraph);
            String str2 = "" + (((int) ((((f11 - (i10 / 2)) * 100.0f) / (MotionLayout.this.getHeight() - i10)) + 0.5d)) / 100.0f);
            getTextBounds(str2, this.mTextPaint);
            canvas.drawText(str2, f10 + 5.0f, 0.0f - ((f11 / 2.0f) - (this.mBounds.height() / 2)), this.mTextPaint);
            canvas.drawLine(f10, f11, f10, Math.max(0.0f, 1.0f), this.mPaintGraph);
        }

        private void drawRectangle(Canvas canvas, MotionController motionController) {
            this.mPath.reset();
            for (int i9 = 0; i9 <= 50; i9++) {
                motionController.buildRect(i9 / 50, this.mRectangle, 0);
                Path path = this.mPath;
                float[] fArr = this.mRectangle;
                path.moveTo(fArr[0], fArr[1]);
                Path path2 = this.mPath;
                float[] fArr2 = this.mRectangle;
                path2.lineTo(fArr2[2], fArr2[3]);
                Path path3 = this.mPath;
                float[] fArr3 = this.mRectangle;
                path3.lineTo(fArr3[4], fArr3[5]);
                Path path4 = this.mPath;
                float[] fArr4 = this.mRectangle;
                path4.lineTo(fArr4[6], fArr4[7]);
                this.mPath.close();
            }
            this.mPaint.setColor(1140850688);
            canvas.translate(2.0f, 2.0f);
            canvas.drawPath(this.mPath, this.mPaint);
            canvas.translate(-2.0f, -2.0f);
            this.mPaint.setColor(SupportMenu.CATEGORY_MASK);
            canvas.drawPath(this.mPath, this.mPaint);
        }

        private void drawTicks(Canvas canvas, int i9, int i10, MotionController motionController) {
            int i11;
            int i12;
            float f10;
            float f11;
            View view = motionController.mView;
            if (view != null) {
                i11 = view.getWidth();
                i12 = motionController.mView.getHeight();
            } else {
                i11 = 0;
                i12 = 0;
            }
            for (int i13 = 1; i13 < i10 - 1; i13++) {
                if (i9 != 4 || this.mPathMode[i13 - 1] != 0) {
                    float[] fArr = this.mKeyFramePoints;
                    int i14 = i13 * 2;
                    float f12 = fArr[i14];
                    float f13 = fArr[i14 + 1];
                    this.mPath.reset();
                    this.mPath.moveTo(f12, f13 + 10.0f);
                    this.mPath.lineTo(f12 + 10.0f, f13);
                    this.mPath.lineTo(f12, f13 - 10.0f);
                    this.mPath.lineTo(f12 - 10.0f, f13);
                    this.mPath.close();
                    int i15 = i13 - 1;
                    motionController.getKeyFrame(i15);
                    if (i9 == 4) {
                        int[] iArr = this.mPathMode;
                        if (iArr[i15] == 1) {
                            drawPathRelativeTicks(canvas, f12 - 0.0f, f13 - 0.0f);
                        } else if (iArr[i15] == 0) {
                            drawPathCartesianTicks(canvas, f12 - 0.0f, f13 - 0.0f);
                        } else if (iArr[i15] == 2) {
                            f10 = f13;
                            f11 = f12;
                            drawPathScreenTicks(canvas, f12 - 0.0f, f13 - 0.0f, i11, i12);
                            canvas.drawPath(this.mPath, this.mFillPaint);
                        }
                        f10 = f13;
                        f11 = f12;
                        canvas.drawPath(this.mPath, this.mFillPaint);
                    } else {
                        f10 = f13;
                        f11 = f12;
                    }
                    if (i9 == 2) {
                        drawPathRelativeTicks(canvas, f11 - 0.0f, f10 - 0.0f);
                    }
                    if (i9 == 3) {
                        drawPathCartesianTicks(canvas, f11 - 0.0f, f10 - 0.0f);
                    }
                    if (i9 == 6) {
                        drawPathScreenTicks(canvas, f11 - 0.0f, f10 - 0.0f, i11, i12);
                    }
                    canvas.drawPath(this.mPath, this.mFillPaint);
                }
            }
            float[] fArr2 = this.mPoints;
            if (fArr2.length > 1) {
                canvas.drawCircle(fArr2[0], fArr2[1], 8.0f, this.mPaintKeyframes);
                float[] fArr3 = this.mPoints;
                canvas.drawCircle(fArr3[fArr3.length - 2], fArr3[fArr3.length - 1], 8.0f, this.mPaintKeyframes);
            }
        }

        private void drawTranslation(Canvas canvas, float f10, float f11, float f12, float f13) {
            canvas.drawRect(f10, f11, f12, f13, this.mPaintGraph);
            canvas.drawLine(f10, f11, f12, f13, this.mPaintGraph);
        }

        public void draw(Canvas canvas, HashMap<View, MotionController> hashMap, int i9, int i10) {
            if (hashMap == null || hashMap.size() == 0) {
                return;
            }
            canvas.save();
            if (!MotionLayout.this.isInEditMode() && (i10 & 1) == 2) {
                String str = MotionLayout.this.getContext().getResources().getResourceName(MotionLayout.this.mEndState) + CertificateUtil.DELIMITER + MotionLayout.this.getProgress();
                canvas.drawText(str, 10.0f, MotionLayout.this.getHeight() - 30, this.mTextPaint);
                canvas.drawText(str, 11.0f, MotionLayout.this.getHeight() - 29, this.mPaint);
            }
            for (MotionController motionController : hashMap.values()) {
                int drawPath = motionController.getDrawPath();
                if (i10 > 0 && drawPath == 0) {
                    drawPath = 1;
                }
                if (drawPath != 0) {
                    this.mKeyFrameCount = motionController.buildKeyFrames(this.mKeyFramePoints, this.mPathMode);
                    if (drawPath >= 1) {
                        int i11 = i9 / 16;
                        float[] fArr = this.mPoints;
                        if (fArr == null || fArr.length != i11 * 2) {
                            this.mPoints = new float[i11 * 2];
                            this.mPath = new Path();
                        }
                        int i12 = this.mShadowTranslate;
                        canvas.translate(i12, i12);
                        this.mPaint.setColor(1996488704);
                        this.mFillPaint.setColor(1996488704);
                        this.mPaintKeyframes.setColor(1996488704);
                        this.mPaintGraph.setColor(1996488704);
                        motionController.buildPath(this.mPoints, i11);
                        drawAll(canvas, drawPath, this.mKeyFrameCount, motionController);
                        this.mPaint.setColor(-21965);
                        this.mPaintKeyframes.setColor(-2067046);
                        this.mFillPaint.setColor(-2067046);
                        this.mPaintGraph.setColor(-13391360);
                        int i13 = this.mShadowTranslate;
                        canvas.translate(-i13, -i13);
                        drawAll(canvas, drawPath, this.mKeyFrameCount, motionController);
                        if (drawPath == 5) {
                            drawRectangle(canvas, motionController);
                        }
                    }
                }
            }
            canvas.restore();
        }

        public void drawAll(Canvas canvas, int i9, int i10, MotionController motionController) {
            if (i9 == 4) {
                drawPathAsConfigured(canvas);
            }
            if (i9 == 2) {
                drawPathRelative(canvas);
            }
            if (i9 == 3) {
                drawPathCartesian(canvas);
            }
            drawBasicPath(canvas);
            drawTicks(canvas, i9, i10, motionController);
        }

        void getTextBounds(String str, Paint paint) {
            paint.getTextBounds(str, 0, str.length(), this.mBounds);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class Model {
        int mEndId;
        int mStartId;
        ConstraintWidgetContainer mLayoutStart = new ConstraintWidgetContainer();
        ConstraintWidgetContainer mLayoutEnd = new ConstraintWidgetContainer();
        ConstraintSet mStart = null;
        ConstraintSet mEnd = null;

        Model() {
        }

        private void computeStartEndSize(int i9, int i10) {
            int optimizationLevel = MotionLayout.this.getOptimizationLevel();
            MotionLayout motionLayout = MotionLayout.this;
            if (motionLayout.mCurrentState == motionLayout.getStartState()) {
                MotionLayout motionLayout2 = MotionLayout.this;
                ConstraintWidgetContainer constraintWidgetContainer = this.mLayoutEnd;
                ConstraintSet constraintSet = this.mEnd;
                motionLayout2.resolveSystem(constraintWidgetContainer, optimizationLevel, (constraintSet == null || constraintSet.mRotate == 0) ? i9 : i10, (constraintSet == null || constraintSet.mRotate == 0) ? i10 : i9);
                ConstraintSet constraintSet2 = this.mStart;
                if (constraintSet2 != null) {
                    MotionLayout motionLayout3 = MotionLayout.this;
                    ConstraintWidgetContainer constraintWidgetContainer2 = this.mLayoutStart;
                    int i11 = constraintSet2.mRotate;
                    int i12 = i11 == 0 ? i9 : i10;
                    if (i11 == 0) {
                        i9 = i10;
                    }
                    motionLayout3.resolveSystem(constraintWidgetContainer2, optimizationLevel, i12, i9);
                    return;
                }
                return;
            }
            ConstraintSet constraintSet3 = this.mStart;
            if (constraintSet3 != null) {
                MotionLayout motionLayout4 = MotionLayout.this;
                ConstraintWidgetContainer constraintWidgetContainer3 = this.mLayoutStart;
                int i13 = constraintSet3.mRotate;
                motionLayout4.resolveSystem(constraintWidgetContainer3, optimizationLevel, i13 == 0 ? i9 : i10, i13 == 0 ? i10 : i9);
            }
            MotionLayout motionLayout5 = MotionLayout.this;
            ConstraintWidgetContainer constraintWidgetContainer4 = this.mLayoutEnd;
            ConstraintSet constraintSet4 = this.mEnd;
            int i14 = (constraintSet4 == null || constraintSet4.mRotate == 0) ? i9 : i10;
            if (constraintSet4 == null || constraintSet4.mRotate == 0) {
                i9 = i10;
            }
            motionLayout5.resolveSystem(constraintWidgetContainer4, optimizationLevel, i14, i9);
        }

        private void debugLayout(String str, ConstraintWidgetContainer constraintWidgetContainer) {
            String str2 = str + " " + Debug.getName((View) constraintWidgetContainer.getCompanionWidget());
            Log.v(MotionLayout.TAG, str2 + "  ========= " + constraintWidgetContainer);
            int size = constraintWidgetContainer.getChildren().size();
            for (int i9 = 0; i9 < size; i9++) {
                String str3 = str2 + "[" + i9 + "] ";
                ConstraintWidget constraintWidget = constraintWidgetContainer.getChildren().get(i9);
                StringBuilder sb2 = new StringBuilder();
                sb2.append("");
                sb2.append(constraintWidget.mTop.mTarget != null ? ExifInterface.GPS_DIRECTION_TRUE : "_");
                String sb3 = sb2.toString();
                StringBuilder sb4 = new StringBuilder();
                sb4.append(sb3);
                sb4.append(constraintWidget.mBottom.mTarget != null ? "B" : "_");
                String sb5 = sb4.toString();
                StringBuilder sb6 = new StringBuilder();
                sb6.append(sb5);
                sb6.append(constraintWidget.mLeft.mTarget != null ? "L" : "_");
                String sb7 = sb6.toString();
                StringBuilder sb8 = new StringBuilder();
                sb8.append(sb7);
                sb8.append(constraintWidget.mRight.mTarget != null ? "R" : "_");
                String sb9 = sb8.toString();
                View view = (View) constraintWidget.getCompanionWidget();
                String name = Debug.getName(view);
                if (view instanceof TextView) {
                    name = name + "(" + ((Object) ((TextView) view).getText()) + ")";
                }
                Log.v(MotionLayout.TAG, str3 + "  " + name + " " + constraintWidget + " " + sb9);
            }
            Log.v(MotionLayout.TAG, str2 + " done. ");
        }

        private void debugLayoutParam(String str, ConstraintLayout.LayoutParams layoutParams) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append(" ");
            sb2.append(layoutParams.startToStart != -1 ? "SS" : "__");
            String sb3 = sb2.toString();
            StringBuilder sb4 = new StringBuilder();
            sb4.append(sb3);
            sb4.append(layoutParams.startToEnd != -1 ? "|SE" : "|__");
            String sb5 = sb4.toString();
            StringBuilder sb6 = new StringBuilder();
            sb6.append(sb5);
            sb6.append(layoutParams.endToStart != -1 ? "|ES" : "|__");
            String sb7 = sb6.toString();
            StringBuilder sb8 = new StringBuilder();
            sb8.append(sb7);
            sb8.append(layoutParams.endToEnd != -1 ? "|EE" : "|__");
            String sb9 = sb8.toString();
            StringBuilder sb10 = new StringBuilder();
            sb10.append(sb9);
            sb10.append(layoutParams.leftToLeft != -1 ? "|LL" : "|__");
            String sb11 = sb10.toString();
            StringBuilder sb12 = new StringBuilder();
            sb12.append(sb11);
            sb12.append(layoutParams.leftToRight != -1 ? "|LR" : "|__");
            String sb13 = sb12.toString();
            StringBuilder sb14 = new StringBuilder();
            sb14.append(sb13);
            sb14.append(layoutParams.rightToLeft != -1 ? "|RL" : "|__");
            String sb15 = sb14.toString();
            StringBuilder sb16 = new StringBuilder();
            sb16.append(sb15);
            sb16.append(layoutParams.rightToRight != -1 ? "|RR" : "|__");
            String sb17 = sb16.toString();
            StringBuilder sb18 = new StringBuilder();
            sb18.append(sb17);
            sb18.append(layoutParams.topToTop != -1 ? "|TT" : "|__");
            String sb19 = sb18.toString();
            StringBuilder sb20 = new StringBuilder();
            sb20.append(sb19);
            sb20.append(layoutParams.topToBottom != -1 ? "|TB" : "|__");
            String sb21 = sb20.toString();
            StringBuilder sb22 = new StringBuilder();
            sb22.append(sb21);
            sb22.append(layoutParams.bottomToTop != -1 ? "|BT" : "|__");
            String sb23 = sb22.toString();
            StringBuilder sb24 = new StringBuilder();
            sb24.append(sb23);
            sb24.append(layoutParams.bottomToBottom != -1 ? "|BB" : "|__");
            String sb25 = sb24.toString();
            Log.v(MotionLayout.TAG, str + sb25);
        }

        private void debugWidget(String str, ConstraintWidget constraintWidget) {
            String str2;
            String str3;
            String str4;
            StringBuilder sb2 = new StringBuilder();
            sb2.append(" ");
            String str5 = "__";
            if (constraintWidget.mTop.mTarget != null) {
                StringBuilder sb3 = new StringBuilder();
                sb3.append(ExifInterface.GPS_DIRECTION_TRUE);
                sb3.append(constraintWidget.mTop.mTarget.mType == ConstraintAnchor.Type.TOP ? ExifInterface.GPS_DIRECTION_TRUE : "B");
                str2 = sb3.toString();
            } else {
                str2 = "__";
            }
            sb2.append(str2);
            String sb4 = sb2.toString();
            StringBuilder sb5 = new StringBuilder();
            sb5.append(sb4);
            if (constraintWidget.mBottom.mTarget != null) {
                StringBuilder sb6 = new StringBuilder();
                sb6.append("B");
                sb6.append(constraintWidget.mBottom.mTarget.mType == ConstraintAnchor.Type.TOP ? ExifInterface.GPS_DIRECTION_TRUE : "B");
                str3 = sb6.toString();
            } else {
                str3 = "__";
            }
            sb5.append(str3);
            String sb7 = sb5.toString();
            StringBuilder sb8 = new StringBuilder();
            sb8.append(sb7);
            if (constraintWidget.mLeft.mTarget != null) {
                StringBuilder sb9 = new StringBuilder();
                sb9.append("L");
                sb9.append(constraintWidget.mLeft.mTarget.mType == ConstraintAnchor.Type.LEFT ? "L" : "R");
                str4 = sb9.toString();
            } else {
                str4 = "__";
            }
            sb8.append(str4);
            String sb10 = sb8.toString();
            StringBuilder sb11 = new StringBuilder();
            sb11.append(sb10);
            if (constraintWidget.mRight.mTarget != null) {
                StringBuilder sb12 = new StringBuilder();
                sb12.append("R");
                sb12.append(constraintWidget.mRight.mTarget.mType == ConstraintAnchor.Type.LEFT ? "L" : "R");
                str5 = sb12.toString();
            }
            sb11.append(str5);
            String sb13 = sb11.toString();
            Log.v(MotionLayout.TAG, str + sb13 + " ---  " + constraintWidget);
        }

        private void setupConstraintWidget(ConstraintWidgetContainer constraintWidgetContainer, ConstraintSet constraintSet) {
            SparseArray<ConstraintWidget> sparseArray = new SparseArray<>();
            Constraints.LayoutParams layoutParams = new Constraints.LayoutParams(-2, -2);
            sparseArray.clear();
            sparseArray.put(0, constraintWidgetContainer);
            sparseArray.put(MotionLayout.this.getId(), constraintWidgetContainer);
            if (constraintSet != null && constraintSet.mRotate != 0) {
                MotionLayout motionLayout = MotionLayout.this;
                motionLayout.resolveSystem(this.mLayoutEnd, motionLayout.getOptimizationLevel(), View.MeasureSpec.makeMeasureSpec(MotionLayout.this.getHeight(), BasicMeasure.EXACTLY), View.MeasureSpec.makeMeasureSpec(MotionLayout.this.getWidth(), BasicMeasure.EXACTLY));
            }
            Iterator<ConstraintWidget> it = constraintWidgetContainer.getChildren().iterator();
            while (it.hasNext()) {
                ConstraintWidget next = it.next();
                next.setAnimated(true);
                sparseArray.put(((View) next.getCompanionWidget()).getId(), next);
            }
            Iterator<ConstraintWidget> it2 = constraintWidgetContainer.getChildren().iterator();
            while (it2.hasNext()) {
                ConstraintWidget next2 = it2.next();
                View view = (View) next2.getCompanionWidget();
                constraintSet.applyToLayoutParams(view.getId(), layoutParams);
                next2.setWidth(constraintSet.getWidth(view.getId()));
                next2.setHeight(constraintSet.getHeight(view.getId()));
                if (view instanceof ConstraintHelper) {
                    constraintSet.applyToHelper((ConstraintHelper) view, next2, layoutParams, sparseArray);
                    if (view instanceof Barrier) {
                        ((Barrier) view).validateParams();
                    }
                }
                layoutParams.resolveLayoutDirection(MotionLayout.this.getLayoutDirection());
                MotionLayout.this.applyConstraintsFromLayoutParams(false, view, next2, layoutParams, sparseArray);
                if (constraintSet.getVisibilityMode(view.getId()) == 1) {
                    next2.setVisibility(view.getVisibility());
                } else {
                    next2.setVisibility(constraintSet.getVisibility(view.getId()));
                }
            }
            Iterator<ConstraintWidget> it3 = constraintWidgetContainer.getChildren().iterator();
            while (it3.hasNext()) {
                ConstraintWidget next3 = it3.next();
                if (next3 instanceof VirtualLayout) {
                    Helper helper = (Helper) next3;
                    ((ConstraintHelper) next3.getCompanionWidget()).updatePreLayout(constraintWidgetContainer, helper, sparseArray);
                    ((VirtualLayout) helper).captureWidgets();
                }
            }
        }

        /* JADX WARN: Removed duplicated region for block: B:24:0x00e9  */
        /* JADX WARN: Removed duplicated region for block: B:42:0x013d A[SYNTHETIC] */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public void build() {
            /*
                Method dump skipped, instructions count: 360
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.constraintlayout.motion.widget.MotionLayout.Model.build():void");
        }

        void copy(ConstraintWidgetContainer constraintWidgetContainer, ConstraintWidgetContainer constraintWidgetContainer2) {
            ConstraintWidget constraintWidget;
            ArrayList<ConstraintWidget> children = constraintWidgetContainer.getChildren();
            HashMap<ConstraintWidget, ConstraintWidget> hashMap = new HashMap<>();
            hashMap.put(constraintWidgetContainer, constraintWidgetContainer2);
            constraintWidgetContainer2.getChildren().clear();
            constraintWidgetContainer2.copy(constraintWidgetContainer, hashMap);
            Iterator<ConstraintWidget> it = children.iterator();
            while (it.hasNext()) {
                ConstraintWidget next = it.next();
                if (next instanceof androidx.constraintlayout.core.widgets.Barrier) {
                    constraintWidget = new androidx.constraintlayout.core.widgets.Barrier();
                } else if (next instanceof Guideline) {
                    constraintWidget = new Guideline();
                } else if (next instanceof Flow) {
                    constraintWidget = new Flow();
                } else if (next instanceof Placeholder) {
                    constraintWidget = new Placeholder();
                } else if (next instanceof Helper) {
                    constraintWidget = new HelperWidget();
                } else {
                    constraintWidget = new ConstraintWidget();
                }
                constraintWidgetContainer2.add(constraintWidget);
                hashMap.put(next, constraintWidget);
            }
            Iterator<ConstraintWidget> it2 = children.iterator();
            while (it2.hasNext()) {
                ConstraintWidget next2 = it2.next();
                hashMap.get(next2).copy(next2, hashMap);
            }
        }

        ConstraintWidget getWidget(ConstraintWidgetContainer constraintWidgetContainer, View view) {
            if (constraintWidgetContainer.getCompanionWidget() == view) {
                return constraintWidgetContainer;
            }
            ArrayList<ConstraintWidget> children = constraintWidgetContainer.getChildren();
            int size = children.size();
            for (int i9 = 0; i9 < size; i9++) {
                ConstraintWidget constraintWidget = children.get(i9);
                if (constraintWidget.getCompanionWidget() == view) {
                    return constraintWidget;
                }
            }
            return null;
        }

        void initFrom(ConstraintWidgetContainer constraintWidgetContainer, ConstraintSet constraintSet, ConstraintSet constraintSet2) {
            this.mStart = constraintSet;
            this.mEnd = constraintSet2;
            this.mLayoutStart = new ConstraintWidgetContainer();
            this.mLayoutEnd = new ConstraintWidgetContainer();
            this.mLayoutStart.setMeasurer(((ConstraintLayout) MotionLayout.this).mLayoutWidget.getMeasurer());
            this.mLayoutEnd.setMeasurer(((ConstraintLayout) MotionLayout.this).mLayoutWidget.getMeasurer());
            this.mLayoutStart.removeAllChildren();
            this.mLayoutEnd.removeAllChildren();
            copy(((ConstraintLayout) MotionLayout.this).mLayoutWidget, this.mLayoutStart);
            copy(((ConstraintLayout) MotionLayout.this).mLayoutWidget, this.mLayoutEnd);
            if (MotionLayout.this.mTransitionLastPosition > 0.5d) {
                if (constraintSet != null) {
                    setupConstraintWidget(this.mLayoutStart, constraintSet);
                }
                setupConstraintWidget(this.mLayoutEnd, constraintSet2);
            } else {
                setupConstraintWidget(this.mLayoutEnd, constraintSet2);
                if (constraintSet != null) {
                    setupConstraintWidget(this.mLayoutStart, constraintSet);
                }
            }
            this.mLayoutStart.setRtl(MotionLayout.this.isRtl());
            this.mLayoutStart.updateHierarchy();
            this.mLayoutEnd.setRtl(MotionLayout.this.isRtl());
            this.mLayoutEnd.updateHierarchy();
            ViewGroup.LayoutParams layoutParams = MotionLayout.this.getLayoutParams();
            if (layoutParams != null) {
                if (layoutParams.width == -2) {
                    ConstraintWidgetContainer constraintWidgetContainer2 = this.mLayoutStart;
                    ConstraintWidget.DimensionBehaviour dimensionBehaviour = ConstraintWidget.DimensionBehaviour.WRAP_CONTENT;
                    constraintWidgetContainer2.setHorizontalDimensionBehaviour(dimensionBehaviour);
                    this.mLayoutEnd.setHorizontalDimensionBehaviour(dimensionBehaviour);
                }
                if (layoutParams.height == -2) {
                    ConstraintWidgetContainer constraintWidgetContainer3 = this.mLayoutStart;
                    ConstraintWidget.DimensionBehaviour dimensionBehaviour2 = ConstraintWidget.DimensionBehaviour.WRAP_CONTENT;
                    constraintWidgetContainer3.setVerticalDimensionBehaviour(dimensionBehaviour2);
                    this.mLayoutEnd.setVerticalDimensionBehaviour(dimensionBehaviour2);
                }
            }
        }

        public boolean isNotConfiguredWith(int i9, int i10) {
            return (i9 == this.mStartId && i10 == this.mEndId) ? false : true;
        }

        public void measure(int i9, int i10) {
            int mode = View.MeasureSpec.getMode(i9);
            int mode2 = View.MeasureSpec.getMode(i10);
            MotionLayout motionLayout = MotionLayout.this;
            motionLayout.mWidthMeasureMode = mode;
            motionLayout.mHeightMeasureMode = mode2;
            motionLayout.getOptimizationLevel();
            computeStartEndSize(i9, i10);
            if (((MotionLayout.this.getParent() instanceof MotionLayout) && mode == 1073741824 && mode2 == 1073741824) ? false : true) {
                computeStartEndSize(i9, i10);
                MotionLayout.this.mStartWrapWidth = this.mLayoutStart.getWidth();
                MotionLayout.this.mStartWrapHeight = this.mLayoutStart.getHeight();
                MotionLayout.this.mEndWrapWidth = this.mLayoutEnd.getWidth();
                MotionLayout.this.mEndWrapHeight = this.mLayoutEnd.getHeight();
                MotionLayout motionLayout2 = MotionLayout.this;
                motionLayout2.mMeasureDuringTransition = (motionLayout2.mStartWrapWidth == motionLayout2.mEndWrapWidth && motionLayout2.mStartWrapHeight == motionLayout2.mEndWrapHeight) ? false : true;
            }
            MotionLayout motionLayout3 = MotionLayout.this;
            int i11 = motionLayout3.mStartWrapWidth;
            int i12 = motionLayout3.mStartWrapHeight;
            int i13 = motionLayout3.mWidthMeasureMode;
            if (i13 == Integer.MIN_VALUE || i13 == 0) {
                i11 = (int) (i11 + (motionLayout3.mPostInterpolationPosition * (motionLayout3.mEndWrapWidth - i11)));
            }
            int i14 = i11;
            int i15 = motionLayout3.mHeightMeasureMode;
            if (i15 == Integer.MIN_VALUE || i15 == 0) {
                i12 = (int) (i12 + (motionLayout3.mPostInterpolationPosition * (motionLayout3.mEndWrapHeight - i12)));
            }
            MotionLayout.this.resolveMeasuredDimension(i9, i10, i14, i12, this.mLayoutStart.isWidthMeasuredTooSmall() || this.mLayoutEnd.isWidthMeasuredTooSmall(), this.mLayoutStart.isHeightMeasuredTooSmall() || this.mLayoutEnd.isHeightMeasuredTooSmall());
        }

        public void reEvaluateState() {
            measure(MotionLayout.this.mLastWidthMeasureSpec, MotionLayout.this.mLastHeightMeasureSpec);
            MotionLayout.this.setupMotionViews();
        }

        public void setMeasuredId(int i9, int i10) {
            this.mStartId = i9;
            this.mEndId = i10;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* loaded from: classes.dex */
    public interface MotionTracker {
        void addMovement(MotionEvent motionEvent);

        void clear();

        void computeCurrentVelocity(int i9);

        void computeCurrentVelocity(int i9, float f10);

        float getXVelocity();

        float getXVelocity(int i9);

        float getYVelocity();

        float getYVelocity(int i9);

        void recycle();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class StateCache {
        float mProgress = Float.NaN;
        float mVelocity = Float.NaN;
        int startState = -1;
        int endState = -1;
        final String KeyProgress = "motion.progress";
        final String KeyVelocity = "motion.velocity";
        final String KeyStartState = "motion.StartState";
        final String KeyEndState = "motion.EndState";

        StateCache() {
        }

        void apply() {
            int i9 = this.startState;
            if (i9 != -1 || this.endState != -1) {
                if (i9 == -1) {
                    MotionLayout.this.transitionToState(this.endState);
                } else {
                    int i10 = this.endState;
                    if (i10 == -1) {
                        MotionLayout.this.setState(i9, -1, -1);
                    } else {
                        MotionLayout.this.setTransition(i9, i10);
                    }
                }
                MotionLayout.this.setState(TransitionState.SETUP);
            }
            if (Float.isNaN(this.mVelocity)) {
                if (Float.isNaN(this.mProgress)) {
                    return;
                }
                MotionLayout.this.setProgress(this.mProgress);
                return;
            }
            MotionLayout.this.setProgress(this.mProgress, this.mVelocity);
            this.mProgress = Float.NaN;
            this.mVelocity = Float.NaN;
            this.startState = -1;
            this.endState = -1;
        }

        public Bundle getTransitionState() {
            Bundle bundle = new Bundle();
            bundle.putFloat("motion.progress", this.mProgress);
            bundle.putFloat("motion.velocity", this.mVelocity);
            bundle.putInt("motion.StartState", this.startState);
            bundle.putInt("motion.EndState", this.endState);
            return bundle;
        }

        public void recordState() {
            this.endState = MotionLayout.this.mEndState;
            this.startState = MotionLayout.this.mBeginState;
            this.mVelocity = MotionLayout.this.getVelocity();
            this.mProgress = MotionLayout.this.getProgress();
        }

        public void setEndState(int i9) {
            this.endState = i9;
        }

        public void setProgress(float f10) {
            this.mProgress = f10;
        }

        public void setStartState(int i9) {
            this.startState = i9;
        }

        public void setTransitionState(Bundle bundle) {
            this.mProgress = bundle.getFloat("motion.progress");
            this.mVelocity = bundle.getFloat("motion.velocity");
            this.startState = bundle.getInt("motion.StartState");
            this.endState = bundle.getInt("motion.EndState");
        }

        public void setVelocity(float f10) {
            this.mVelocity = f10;
        }
    }

    /* loaded from: classes.dex */
    public interface TransitionListener {
        void onTransitionChange(MotionLayout motionLayout, int i9, int i10, float f10);

        void onTransitionCompleted(MotionLayout motionLayout, int i9);

        void onTransitionStarted(MotionLayout motionLayout, int i9, int i10);

        void onTransitionTrigger(MotionLayout motionLayout, int i9, boolean z10, float f10);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public enum TransitionState {
        UNDEFINED,
        SETUP,
        MOVING,
        FINISHED
    }

    public MotionLayout(@NonNull Context context) {
        super(context);
        this.mProgressInterpolator = null;
        this.mLastVelocity = 0.0f;
        this.mBeginState = -1;
        this.mCurrentState = -1;
        this.mEndState = -1;
        this.mLastWidthMeasureSpec = 0;
        this.mLastHeightMeasureSpec = 0;
        this.mInteractionEnabled = true;
        this.mFrameArrayList = new HashMap<>();
        this.mAnimationStartTime = 0L;
        this.mTransitionDuration = 1.0f;
        this.mTransitionPosition = 0.0f;
        this.mTransitionLastPosition = 0.0f;
        this.mTransitionGoalPosition = 0.0f;
        this.mInTransition = false;
        this.mIndirectTransition = false;
        this.mDebugPath = 0;
        this.mTemporalInterpolator = false;
        this.mStopLogic = new StopLogic();
        this.mDecelerateLogic = new DecelerateInterpolator();
        this.firstDown = true;
        this.mUndergoingMotion = false;
        this.mKeepAnimating = false;
        this.mOnShowHelpers = null;
        this.mOnHideHelpers = null;
        this.mDecoratorsHelpers = null;
        this.mTransitionListeners = null;
        this.mFrames = 0;
        this.mLastDrawTime = -1L;
        this.mLastFps = 0.0f;
        this.mListenerState = 0;
        this.mListenerPosition = 0.0f;
        this.mIsAnimating = false;
        this.mMeasureDuringTransition = false;
        this.mKeyCache = new KeyCache();
        this.mInLayout = false;
        this.mOnComplete = null;
        this.mScheduledTransitionTo = null;
        this.mScheduledTransitions = 0;
        this.mInRotation = false;
        this.mRotatMode = 0;
        this.mPreRotate = new HashMap<>();
        this.mTempRect = new Rect();
        this.mDelayedApply = false;
        this.mTransitionState = TransitionState.UNDEFINED;
        this.mModel = new Model();
        this.mNeedsFireTransitionCompleted = false;
        this.mBoundsCheck = new RectF();
        this.mRegionView = null;
        this.mInverseMatrix = null;
        this.mTransitionCompleted = new ArrayList<>();
        init(null);
    }

    private boolean callTransformedTouchEvent(View view, MotionEvent motionEvent, float f10, float f11) {
        Matrix matrix = view.getMatrix();
        if (matrix.isIdentity()) {
            motionEvent.offsetLocation(f10, f11);
            boolean onTouchEvent = view.onTouchEvent(motionEvent);
            motionEvent.offsetLocation(-f10, -f11);
            return onTouchEvent;
        }
        MotionEvent obtain = MotionEvent.obtain(motionEvent);
        obtain.offsetLocation(f10, f11);
        if (this.mInverseMatrix == null) {
            this.mInverseMatrix = new Matrix();
        }
        matrix.invert(this.mInverseMatrix);
        obtain.transform(this.mInverseMatrix);
        boolean onTouchEvent2 = view.onTouchEvent(obtain);
        obtain.recycle();
        return onTouchEvent2;
    }

    private void checkStructure() {
        MotionScene motionScene = this.mScene;
        if (motionScene == null) {
            Log.e(TAG, "CHECK: motion scene not set! set \"app:layoutDescription=\"@xml/file\"");
            return;
        }
        int startId = motionScene.getStartId();
        MotionScene motionScene2 = this.mScene;
        checkStructure(startId, motionScene2.getConstraintSet(motionScene2.getStartId()));
        SparseIntArray sparseIntArray = new SparseIntArray();
        SparseIntArray sparseIntArray2 = new SparseIntArray();
        Iterator<MotionScene.Transition> it = this.mScene.getDefinedTransitions().iterator();
        while (it.hasNext()) {
            MotionScene.Transition next = it.next();
            if (next == this.mScene.mCurrentTransition) {
                Log.v(TAG, "CHECK: CURRENT");
            }
            checkStructure(next);
            int startConstraintSetId = next.getStartConstraintSetId();
            int endConstraintSetId = next.getEndConstraintSetId();
            String name = Debug.getName(getContext(), startConstraintSetId);
            String name2 = Debug.getName(getContext(), endConstraintSetId);
            if (sparseIntArray.get(startConstraintSetId) == endConstraintSetId) {
                Log.e(TAG, "CHECK: two transitions with the same start and end " + name + "->" + name2);
            }
            if (sparseIntArray2.get(endConstraintSetId) == startConstraintSetId) {
                Log.e(TAG, "CHECK: you can't have reverse transitions" + name + "->" + name2);
            }
            sparseIntArray.put(startConstraintSetId, endConstraintSetId);
            sparseIntArray2.put(endConstraintSetId, startConstraintSetId);
            if (this.mScene.getConstraintSet(startConstraintSetId) == null) {
                Log.e(TAG, " no such constraintSetStart " + name);
            }
            if (this.mScene.getConstraintSet(endConstraintSetId) == null) {
                Log.e(TAG, " no such constraintSetEnd " + name);
            }
        }
    }

    private void computeCurrentPositions() {
        int childCount = getChildCount();
        for (int i9 = 0; i9 < childCount; i9++) {
            View childAt = getChildAt(i9);
            MotionController motionController = this.mFrameArrayList.get(childAt);
            if (motionController != null) {
                motionController.setStartCurrentState(childAt);
            }
        }
    }

    private void debugPos() {
        for (int i9 = 0; i9 < getChildCount(); i9++) {
            View childAt = getChildAt(i9);
            Log.v(TAG, " " + Debug.getLocation() + " " + Debug.getName(this) + " " + Debug.getName(getContext(), this.mCurrentState) + " " + Debug.getName(childAt) + childAt.getLeft() + " " + childAt.getTop());
        }
    }

    private void evaluateLayout() {
        boolean z10;
        float signum = Math.signum(this.mTransitionGoalPosition - this.mTransitionLastPosition);
        long nanoTime = getNanoTime();
        Interpolator interpolator = this.mInterpolator;
        float f10 = this.mTransitionLastPosition + (!(interpolator instanceof StopLogic) ? ((((float) (nanoTime - this.mTransitionLastTime)) * signum) * 1.0E-9f) / this.mTransitionDuration : 0.0f);
        if (this.mTransitionInstantly) {
            f10 = this.mTransitionGoalPosition;
        }
        int i9 = (signum > 0.0f ? 1 : (signum == 0.0f ? 0 : -1));
        if ((i9 <= 0 || f10 < this.mTransitionGoalPosition) && (signum > 0.0f || f10 > this.mTransitionGoalPosition)) {
            z10 = false;
        } else {
            f10 = this.mTransitionGoalPosition;
            z10 = true;
        }
        if (interpolator != null && !z10) {
            if (this.mTemporalInterpolator) {
                f10 = interpolator.getInterpolation(((float) (nanoTime - this.mAnimationStartTime)) * 1.0E-9f);
            } else {
                f10 = interpolator.getInterpolation(f10);
            }
        }
        if ((i9 > 0 && f10 >= this.mTransitionGoalPosition) || (signum <= 0.0f && f10 <= this.mTransitionGoalPosition)) {
            f10 = this.mTransitionGoalPosition;
        }
        this.mPostInterpolationPosition = f10;
        int childCount = getChildCount();
        long nanoTime2 = getNanoTime();
        Interpolator interpolator2 = this.mProgressInterpolator;
        if (interpolator2 != null) {
            f10 = interpolator2.getInterpolation(f10);
        }
        for (int i10 = 0; i10 < childCount; i10++) {
            View childAt = getChildAt(i10);
            MotionController motionController = this.mFrameArrayList.get(childAt);
            if (motionController != null) {
                motionController.interpolate(childAt, f10, nanoTime2, this.mKeyCache);
            }
        }
        if (this.mMeasureDuringTransition) {
            requestLayout();
        }
    }

    private void fireTransitionChange() {
        CopyOnWriteArrayList<TransitionListener> copyOnWriteArrayList;
        if ((this.mTransitionListener == null && ((copyOnWriteArrayList = this.mTransitionListeners) == null || copyOnWriteArrayList.isEmpty())) || this.mListenerPosition == this.mTransitionPosition) {
            return;
        }
        if (this.mListenerState != -1) {
            TransitionListener transitionListener = this.mTransitionListener;
            if (transitionListener != null) {
                transitionListener.onTransitionStarted(this, this.mBeginState, this.mEndState);
            }
            CopyOnWriteArrayList<TransitionListener> copyOnWriteArrayList2 = this.mTransitionListeners;
            if (copyOnWriteArrayList2 != null) {
                Iterator<TransitionListener> it = copyOnWriteArrayList2.iterator();
                while (it.hasNext()) {
                    it.next().onTransitionStarted(this, this.mBeginState, this.mEndState);
                }
            }
            this.mIsAnimating = true;
        }
        this.mListenerState = -1;
        float f10 = this.mTransitionPosition;
        this.mListenerPosition = f10;
        TransitionListener transitionListener2 = this.mTransitionListener;
        if (transitionListener2 != null) {
            transitionListener2.onTransitionChange(this, this.mBeginState, this.mEndState, f10);
        }
        CopyOnWriteArrayList<TransitionListener> copyOnWriteArrayList3 = this.mTransitionListeners;
        if (copyOnWriteArrayList3 != null) {
            Iterator<TransitionListener> it2 = copyOnWriteArrayList3.iterator();
            while (it2.hasNext()) {
                it2.next().onTransitionChange(this, this.mBeginState, this.mEndState, this.mTransitionPosition);
            }
        }
        this.mIsAnimating = true;
    }

    private void fireTransitionStarted(MotionLayout motionLayout, int i9, int i10) {
        TransitionListener transitionListener = this.mTransitionListener;
        if (transitionListener != null) {
            transitionListener.onTransitionStarted(this, i9, i10);
        }
        CopyOnWriteArrayList<TransitionListener> copyOnWriteArrayList = this.mTransitionListeners;
        if (copyOnWriteArrayList != null) {
            Iterator<TransitionListener> it = copyOnWriteArrayList.iterator();
            while (it.hasNext()) {
                it.next().onTransitionStarted(motionLayout, i9, i10);
            }
        }
    }

    private boolean handlesTouchEvent(float f10, float f11, View view, MotionEvent motionEvent) {
        boolean z10;
        View childAt;
        if (view instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) view;
            for (int childCount = viewGroup.getChildCount() - 1; childCount >= 0; childCount--) {
                if (handlesTouchEvent((childAt.getLeft() + f10) - view.getScrollX(), (childAt.getTop() + f11) - view.getScrollY(), viewGroup.getChildAt(childCount), motionEvent)) {
                    z10 = true;
                    break;
                }
            }
        }
        z10 = false;
        if (!z10) {
            this.mBoundsCheck.set(f10, f11, (view.getRight() + f10) - view.getLeft(), (view.getBottom() + f11) - view.getTop());
            if ((motionEvent.getAction() != 0 || this.mBoundsCheck.contains(motionEvent.getX(), motionEvent.getY())) && callTransformedTouchEvent(view, motionEvent, -f10, -f11)) {
                return true;
            }
        }
        return z10;
    }

    private void init(AttributeSet attributeSet) {
        MotionScene motionScene;
        IS_IN_EDIT_MODE = isInEditMode();
        if (attributeSet != null) {
            TypedArray obtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, R.styleable.MotionLayout);
            int indexCount = obtainStyledAttributes.getIndexCount();
            boolean z10 = true;
            for (int i9 = 0; i9 < indexCount; i9++) {
                int index = obtainStyledAttributes.getIndex(i9);
                if (index == R.styleable.MotionLayout_layoutDescription) {
                    this.mScene = new MotionScene(getContext(), this, obtainStyledAttributes.getResourceId(index, -1));
                } else if (index == R.styleable.MotionLayout_currentState) {
                    this.mCurrentState = obtainStyledAttributes.getResourceId(index, -1);
                } else if (index == R.styleable.MotionLayout_motionProgress) {
                    this.mTransitionGoalPosition = obtainStyledAttributes.getFloat(index, 0.0f);
                    this.mInTransition = true;
                } else if (index == R.styleable.MotionLayout_applyMotionScene) {
                    z10 = obtainStyledAttributes.getBoolean(index, z10);
                } else if (index == R.styleable.MotionLayout_showPaths) {
                    if (this.mDebugPath == 0) {
                        this.mDebugPath = obtainStyledAttributes.getBoolean(index, false) ? 2 : 0;
                    }
                } else if (index == R.styleable.MotionLayout_motionDebug) {
                    this.mDebugPath = obtainStyledAttributes.getInt(index, 0);
                }
            }
            obtainStyledAttributes.recycle();
            if (this.mScene == null) {
                Log.e(TAG, "WARNING NO app:layoutDescription tag");
            }
            if (!z10) {
                this.mScene = null;
            }
        }
        if (this.mDebugPath != 0) {
            checkStructure();
        }
        if (this.mCurrentState != -1 || (motionScene = this.mScene) == null) {
            return;
        }
        this.mCurrentState = motionScene.getStartId();
        this.mBeginState = this.mScene.getStartId();
        this.mEndState = this.mScene.getEndId();
    }

    private void processTransitionCompleted() {
        CopyOnWriteArrayList<TransitionListener> copyOnWriteArrayList;
        if (this.mTransitionListener == null && ((copyOnWriteArrayList = this.mTransitionListeners) == null || copyOnWriteArrayList.isEmpty())) {
            return;
        }
        this.mIsAnimating = false;
        Iterator<Integer> it = this.mTransitionCompleted.iterator();
        while (it.hasNext()) {
            Integer next = it.next();
            TransitionListener transitionListener = this.mTransitionListener;
            if (transitionListener != null) {
                transitionListener.onTransitionCompleted(this, next.intValue());
            }
            CopyOnWriteArrayList<TransitionListener> copyOnWriteArrayList2 = this.mTransitionListeners;
            if (copyOnWriteArrayList2 != null) {
                Iterator<TransitionListener> it2 = copyOnWriteArrayList2.iterator();
                while (it2.hasNext()) {
                    it2.next().onTransitionCompleted(this, next.intValue());
                }
            }
        }
        this.mTransitionCompleted.clear();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setupMotionViews() {
        int childCount = getChildCount();
        this.mModel.build();
        boolean z10 = true;
        this.mInTransition = true;
        SparseArray sparseArray = new SparseArray();
        int i9 = 0;
        for (int i10 = 0; i10 < childCount; i10++) {
            View childAt = getChildAt(i10);
            sparseArray.put(childAt.getId(), this.mFrameArrayList.get(childAt));
        }
        int width = getWidth();
        int height = getHeight();
        int gatPathMotionArc = this.mScene.gatPathMotionArc();
        if (gatPathMotionArc != -1) {
            for (int i11 = 0; i11 < childCount; i11++) {
                MotionController motionController = this.mFrameArrayList.get(getChildAt(i11));
                if (motionController != null) {
                    motionController.setPathMotionArc(gatPathMotionArc);
                }
            }
        }
        SparseBooleanArray sparseBooleanArray = new SparseBooleanArray();
        int[] iArr = new int[this.mFrameArrayList.size()];
        int i12 = 0;
        for (int i13 = 0; i13 < childCount; i13++) {
            MotionController motionController2 = this.mFrameArrayList.get(getChildAt(i13));
            if (motionController2.getAnimateRelativeTo() != -1) {
                sparseBooleanArray.put(motionController2.getAnimateRelativeTo(), true);
                iArr[i12] = motionController2.getAnimateRelativeTo();
                i12++;
            }
        }
        if (this.mDecoratorsHelpers != null) {
            for (int i14 = 0; i14 < i12; i14++) {
                MotionController motionController3 = this.mFrameArrayList.get(findViewById(iArr[i14]));
                if (motionController3 != null) {
                    this.mScene.getKeyFrames(motionController3);
                }
            }
            Iterator<MotionHelper> it = this.mDecoratorsHelpers.iterator();
            while (it.hasNext()) {
                it.next().onPreSetup(this, this.mFrameArrayList);
            }
            for (int i15 = 0; i15 < i12; i15++) {
                MotionController motionController4 = this.mFrameArrayList.get(findViewById(iArr[i15]));
                if (motionController4 != null) {
                    motionController4.setup(width, height, this.mTransitionDuration, getNanoTime());
                }
            }
        } else {
            for (int i16 = 0; i16 < i12; i16++) {
                MotionController motionController5 = this.mFrameArrayList.get(findViewById(iArr[i16]));
                if (motionController5 != null) {
                    this.mScene.getKeyFrames(motionController5);
                    motionController5.setup(width, height, this.mTransitionDuration, getNanoTime());
                }
            }
        }
        for (int i17 = 0; i17 < childCount; i17++) {
            View childAt2 = getChildAt(i17);
            MotionController motionController6 = this.mFrameArrayList.get(childAt2);
            if (!sparseBooleanArray.get(childAt2.getId()) && motionController6 != null) {
                this.mScene.getKeyFrames(motionController6);
                motionController6.setup(width, height, this.mTransitionDuration, getNanoTime());
            }
        }
        float staggered = this.mScene.getStaggered();
        if (staggered != 0.0f) {
            boolean z11 = ((double) staggered) < 0.0d;
            float abs = Math.abs(staggered);
            float f10 = -3.4028235E38f;
            float f11 = Float.MAX_VALUE;
            int i18 = 0;
            float f12 = Float.MAX_VALUE;
            float f13 = -3.4028235E38f;
            while (true) {
                if (i18 >= childCount) {
                    z10 = false;
                    break;
                }
                MotionController motionController7 = this.mFrameArrayList.get(getChildAt(i18));
                if (!Float.isNaN(motionController7.mMotionStagger)) {
                    break;
                }
                float finalX = motionController7.getFinalX();
                float finalY = motionController7.getFinalY();
                float f14 = z11 ? finalY - finalX : finalY + finalX;
                f12 = Math.min(f12, f14);
                f13 = Math.max(f13, f14);
                i18++;
            }
            if (!z10) {
                while (i9 < childCount) {
                    MotionController motionController8 = this.mFrameArrayList.get(getChildAt(i9));
                    float finalX2 = motionController8.getFinalX();
                    float finalY2 = motionController8.getFinalY();
                    float f15 = z11 ? finalY2 - finalX2 : finalY2 + finalX2;
                    motionController8.mStaggerScale = 1.0f / (1.0f - abs);
                    motionController8.mStaggerOffset = abs - (((f15 - f12) * abs) / (f13 - f12));
                    i9++;
                }
                return;
            }
            for (int i19 = 0; i19 < childCount; i19++) {
                MotionController motionController9 = this.mFrameArrayList.get(getChildAt(i19));
                if (!Float.isNaN(motionController9.mMotionStagger)) {
                    f11 = Math.min(f11, motionController9.mMotionStagger);
                    f10 = Math.max(f10, motionController9.mMotionStagger);
                }
            }
            while (i9 < childCount) {
                MotionController motionController10 = this.mFrameArrayList.get(getChildAt(i9));
                if (!Float.isNaN(motionController10.mMotionStagger)) {
                    motionController10.mStaggerScale = 1.0f / (1.0f - abs);
                    if (z11) {
                        motionController10.mStaggerOffset = abs - (((f10 - motionController10.mMotionStagger) / (f10 - f11)) * abs);
                    } else {
                        motionController10.mStaggerOffset = abs - (((motionController10.mMotionStagger - f11) * abs) / (f10 - f11));
                    }
                }
                i9++;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Rect toRect(ConstraintWidget constraintWidget) {
        this.mTempRect.top = constraintWidget.getY();
        this.mTempRect.left = constraintWidget.getX();
        Rect rect = this.mTempRect;
        int width = constraintWidget.getWidth();
        Rect rect2 = this.mTempRect;
        rect.right = width + rect2.left;
        int height = constraintWidget.getHeight();
        Rect rect3 = this.mTempRect;
        rect2.bottom = height + rect3.top;
        return rect3;
    }

    private static boolean willJump(float f10, float f11, float f12) {
        if (f10 > 0.0f) {
            float f13 = f10 / f12;
            return f11 + ((f10 * f13) - (((f12 * f13) * f13) / 2.0f)) > 1.0f;
        }
        float f14 = (-f10) / f12;
        return f11 + ((f10 * f14) + (((f12 * f14) * f14) / 2.0f)) < 0.0f;
    }

    public void addTransitionListener(TransitionListener transitionListener) {
        if (this.mTransitionListeners == null) {
            this.mTransitionListeners = new CopyOnWriteArrayList<>();
        }
        this.mTransitionListeners.add(transitionListener);
    }

    void animateTo(float f10) {
        MotionScene motionScene = this.mScene;
        if (motionScene == null) {
            return;
        }
        float f11 = this.mTransitionLastPosition;
        float f12 = this.mTransitionPosition;
        if (f11 != f12 && this.mTransitionInstantly) {
            this.mTransitionLastPosition = f12;
        }
        float f13 = this.mTransitionLastPosition;
        if (f13 == f10) {
            return;
        }
        this.mTemporalInterpolator = false;
        this.mTransitionGoalPosition = f10;
        this.mTransitionDuration = motionScene.getDuration() / 1000.0f;
        setProgress(this.mTransitionGoalPosition);
        this.mInterpolator = null;
        this.mProgressInterpolator = this.mScene.getInterpolator();
        this.mTransitionInstantly = false;
        this.mAnimationStartTime = getNanoTime();
        this.mInTransition = true;
        this.mTransitionPosition = f13;
        this.mTransitionLastPosition = f13;
        invalidate();
    }

    public boolean applyViewTransition(int i9, MotionController motionController) {
        MotionScene motionScene = this.mScene;
        if (motionScene != null) {
            return motionScene.applyViewTransition(i9, motionController);
        }
        return false;
    }

    public ConstraintSet cloneConstraintSet(int i9) {
        MotionScene motionScene = this.mScene;
        if (motionScene == null) {
            return null;
        }
        ConstraintSet constraintSet = motionScene.getConstraintSet(i9);
        ConstraintSet constraintSet2 = new ConstraintSet();
        constraintSet2.clone(constraintSet);
        return constraintSet2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void disableAutoTransition(boolean z10) {
        MotionScene motionScene = this.mScene;
        if (motionScene == null) {
            return;
        }
        motionScene.disableAutoTransition(z10);
    }

    @Override // androidx.constraintlayout.widget.ConstraintLayout, android.view.ViewGroup, android.view.View
    protected void dispatchDraw(Canvas canvas) {
        long j10;
        ViewTransitionController viewTransitionController;
        ArrayList<MotionHelper> arrayList = this.mDecoratorsHelpers;
        if (arrayList != null) {
            Iterator<MotionHelper> it = arrayList.iterator();
            while (it.hasNext()) {
                it.next().onPreDraw(canvas);
            }
        }
        evaluate(false);
        MotionScene motionScene = this.mScene;
        if (motionScene != null && (viewTransitionController = motionScene.mViewTransitionController) != null) {
            viewTransitionController.animate();
        }
        super.dispatchDraw(canvas);
        if (this.mScene == null) {
            return;
        }
        if ((this.mDebugPath & 1) == 1 && !isInEditMode()) {
            this.mFrames++;
            long nanoTime = getNanoTime();
            long j11 = this.mLastDrawTime;
            if (j11 != -1) {
                if (nanoTime - j11 > 200000000) {
                    this.mLastFps = ((int) ((this.mFrames / (((float) j10) * 1.0E-9f)) * 100.0f)) / 100.0f;
                    this.mFrames = 0;
                    this.mLastDrawTime = nanoTime;
                }
            } else {
                this.mLastDrawTime = nanoTime;
            }
            Paint paint = new Paint();
            paint.setTextSize(42.0f);
            StringBuilder sb2 = new StringBuilder();
            sb2.append(this.mLastFps + " fps " + Debug.getState(this, this.mBeginState) + " -> ");
            sb2.append(Debug.getState(this, this.mEndState));
            sb2.append(" (progress: ");
            sb2.append(((int) (getProgress() * 1000.0f)) / 10.0f);
            sb2.append(" ) state=");
            int i9 = this.mCurrentState;
            sb2.append(i9 == -1 ? "undefined" : Debug.getState(this, i9));
            String sb3 = sb2.toString();
            paint.setColor(ViewCompat.MEASURED_STATE_MASK);
            canvas.drawText(sb3, 11.0f, getHeight() - 29, paint);
            paint.setColor(-7864184);
            canvas.drawText(sb3, 10.0f, getHeight() - 30, paint);
        }
        if (this.mDebugPath > 1) {
            if (this.mDevModeDraw == null) {
                this.mDevModeDraw = new DevModeDraw();
            }
            this.mDevModeDraw.draw(canvas, this.mFrameArrayList, this.mScene.getDuration(), this.mDebugPath);
        }
        ArrayList<MotionHelper> arrayList2 = this.mDecoratorsHelpers;
        if (arrayList2 != null) {
            Iterator<MotionHelper> it2 = arrayList2.iterator();
            while (it2.hasNext()) {
                it2.next().onPostDraw(canvas);
            }
        }
    }

    public void enableTransition(int i9, boolean z10) {
        MotionScene.Transition transition = getTransition(i9);
        if (z10) {
            transition.setEnabled(true);
            return;
        }
        MotionScene motionScene = this.mScene;
        if (transition == motionScene.mCurrentTransition) {
            Iterator<MotionScene.Transition> it = motionScene.getTransitionsWithState(this.mCurrentState).iterator();
            while (true) {
                if (!it.hasNext()) {
                    break;
                }
                MotionScene.Transition next = it.next();
                if (next.isEnabled()) {
                    this.mScene.mCurrentTransition = next;
                    break;
                }
            }
        }
        transition.setEnabled(false);
    }

    public void enableViewTransition(int i9, boolean z10) {
        MotionScene motionScene = this.mScene;
        if (motionScene != null) {
            motionScene.enableViewTransition(i9, z10);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void endTrigger(boolean z10) {
        int childCount = getChildCount();
        for (int i9 = 0; i9 < childCount; i9++) {
            MotionController motionController = this.mFrameArrayList.get(getChildAt(i9));
            if (motionController != null) {
                motionController.endTrigger(z10);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Removed duplicated region for block: B:101:0x019c  */
    /* JADX WARN: Removed duplicated region for block: B:111:0x01b3  */
    /* JADX WARN: Removed duplicated region for block: B:117:0x01c2  */
    /* JADX WARN: Removed duplicated region for block: B:120:0x01cf  */
    /* JADX WARN: Removed duplicated region for block: B:127:0x01f0  */
    /* JADX WARN: Removed duplicated region for block: B:132:0x020b  */
    /* JADX WARN: Removed duplicated region for block: B:146:0x022d  */
    /* JADX WARN: Removed duplicated region for block: B:72:0x0115  */
    /* JADX WARN: Removed duplicated region for block: B:74:0x011c  */
    /* JADX WARN: Removed duplicated region for block: B:89:0x0153  */
    /* JADX WARN: Removed duplicated region for block: B:90:0x0155  */
    /* JADX WARN: Removed duplicated region for block: B:93:0x015d  */
    /* JADX WARN: Removed duplicated region for block: B:96:0x0174  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void evaluate(boolean r24) {
        /*
            Method dump skipped, instructions count: 634
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.constraintlayout.motion.widget.MotionLayout.evaluate(boolean):void");
    }

    protected void fireTransitionCompleted() {
        int i9;
        CopyOnWriteArrayList<TransitionListener> copyOnWriteArrayList;
        if ((this.mTransitionListener != null || ((copyOnWriteArrayList = this.mTransitionListeners) != null && !copyOnWriteArrayList.isEmpty())) && this.mListenerState == -1) {
            this.mListenerState = this.mCurrentState;
            if (this.mTransitionCompleted.isEmpty()) {
                i9 = -1;
            } else {
                ArrayList<Integer> arrayList = this.mTransitionCompleted;
                i9 = arrayList.get(arrayList.size() - 1).intValue();
            }
            int i10 = this.mCurrentState;
            if (i9 != i10 && i10 != -1) {
                this.mTransitionCompleted.add(Integer.valueOf(i10));
            }
        }
        processTransitionCompleted();
        Runnable runnable = this.mOnComplete;
        if (runnable != null) {
            runnable.run();
        }
        int[] iArr = this.mScheduledTransitionTo;
        if (iArr == null || this.mScheduledTransitions <= 0) {
            return;
        }
        transitionToState(iArr[0]);
        int[] iArr2 = this.mScheduledTransitionTo;
        System.arraycopy(iArr2, 1, iArr2, 0, iArr2.length - 1);
        this.mScheduledTransitions--;
    }

    public void fireTrigger(int i9, boolean z10, float f10) {
        TransitionListener transitionListener = this.mTransitionListener;
        if (transitionListener != null) {
            transitionListener.onTransitionTrigger(this, i9, z10, f10);
        }
        CopyOnWriteArrayList<TransitionListener> copyOnWriteArrayList = this.mTransitionListeners;
        if (copyOnWriteArrayList != null) {
            Iterator<TransitionListener> it = copyOnWriteArrayList.iterator();
            while (it.hasNext()) {
                it.next().onTransitionTrigger(this, i9, z10, f10);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void getAnchorDpDt(int i9, float f10, float f11, float f12, float[] fArr) {
        String resourceName;
        HashMap<View, MotionController> hashMap = this.mFrameArrayList;
        View viewById = getViewById(i9);
        MotionController motionController = hashMap.get(viewById);
        if (motionController != null) {
            motionController.getDpDt(f10, f11, f12, fArr);
            float y10 = viewById.getY();
            this.lastPos = f10;
            this.lastY = y10;
            return;
        }
        if (viewById == null) {
            resourceName = "" + i9;
        } else {
            resourceName = viewById.getContext().getResources().getResourceName(i9);
        }
        Log.w(TAG, "WARNING could not find view id " + resourceName);
    }

    public ConstraintSet getConstraintSet(int i9) {
        MotionScene motionScene = this.mScene;
        if (motionScene == null) {
            return null;
        }
        return motionScene.getConstraintSet(i9);
    }

    public int[] getConstraintSetIds() {
        MotionScene motionScene = this.mScene;
        if (motionScene == null) {
            return null;
        }
        return motionScene.getConstraintSetIds();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public String getConstraintSetNames(int i9) {
        MotionScene motionScene = this.mScene;
        if (motionScene == null) {
            return null;
        }
        return motionScene.lookUpConstraintName(i9);
    }

    public int getCurrentState() {
        return this.mCurrentState;
    }

    public void getDebugMode(boolean z10) {
        this.mDebugPath = z10 ? 2 : 1;
        invalidate();
    }

    public ArrayList<MotionScene.Transition> getDefinedTransitions() {
        MotionScene motionScene = this.mScene;
        if (motionScene == null) {
            return null;
        }
        return motionScene.getDefinedTransitions();
    }

    public DesignTool getDesignTool() {
        if (this.mDesignTool == null) {
            this.mDesignTool = new DesignTool(this);
        }
        return this.mDesignTool;
    }

    public int getEndState() {
        return this.mEndState;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public MotionController getMotionController(int i9) {
        return this.mFrameArrayList.get(findViewById(i9));
    }

    protected long getNanoTime() {
        return System.nanoTime();
    }

    public float getProgress() {
        return this.mTransitionLastPosition;
    }

    public MotionScene getScene() {
        return this.mScene;
    }

    public int getStartState() {
        return this.mBeginState;
    }

    public float getTargetPosition() {
        return this.mTransitionGoalPosition;
    }

    public MotionScene.Transition getTransition(int i9) {
        return this.mScene.getTransitionById(i9);
    }

    public Bundle getTransitionState() {
        if (this.mStateCache == null) {
            this.mStateCache = new StateCache();
        }
        this.mStateCache.recordState();
        return this.mStateCache.getTransitionState();
    }

    public long getTransitionTimeMs() {
        MotionScene motionScene = this.mScene;
        if (motionScene != null) {
            this.mTransitionDuration = motionScene.getDuration() / 1000.0f;
        }
        return this.mTransitionDuration * 1000.0f;
    }

    public float getVelocity() {
        return this.mLastVelocity;
    }

    public void getViewVelocity(View view, float f10, float f11, float[] fArr, int i9) {
        float f12;
        float f13 = this.mLastVelocity;
        float f14 = this.mTransitionLastPosition;
        if (this.mInterpolator != null) {
            float signum = Math.signum(this.mTransitionGoalPosition - f14);
            float interpolation = this.mInterpolator.getInterpolation(this.mTransitionLastPosition + EPSILON);
            float interpolation2 = this.mInterpolator.getInterpolation(this.mTransitionLastPosition);
            f13 = (signum * ((interpolation - interpolation2) / EPSILON)) / this.mTransitionDuration;
            f12 = interpolation2;
        } else {
            f12 = f14;
        }
        Interpolator interpolator = this.mInterpolator;
        if (interpolator instanceof MotionInterpolator) {
            f13 = ((MotionInterpolator) interpolator).getVelocity();
        }
        MotionController motionController = this.mFrameArrayList.get(view);
        if ((i9 & 1) == 0) {
            motionController.getPostLayoutDvDp(f12, view.getWidth(), view.getHeight(), f10, f11, fArr);
        } else {
            motionController.getDpDt(f12, f10, f11, fArr);
        }
        if (i9 < 2) {
            fArr[0] = fArr[0] * f13;
            fArr[1] = fArr[1] * f13;
        }
    }

    @Override // android.view.View
    public boolean isAttachedToWindow() {
        return super.isAttachedToWindow();
    }

    public boolean isDelayedApplicationOfInitialState() {
        return this.mDelayedApply;
    }

    public boolean isInRotation() {
        return this.mInRotation;
    }

    public boolean isInteractionEnabled() {
        return this.mInteractionEnabled;
    }

    public boolean isViewTransitionEnabled(int i9) {
        MotionScene motionScene = this.mScene;
        if (motionScene != null) {
            return motionScene.isViewTransitionEnabled(i9);
        }
        return false;
    }

    public void jumpToState(int i9) {
        if (!isAttachedToWindow()) {
            this.mCurrentState = i9;
        }
        if (this.mBeginState == i9) {
            setProgress(0.0f);
        } else if (this.mEndState == i9) {
            setProgress(1.0f);
        } else {
            setTransition(i9, i9);
        }
    }

    @Override // androidx.constraintlayout.widget.ConstraintLayout
    public void loadLayoutDescription(int i9) {
        MotionScene.Transition transition;
        if (i9 != 0) {
            try {
                MotionScene motionScene = new MotionScene(getContext(), this, i9);
                this.mScene = motionScene;
                if (this.mCurrentState == -1) {
                    this.mCurrentState = motionScene.getStartId();
                    this.mBeginState = this.mScene.getStartId();
                    this.mEndState = this.mScene.getEndId();
                }
                if (isAttachedToWindow()) {
                    try {
                        Display display = getDisplay();
                        this.mPreviouseRotation = display == null ? 0 : display.getRotation();
                        MotionScene motionScene2 = this.mScene;
                        if (motionScene2 != null) {
                            ConstraintSet constraintSet = motionScene2.getConstraintSet(this.mCurrentState);
                            this.mScene.readFallback(this);
                            ArrayList<MotionHelper> arrayList = this.mDecoratorsHelpers;
                            if (arrayList != null) {
                                Iterator<MotionHelper> it = arrayList.iterator();
                                while (it.hasNext()) {
                                    it.next().onFinishedMotionScene(this);
                                }
                            }
                            if (constraintSet != null) {
                                constraintSet.applyTo(this);
                            }
                            this.mBeginState = this.mCurrentState;
                        }
                        onNewStateAttachHandlers();
                        StateCache stateCache = this.mStateCache;
                        if (stateCache != null) {
                            if (this.mDelayedApply) {
                                post(new Runnable() { // from class: androidx.constraintlayout.motion.widget.MotionLayout.1
                                    @Override // java.lang.Runnable
                                    public void run() {
                                        MotionLayout.this.mStateCache.apply();
                                    }
                                });
                                return;
                            } else {
                                stateCache.apply();
                                return;
                            }
                        }
                        MotionScene motionScene3 = this.mScene;
                        if (motionScene3 == null || (transition = motionScene3.mCurrentTransition) == null || transition.getAutoTransition() != 4) {
                            return;
                        }
                        transitionToEnd();
                        setState(TransitionState.SETUP);
                        setState(TransitionState.MOVING);
                        return;
                    } catch (Exception e10) {
                        throw new IllegalArgumentException("unable to parse MotionScene file", e10);
                    }
                }
                this.mScene = null;
                return;
            } catch (Exception e11) {
                throw new IllegalArgumentException("unable to parse MotionScene file", e11);
            }
        }
        this.mScene = null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int lookUpConstraintId(String str) {
        MotionScene motionScene = this.mScene;
        if (motionScene == null) {
            return 0;
        }
        return motionScene.lookUpConstraintId(str);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public MotionTracker obtainVelocityTracker() {
        return MyTracker.obtain();
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        MotionScene.Transition transition;
        int i9;
        super.onAttachedToWindow();
        Display display = getDisplay();
        if (display != null) {
            this.mPreviouseRotation = display.getRotation();
        }
        MotionScene motionScene = this.mScene;
        if (motionScene != null && (i9 = this.mCurrentState) != -1) {
            ConstraintSet constraintSet = motionScene.getConstraintSet(i9);
            this.mScene.readFallback(this);
            ArrayList<MotionHelper> arrayList = this.mDecoratorsHelpers;
            if (arrayList != null) {
                Iterator<MotionHelper> it = arrayList.iterator();
                while (it.hasNext()) {
                    it.next().onFinishedMotionScene(this);
                }
            }
            if (constraintSet != null) {
                constraintSet.applyTo(this);
            }
            this.mBeginState = this.mCurrentState;
        }
        onNewStateAttachHandlers();
        StateCache stateCache = this.mStateCache;
        if (stateCache != null) {
            if (this.mDelayedApply) {
                post(new Runnable() { // from class: androidx.constraintlayout.motion.widget.MotionLayout.4
                    @Override // java.lang.Runnable
                    public void run() {
                        MotionLayout.this.mStateCache.apply();
                    }
                });
                return;
            } else {
                stateCache.apply();
                return;
            }
        }
        MotionScene motionScene2 = this.mScene;
        if (motionScene2 == null || (transition = motionScene2.mCurrentTransition) == null || transition.getAutoTransition() != 4) {
            return;
        }
        transitionToEnd();
        setState(TransitionState.SETUP);
        setState(TransitionState.MOVING);
    }

    @Override // android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        TouchResponse touchResponse;
        int touchRegionId;
        RectF touchRegion;
        MotionScene motionScene = this.mScene;
        if (motionScene != null && this.mInteractionEnabled) {
            ViewTransitionController viewTransitionController = motionScene.mViewTransitionController;
            if (viewTransitionController != null) {
                viewTransitionController.touchEvent(motionEvent);
            }
            MotionScene.Transition transition = this.mScene.mCurrentTransition;
            if (transition != null && transition.isEnabled() && (touchResponse = transition.getTouchResponse()) != null && ((motionEvent.getAction() != 0 || (touchRegion = touchResponse.getTouchRegion(this, new RectF())) == null || touchRegion.contains(motionEvent.getX(), motionEvent.getY())) && (touchRegionId = touchResponse.getTouchRegionId()) != -1)) {
                View view = this.mRegionView;
                if (view == null || view.getId() != touchRegionId) {
                    this.mRegionView = findViewById(touchRegionId);
                }
                View view2 = this.mRegionView;
                if (view2 != null) {
                    this.mBoundsCheck.set(view2.getLeft(), this.mRegionView.getTop(), this.mRegionView.getRight(), this.mRegionView.getBottom());
                    if (this.mBoundsCheck.contains(motionEvent.getX(), motionEvent.getY()) && !handlesTouchEvent(this.mRegionView.getLeft(), this.mRegionView.getTop(), this.mRegionView, motionEvent)) {
                        return onTouchEvent(motionEvent);
                    }
                }
            }
        }
        return false;
    }

    @Override // androidx.constraintlayout.widget.ConstraintLayout, android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z10, int i9, int i10, int i11, int i12) {
        this.mInLayout = true;
        try {
            if (this.mScene == null) {
                super.onLayout(z10, i9, i10, i11, i12);
                return;
            }
            int i13 = i11 - i9;
            int i14 = i12 - i10;
            if (this.mLastLayoutWidth != i13 || this.mLastLayoutHeight != i14) {
                rebuildScene();
                evaluate(true);
            }
            this.mLastLayoutWidth = i13;
            this.mLastLayoutHeight = i14;
            this.mOldWidth = i13;
            this.mOldHeight = i14;
        } finally {
            this.mInLayout = false;
        }
    }

    @Override // androidx.constraintlayout.widget.ConstraintLayout, android.view.View
    protected void onMeasure(int i9, int i10) {
        if (this.mScene == null) {
            super.onMeasure(i9, i10);
            return;
        }
        boolean z10 = false;
        boolean z11 = (this.mLastWidthMeasureSpec == i9 && this.mLastHeightMeasureSpec == i10) ? false : true;
        if (this.mNeedsFireTransitionCompleted) {
            this.mNeedsFireTransitionCompleted = false;
            onNewStateAttachHandlers();
            processTransitionCompleted();
            z11 = true;
        }
        if (this.mDirtyHierarchy) {
            z11 = true;
        }
        this.mLastWidthMeasureSpec = i9;
        this.mLastHeightMeasureSpec = i10;
        int startId = this.mScene.getStartId();
        int endId = this.mScene.getEndId();
        if ((z11 || this.mModel.isNotConfiguredWith(startId, endId)) && this.mBeginState != -1) {
            super.onMeasure(i9, i10);
            this.mModel.initFrom(this.mLayoutWidget, this.mScene.getConstraintSet(startId), this.mScene.getConstraintSet(endId));
            this.mModel.reEvaluateState();
            this.mModel.setMeasuredId(startId, endId);
        } else {
            if (z11) {
                super.onMeasure(i9, i10);
            }
            z10 = true;
        }
        if (this.mMeasureDuringTransition || z10) {
            int paddingTop = getPaddingTop() + getPaddingBottom();
            int width = this.mLayoutWidget.getWidth() + getPaddingLeft() + getPaddingRight();
            int height = this.mLayoutWidget.getHeight() + paddingTop;
            int i11 = this.mWidthMeasureMode;
            if (i11 == Integer.MIN_VALUE || i11 == 0) {
                int i12 = this.mStartWrapWidth;
                width = (int) (i12 + (this.mPostInterpolationPosition * (this.mEndWrapWidth - i12)));
                requestLayout();
            }
            int i13 = this.mHeightMeasureMode;
            if (i13 == Integer.MIN_VALUE || i13 == 0) {
                int i14 = this.mStartWrapHeight;
                height = (int) (i14 + (this.mPostInterpolationPosition * (this.mEndWrapHeight - i14)));
                requestLayout();
            }
            setMeasuredDimension(width, height);
        }
        evaluateLayout();
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, androidx.core.view.NestedScrollingParent
    public boolean onNestedFling(@NonNull View view, float f10, float f11, boolean z10) {
        return false;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, androidx.core.view.NestedScrollingParent
    public boolean onNestedPreFling(@NonNull View view, float f10, float f11) {
        return false;
    }

    @Override // androidx.core.view.NestedScrollingParent2
    public void onNestedPreScroll(@NonNull final View view, int i9, int i10, @NonNull int[] iArr, int i11) {
        MotionScene.Transition transition;
        TouchResponse touchResponse;
        int touchRegionId;
        MotionScene motionScene = this.mScene;
        if (motionScene == null || (transition = motionScene.mCurrentTransition) == null || !transition.isEnabled()) {
            return;
        }
        int i12 = -1;
        if (!transition.isEnabled() || (touchResponse = transition.getTouchResponse()) == null || (touchRegionId = touchResponse.getTouchRegionId()) == -1 || view.getId() == touchRegionId) {
            if (motionScene.getMoveWhenScrollAtTop()) {
                TouchResponse touchResponse2 = transition.getTouchResponse();
                if (touchResponse2 != null && (touchResponse2.getFlags() & 4) != 0) {
                    i12 = i10;
                }
                float f10 = this.mTransitionPosition;
                if ((f10 == 1.0f || f10 == 0.0f) && view.canScrollVertically(i12)) {
                    return;
                }
            }
            if (transition.getTouchResponse() != null && (transition.getTouchResponse().getFlags() & 1) != 0) {
                float progressDirection = motionScene.getProgressDirection(i9, i10);
                float f11 = this.mTransitionLastPosition;
                if ((f11 <= 0.0f && progressDirection < 0.0f) || (f11 >= 1.0f && progressDirection > 0.0f)) {
                    view.setNestedScrollingEnabled(false);
                    view.post(new Runnable(this) { // from class: androidx.constraintlayout.motion.widget.MotionLayout.3
                        @Override // java.lang.Runnable
                        public void run() {
                            view.setNestedScrollingEnabled(true);
                        }
                    });
                    return;
                }
            }
            float f12 = this.mTransitionPosition;
            long nanoTime = getNanoTime();
            float f13 = i9;
            this.mScrollTargetDX = f13;
            float f14 = i10;
            this.mScrollTargetDY = f14;
            this.mScrollTargetDT = (float) ((nanoTime - this.mScrollTargetTime) * 1.0E-9d);
            this.mScrollTargetTime = nanoTime;
            motionScene.processScrollMove(f13, f14);
            if (f12 != this.mTransitionPosition) {
                iArr[0] = i9;
                iArr[1] = i10;
            }
            evaluate(false);
            if (iArr[0] == 0 && iArr[1] == 0) {
                return;
            }
            this.mUndergoingMotion = true;
        }
    }

    @Override // androidx.core.view.NestedScrollingParent2
    public void onNestedScroll(@NonNull View view, int i9, int i10, int i11, int i12, int i13) {
    }

    @Override // androidx.core.view.NestedScrollingParent3
    public void onNestedScroll(@NonNull View view, int i9, int i10, int i11, int i12, int i13, int[] iArr) {
        if (this.mUndergoingMotion || i9 != 0 || i10 != 0) {
            iArr[0] = iArr[0] + i11;
            iArr[1] = iArr[1] + i12;
        }
        this.mUndergoingMotion = false;
    }

    @Override // androidx.core.view.NestedScrollingParent2
    public void onNestedScrollAccepted(@NonNull View view, @NonNull View view2, int i9, int i10) {
        this.mScrollTargetTime = getNanoTime();
        this.mScrollTargetDT = 0.0f;
        this.mScrollTargetDX = 0.0f;
        this.mScrollTargetDY = 0.0f;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void onNewStateAttachHandlers() {
        MotionScene motionScene = this.mScene;
        if (motionScene == null) {
            return;
        }
        if (motionScene.autoTransition(this, this.mCurrentState)) {
            requestLayout();
            return;
        }
        int i9 = this.mCurrentState;
        if (i9 != -1) {
            this.mScene.addOnClickListeners(this, i9);
        }
        if (this.mScene.supportTouch()) {
            this.mScene.setupTouch();
        }
    }

    @Override // android.view.View
    public void onRtlPropertiesChanged(int i9) {
        MotionScene motionScene = this.mScene;
        if (motionScene != null) {
            motionScene.setRtl(isRtl());
        }
    }

    @Override // androidx.core.view.NestedScrollingParent2
    public boolean onStartNestedScroll(@NonNull View view, @NonNull View view2, int i9, int i10) {
        MotionScene.Transition transition;
        MotionScene motionScene = this.mScene;
        return (motionScene == null || (transition = motionScene.mCurrentTransition) == null || transition.getTouchResponse() == null || (this.mScene.mCurrentTransition.getTouchResponse().getFlags() & 2) != 0) ? false : true;
    }

    @Override // androidx.core.view.NestedScrollingParent2
    public void onStopNestedScroll(@NonNull View view, int i9) {
        MotionScene motionScene = this.mScene;
        if (motionScene != null) {
            float f10 = this.mScrollTargetDT;
            if (f10 == 0.0f) {
                return;
            }
            motionScene.processScrollUp(this.mScrollTargetDX / f10, this.mScrollTargetDY / f10);
        }
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        MotionScene motionScene = this.mScene;
        if (motionScene != null && this.mInteractionEnabled && motionScene.supportTouch()) {
            MotionScene.Transition transition = this.mScene.mCurrentTransition;
            if (transition != null && !transition.isEnabled()) {
                return super.onTouchEvent(motionEvent);
            }
            this.mScene.processTouchEvent(motionEvent, getCurrentState(), this);
            if (this.mScene.mCurrentTransition.isTransitionFlag(4)) {
                return this.mScene.mCurrentTransition.getTouchResponse().isDragStarted();
            }
            return true;
        }
        return super.onTouchEvent(motionEvent);
    }

    @Override // androidx.constraintlayout.widget.ConstraintLayout, android.view.ViewGroup
    public void onViewAdded(View view) {
        super.onViewAdded(view);
        if (view instanceof MotionHelper) {
            MotionHelper motionHelper = (MotionHelper) view;
            if (this.mTransitionListeners == null) {
                this.mTransitionListeners = new CopyOnWriteArrayList<>();
            }
            this.mTransitionListeners.add(motionHelper);
            if (motionHelper.isUsedOnShow()) {
                if (this.mOnShowHelpers == null) {
                    this.mOnShowHelpers = new ArrayList<>();
                }
                this.mOnShowHelpers.add(motionHelper);
            }
            if (motionHelper.isUseOnHide()) {
                if (this.mOnHideHelpers == null) {
                    this.mOnHideHelpers = new ArrayList<>();
                }
                this.mOnHideHelpers.add(motionHelper);
            }
            if (motionHelper.isDecorator()) {
                if (this.mDecoratorsHelpers == null) {
                    this.mDecoratorsHelpers = new ArrayList<>();
                }
                this.mDecoratorsHelpers.add(motionHelper);
            }
        }
    }

    @Override // androidx.constraintlayout.widget.ConstraintLayout, android.view.ViewGroup
    public void onViewRemoved(View view) {
        super.onViewRemoved(view);
        ArrayList<MotionHelper> arrayList = this.mOnShowHelpers;
        if (arrayList != null) {
            arrayList.remove(view);
        }
        ArrayList<MotionHelper> arrayList2 = this.mOnHideHelpers;
        if (arrayList2 != null) {
            arrayList2.remove(view);
        }
    }

    @Override // androidx.constraintlayout.widget.ConstraintLayout
    protected void parseLayoutDescription(int i9) {
        this.mConstraintLayoutSpec = null;
    }

    @Deprecated
    public void rebuildMotion() {
        Log.e(TAG, "This method is deprecated. Please call rebuildScene() instead.");
        rebuildScene();
    }

    public void rebuildScene() {
        this.mModel.reEvaluateState();
        invalidate();
    }

    public boolean removeTransitionListener(TransitionListener transitionListener) {
        CopyOnWriteArrayList<TransitionListener> copyOnWriteArrayList = this.mTransitionListeners;
        if (copyOnWriteArrayList == null) {
            return false;
        }
        return copyOnWriteArrayList.remove(transitionListener);
    }

    @Override // androidx.constraintlayout.widget.ConstraintLayout, android.view.View, android.view.ViewParent
    public void requestLayout() {
        MotionScene motionScene;
        MotionScene.Transition transition;
        if (!this.mMeasureDuringTransition && this.mCurrentState == -1 && (motionScene = this.mScene) != null && (transition = motionScene.mCurrentTransition) != null) {
            int layoutDuringTransition = transition.getLayoutDuringTransition();
            if (layoutDuringTransition == 0) {
                return;
            }
            if (layoutDuringTransition == 2) {
                int childCount = getChildCount();
                for (int i9 = 0; i9 < childCount; i9++) {
                    this.mFrameArrayList.get(getChildAt(i9)).remeasure();
                }
                return;
            }
        }
        super.requestLayout();
    }

    @RequiresApi(api = 17)
    public void rotateTo(int i9, int i10) {
        this.mInRotation = true;
        this.mPreRotateWidth = getWidth();
        this.mPreRotateHeight = getHeight();
        int rotation = getDisplay().getRotation();
        this.mRotatMode = (rotation + 1) % 4 <= (this.mPreviouseRotation + 1) % 4 ? 2 : 1;
        this.mPreviouseRotation = rotation;
        int childCount = getChildCount();
        for (int i11 = 0; i11 < childCount; i11++) {
            View childAt = getChildAt(i11);
            ViewState viewState = this.mPreRotate.get(childAt);
            if (viewState == null) {
                viewState = new ViewState();
                this.mPreRotate.put(childAt, viewState);
            }
            viewState.getState(childAt);
        }
        this.mBeginState = -1;
        this.mEndState = i9;
        this.mScene.setTransition(-1, i9);
        this.mModel.initFrom(this.mLayoutWidget, null, this.mScene.getConstraintSet(this.mEndState));
        this.mTransitionPosition = 0.0f;
        this.mTransitionLastPosition = 0.0f;
        invalidate();
        transitionToEnd(new Runnable() { // from class: androidx.constraintlayout.motion.widget.MotionLayout.2
            @Override // java.lang.Runnable
            public void run() {
                MotionLayout.this.mInRotation = false;
            }
        });
        if (i10 > 0) {
            this.mTransitionDuration = i10 / 1000.0f;
        }
    }

    public void scheduleTransitionTo(int i9) {
        if (getCurrentState() == -1) {
            transitionToState(i9);
            return;
        }
        int[] iArr = this.mScheduledTransitionTo;
        if (iArr == null) {
            this.mScheduledTransitionTo = new int[4];
        } else if (iArr.length <= this.mScheduledTransitions) {
            this.mScheduledTransitionTo = Arrays.copyOf(iArr, iArr.length * 2);
        }
        int[] iArr2 = this.mScheduledTransitionTo;
        int i10 = this.mScheduledTransitions;
        this.mScheduledTransitions = i10 + 1;
        iArr2[i10] = i9;
    }

    public void setDebugMode(int i9) {
        this.mDebugPath = i9;
        invalidate();
    }

    public void setDelayedApplicationOfInitialState(boolean z10) {
        this.mDelayedApply = z10;
    }

    public void setInteractionEnabled(boolean z10) {
        this.mInteractionEnabled = z10;
    }

    public void setInterpolatedProgress(float f10) {
        if (this.mScene != null) {
            setState(TransitionState.MOVING);
            Interpolator interpolator = this.mScene.getInterpolator();
            if (interpolator != null) {
                setProgress(interpolator.getInterpolation(f10));
                return;
            }
        }
        setProgress(f10);
    }

    public void setOnHide(float f10) {
        ArrayList<MotionHelper> arrayList = this.mOnHideHelpers;
        if (arrayList != null) {
            int size = arrayList.size();
            for (int i9 = 0; i9 < size; i9++) {
                this.mOnHideHelpers.get(i9).setProgress(f10);
            }
        }
    }

    public void setOnShow(float f10) {
        ArrayList<MotionHelper> arrayList = this.mOnShowHelpers;
        if (arrayList != null) {
            int size = arrayList.size();
            for (int i9 = 0; i9 < size; i9++) {
                this.mOnShowHelpers.get(i9).setProgress(f10);
            }
        }
    }

    public void setProgress(float f10, float f11) {
        if (!isAttachedToWindow()) {
            if (this.mStateCache == null) {
                this.mStateCache = new StateCache();
            }
            this.mStateCache.setProgress(f10);
            this.mStateCache.setVelocity(f11);
            return;
        }
        setProgress(f10);
        setState(TransitionState.MOVING);
        this.mLastVelocity = f11;
        int i9 = (f11 > 0.0f ? 1 : (f11 == 0.0f ? 0 : -1));
        if (i9 != 0) {
            animateTo(i9 <= 0 ? 0.0f : 1.0f);
        } else if (f10 == 0.0f || f10 == 1.0f) {
        } else {
            animateTo(f10 <= 0.5f ? 0.0f : 1.0f);
        }
    }

    public void setScene(MotionScene motionScene) {
        this.mScene = motionScene;
        motionScene.setRtl(isRtl());
        rebuildScene();
    }

    void setStartState(int i9) {
        if (!isAttachedToWindow()) {
            if (this.mStateCache == null) {
                this.mStateCache = new StateCache();
            }
            this.mStateCache.setStartState(i9);
            this.mStateCache.setEndState(i9);
            return;
        }
        this.mCurrentState = i9;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setState(TransitionState transitionState) {
        TransitionState transitionState2 = TransitionState.FINISHED;
        if (transitionState == transitionState2 && this.mCurrentState == -1) {
            return;
        }
        TransitionState transitionState3 = this.mTransitionState;
        this.mTransitionState = transitionState;
        TransitionState transitionState4 = TransitionState.MOVING;
        if (transitionState3 == transitionState4 && transitionState == transitionState4) {
            fireTransitionChange();
        }
        int i9 = AnonymousClass5.$SwitchMap$androidx$constraintlayout$motion$widget$MotionLayout$TransitionState[transitionState3.ordinal()];
        if (i9 != 1 && i9 != 2) {
            if (i9 == 3 && transitionState == transitionState2) {
                fireTransitionCompleted();
                return;
            }
            return;
        }
        if (transitionState == transitionState4) {
            fireTransitionChange();
        }
        if (transitionState == transitionState2) {
            fireTransitionCompleted();
        }
    }

    public void setTransition(int i9, int i10) {
        if (!isAttachedToWindow()) {
            if (this.mStateCache == null) {
                this.mStateCache = new StateCache();
            }
            this.mStateCache.setStartState(i9);
            this.mStateCache.setEndState(i10);
            return;
        }
        MotionScene motionScene = this.mScene;
        if (motionScene != null) {
            this.mBeginState = i9;
            this.mEndState = i10;
            motionScene.setTransition(i9, i10);
            this.mModel.initFrom(this.mLayoutWidget, this.mScene.getConstraintSet(i9), this.mScene.getConstraintSet(i10));
            rebuildScene();
            this.mTransitionLastPosition = 0.0f;
            transitionToStart();
        }
    }

    public void setTransitionDuration(int i9) {
        MotionScene motionScene = this.mScene;
        if (motionScene == null) {
            Log.e(TAG, "MotionScene not defined");
        } else {
            motionScene.setDuration(i9);
        }
    }

    public void setTransitionListener(TransitionListener transitionListener) {
        this.mTransitionListener = transitionListener;
    }

    public void setTransitionState(Bundle bundle) {
        if (this.mStateCache == null) {
            this.mStateCache = new StateCache();
        }
        this.mStateCache.setTransitionState(bundle);
        if (isAttachedToWindow()) {
            this.mStateCache.apply();
        }
    }

    @Override // android.view.View
    public String toString() {
        Context context = getContext();
        return Debug.getName(context, this.mBeginState) + "->" + Debug.getName(context, this.mEndState) + " (pos:" + this.mTransitionLastPosition + " Dpos/Dt:" + this.mLastVelocity;
    }

    /* JADX WARN: Code restructure failed: missing block: B:17:0x0037, code lost:
        if (r10 != 7) goto L18;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void touchAnimateTo(int r10, float r11, float r12) {
        /*
            Method dump skipped, instructions count: 254
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.constraintlayout.motion.widget.MotionLayout.touchAnimateTo(int, float, float):void");
    }

    public void touchSpringTo(float f10, float f11) {
        if (this.mScene == null || this.mTransitionLastPosition == f10) {
            return;
        }
        this.mTemporalInterpolator = true;
        this.mAnimationStartTime = getNanoTime();
        this.mTransitionDuration = this.mScene.getDuration() / 1000.0f;
        this.mTransitionGoalPosition = f10;
        this.mInTransition = true;
        this.mStopLogic.springConfig(this.mTransitionLastPosition, f10, f11, this.mScene.getSpringMass(), this.mScene.getSpringStiffiness(), this.mScene.getSpringDamping(), this.mScene.getSpringStopThreshold(), this.mScene.getSpringBoundary());
        int i9 = this.mCurrentState;
        this.mTransitionGoalPosition = f10;
        this.mCurrentState = i9;
        this.mInterpolator = this.mStopLogic;
        this.mTransitionInstantly = false;
        this.mAnimationStartTime = getNanoTime();
        invalidate();
    }

    public void transitionToEnd() {
        animateTo(1.0f);
        this.mOnComplete = null;
    }

    public void transitionToStart() {
        animateTo(0.0f);
    }

    public void transitionToState(int i9) {
        if (!isAttachedToWindow()) {
            if (this.mStateCache == null) {
                this.mStateCache = new StateCache();
            }
            this.mStateCache.setEndState(i9);
            return;
        }
        transitionToState(i9, -1, -1);
    }

    public void updateState(int i9, ConstraintSet constraintSet) {
        MotionScene motionScene = this.mScene;
        if (motionScene != null) {
            motionScene.setConstraintSet(i9, constraintSet);
        }
        updateState();
        if (this.mCurrentState == i9) {
            constraintSet.applyTo(this);
        }
    }

    public void updateStateAnimate(int i9, ConstraintSet constraintSet, int i10) {
        if (this.mScene != null && this.mCurrentState == i9) {
            int i11 = R.id.view_transition;
            updateState(i11, getConstraintSet(i9));
            setState(i11, -1, -1);
            updateState(i9, constraintSet);
            MotionScene.Transition transition = new MotionScene.Transition(-1, this.mScene, i11, i9);
            transition.setDuration(i10);
            setTransition(transition);
            transitionToEnd();
        }
    }

    public void viewTransition(int i9, View... viewArr) {
        MotionScene motionScene = this.mScene;
        if (motionScene != null) {
            motionScene.viewTransition(i9, viewArr);
        } else {
            Log.e(TAG, " no motionScene");
        }
    }

    /* loaded from: classes.dex */
    private static class MyTracker implements MotionTracker {

        /* renamed from: me  reason: collision with root package name */
        private static MyTracker f832me = new MyTracker();
        VelocityTracker tracker;

        private MyTracker() {
        }

        public static MyTracker obtain() {
            f832me.tracker = VelocityTracker.obtain();
            return f832me;
        }

        @Override // androidx.constraintlayout.motion.widget.MotionLayout.MotionTracker
        public void addMovement(MotionEvent motionEvent) {
            VelocityTracker velocityTracker = this.tracker;
            if (velocityTracker != null) {
                velocityTracker.addMovement(motionEvent);
            }
        }

        @Override // androidx.constraintlayout.motion.widget.MotionLayout.MotionTracker
        public void clear() {
            VelocityTracker velocityTracker = this.tracker;
            if (velocityTracker != null) {
                velocityTracker.clear();
            }
        }

        @Override // androidx.constraintlayout.motion.widget.MotionLayout.MotionTracker
        public void computeCurrentVelocity(int i9) {
            VelocityTracker velocityTracker = this.tracker;
            if (velocityTracker != null) {
                velocityTracker.computeCurrentVelocity(i9);
            }
        }

        @Override // androidx.constraintlayout.motion.widget.MotionLayout.MotionTracker
        public float getXVelocity() {
            VelocityTracker velocityTracker = this.tracker;
            if (velocityTracker != null) {
                return velocityTracker.getXVelocity();
            }
            return 0.0f;
        }

        @Override // androidx.constraintlayout.motion.widget.MotionLayout.MotionTracker
        public float getYVelocity() {
            VelocityTracker velocityTracker = this.tracker;
            if (velocityTracker != null) {
                return velocityTracker.getYVelocity();
            }
            return 0.0f;
        }

        @Override // androidx.constraintlayout.motion.widget.MotionLayout.MotionTracker
        public void recycle() {
            VelocityTracker velocityTracker = this.tracker;
            if (velocityTracker != null) {
                velocityTracker.recycle();
                this.tracker = null;
            }
        }

        @Override // androidx.constraintlayout.motion.widget.MotionLayout.MotionTracker
        public void computeCurrentVelocity(int i9, float f10) {
            VelocityTracker velocityTracker = this.tracker;
            if (velocityTracker != null) {
                velocityTracker.computeCurrentVelocity(i9, f10);
            }
        }

        @Override // androidx.constraintlayout.motion.widget.MotionLayout.MotionTracker
        public float getXVelocity(int i9) {
            VelocityTracker velocityTracker = this.tracker;
            if (velocityTracker != null) {
                return velocityTracker.getXVelocity(i9);
            }
            return 0.0f;
        }

        @Override // androidx.constraintlayout.motion.widget.MotionLayout.MotionTracker
        public float getYVelocity(int i9) {
            if (this.tracker != null) {
                return getYVelocity(i9);
            }
            return 0.0f;
        }
    }

    public void transitionToEnd(Runnable runnable) {
        animateTo(1.0f);
        this.mOnComplete = runnable;
    }

    public void transitionToState(int i9, int i10) {
        if (!isAttachedToWindow()) {
            if (this.mStateCache == null) {
                this.mStateCache = new StateCache();
            }
            this.mStateCache.setEndState(i9);
            return;
        }
        transitionToState(i9, -1, -1, i10);
    }

    public void updateState() {
        this.mModel.initFrom(this.mLayoutWidget, this.mScene.getConstraintSet(this.mBeginState), this.mScene.getConstraintSet(this.mEndState));
        rebuildScene();
    }

    @Override // androidx.constraintlayout.widget.ConstraintLayout
    public void setState(int i9, int i10, int i11) {
        setState(TransitionState.SETUP);
        this.mCurrentState = i9;
        this.mBeginState = -1;
        this.mEndState = -1;
        ConstraintLayoutStates constraintLayoutStates = this.mConstraintLayoutSpec;
        if (constraintLayoutStates != null) {
            constraintLayoutStates.updateConstraints(i9, i10, i11);
            return;
        }
        MotionScene motionScene = this.mScene;
        if (motionScene != null) {
            motionScene.getConstraintSet(i9).applyTo(this);
        }
    }

    public void setProgress(float f10) {
        int i9 = (f10 > 0.0f ? 1 : (f10 == 0.0f ? 0 : -1));
        if (i9 < 0 || f10 > 1.0f) {
            Log.w(TAG, "Warning! Progress is defined for values between 0.0 and 1.0 inclusive");
        }
        if (!isAttachedToWindow()) {
            if (this.mStateCache == null) {
                this.mStateCache = new StateCache();
            }
            this.mStateCache.setProgress(f10);
            return;
        }
        if (i9 <= 0) {
            if (this.mTransitionLastPosition == 1.0f && this.mCurrentState == this.mEndState) {
                setState(TransitionState.MOVING);
            }
            this.mCurrentState = this.mBeginState;
            if (this.mTransitionLastPosition == 0.0f) {
                setState(TransitionState.FINISHED);
            }
        } else if (f10 >= 1.0f) {
            if (this.mTransitionLastPosition == 0.0f && this.mCurrentState == this.mBeginState) {
                setState(TransitionState.MOVING);
            }
            this.mCurrentState = this.mEndState;
            if (this.mTransitionLastPosition == 1.0f) {
                setState(TransitionState.FINISHED);
            }
        } else {
            this.mCurrentState = -1;
            setState(TransitionState.MOVING);
        }
        if (this.mScene == null) {
            return;
        }
        this.mTransitionInstantly = true;
        this.mTransitionGoalPosition = f10;
        this.mTransitionPosition = f10;
        this.mTransitionLastTime = -1L;
        this.mAnimationStartTime = -1L;
        this.mInterpolator = null;
        this.mInTransition = true;
        invalidate();
    }

    public void transitionToState(int i9, int i10, int i11) {
        transitionToState(i9, i10, i11, -1);
    }

    public void transitionToState(int i9, int i10, int i11, int i12) {
        StateSet stateSet;
        int convertToConstraintSet;
        MotionScene motionScene = this.mScene;
        if (motionScene != null && (stateSet = motionScene.mStateSet) != null && (convertToConstraintSet = stateSet.convertToConstraintSet(this.mCurrentState, i9, i10, i11)) != -1) {
            i9 = convertToConstraintSet;
        }
        int i13 = this.mCurrentState;
        if (i13 == i9) {
            return;
        }
        if (this.mBeginState == i9) {
            animateTo(0.0f);
            if (i12 > 0) {
                this.mTransitionDuration = i12 / 1000.0f;
            }
        } else if (this.mEndState == i9) {
            animateTo(1.0f);
            if (i12 > 0) {
                this.mTransitionDuration = i12 / 1000.0f;
            }
        } else {
            this.mEndState = i9;
            if (i13 != -1) {
                setTransition(i13, i9);
                animateTo(1.0f);
                this.mTransitionLastPosition = 0.0f;
                transitionToEnd();
                if (i12 > 0) {
                    this.mTransitionDuration = i12 / 1000.0f;
                    return;
                }
                return;
            }
            this.mTemporalInterpolator = false;
            this.mTransitionGoalPosition = 1.0f;
            this.mTransitionPosition = 0.0f;
            this.mTransitionLastPosition = 0.0f;
            this.mTransitionLastTime = getNanoTime();
            this.mAnimationStartTime = getNanoTime();
            this.mTransitionInstantly = false;
            this.mInterpolator = null;
            if (i12 == -1) {
                this.mTransitionDuration = this.mScene.getDuration() / 1000.0f;
            }
            this.mBeginState = -1;
            this.mScene.setTransition(-1, this.mEndState);
            SparseArray sparseArray = new SparseArray();
            if (i12 == 0) {
                this.mTransitionDuration = this.mScene.getDuration() / 1000.0f;
            } else if (i12 > 0) {
                this.mTransitionDuration = i12 / 1000.0f;
            }
            int childCount = getChildCount();
            this.mFrameArrayList.clear();
            for (int i14 = 0; i14 < childCount; i14++) {
                View childAt = getChildAt(i14);
                this.mFrameArrayList.put(childAt, new MotionController(childAt));
                sparseArray.put(childAt.getId(), this.mFrameArrayList.get(childAt));
            }
            this.mInTransition = true;
            this.mModel.initFrom(this.mLayoutWidget, null, this.mScene.getConstraintSet(i9));
            rebuildScene();
            this.mModel.build();
            computeCurrentPositions();
            int width = getWidth();
            int height = getHeight();
            if (this.mDecoratorsHelpers != null) {
                for (int i15 = 0; i15 < childCount; i15++) {
                    MotionController motionController = this.mFrameArrayList.get(getChildAt(i15));
                    if (motionController != null) {
                        this.mScene.getKeyFrames(motionController);
                    }
                }
                Iterator<MotionHelper> it = this.mDecoratorsHelpers.iterator();
                while (it.hasNext()) {
                    it.next().onPreSetup(this, this.mFrameArrayList);
                }
                for (int i16 = 0; i16 < childCount; i16++) {
                    MotionController motionController2 = this.mFrameArrayList.get(getChildAt(i16));
                    if (motionController2 != null) {
                        motionController2.setup(width, height, this.mTransitionDuration, getNanoTime());
                    }
                }
            } else {
                for (int i17 = 0; i17 < childCount; i17++) {
                    MotionController motionController3 = this.mFrameArrayList.get(getChildAt(i17));
                    if (motionController3 != null) {
                        this.mScene.getKeyFrames(motionController3);
                        motionController3.setup(width, height, this.mTransitionDuration, getNanoTime());
                    }
                }
            }
            float staggered = this.mScene.getStaggered();
            if (staggered != 0.0f) {
                float f10 = Float.MAX_VALUE;
                float f11 = -3.4028235E38f;
                for (int i18 = 0; i18 < childCount; i18++) {
                    MotionController motionController4 = this.mFrameArrayList.get(getChildAt(i18));
                    float finalY = motionController4.getFinalY() + motionController4.getFinalX();
                    f10 = Math.min(f10, finalY);
                    f11 = Math.max(f11, finalY);
                }
                for (int i19 = 0; i19 < childCount; i19++) {
                    MotionController motionController5 = this.mFrameArrayList.get(getChildAt(i19));
                    float finalX = motionController5.getFinalX();
                    float finalY2 = motionController5.getFinalY();
                    motionController5.mStaggerScale = 1.0f / (1.0f - staggered);
                    motionController5.mStaggerOffset = staggered - ((((finalX + finalY2) - f10) * staggered) / (f11 - f10));
                }
            }
            this.mTransitionPosition = 0.0f;
            this.mTransitionLastPosition = 0.0f;
            this.mInTransition = true;
            invalidate();
        }
    }

    public void setTransition(int i9) {
        if (this.mScene != null) {
            MotionScene.Transition transition = getTransition(i9);
            this.mBeginState = transition.getStartConstraintSetId();
            this.mEndState = transition.getEndConstraintSetId();
            if (!isAttachedToWindow()) {
                if (this.mStateCache == null) {
                    this.mStateCache = new StateCache();
                }
                this.mStateCache.setStartState(this.mBeginState);
                this.mStateCache.setEndState(this.mEndState);
                return;
            }
            float f10 = Float.NaN;
            int i10 = this.mCurrentState;
            if (i10 == this.mBeginState) {
                f10 = 0.0f;
            } else if (i10 == this.mEndState) {
                f10 = 1.0f;
            }
            this.mScene.setTransition(transition);
            this.mModel.initFrom(this.mLayoutWidget, this.mScene.getConstraintSet(this.mBeginState), this.mScene.getConstraintSet(this.mEndState));
            rebuildScene();
            if (this.mTransitionLastPosition != f10) {
                if (f10 == 0.0f) {
                    endTrigger(true);
                    this.mScene.getConstraintSet(this.mBeginState).applyTo(this);
                } else if (f10 == 1.0f) {
                    endTrigger(false);
                    this.mScene.getConstraintSet(this.mEndState).applyTo(this);
                }
            }
            this.mTransitionLastPosition = Float.isNaN(f10) ? 0.0f : f10;
            if (Float.isNaN(f10)) {
                Log.v(TAG, Debug.getLocation() + " transitionToStart ");
                transitionToStart();
                return;
            }
            setProgress(f10);
        }
    }

    private void checkStructure(int i9, ConstraintSet constraintSet) {
        String name = Debug.getName(getContext(), i9);
        int childCount = getChildCount();
        for (int i10 = 0; i10 < childCount; i10++) {
            View childAt = getChildAt(i10);
            int id2 = childAt.getId();
            if (id2 == -1) {
                Log.w(TAG, "CHECK: " + name + " ALL VIEWS SHOULD HAVE ID's " + childAt.getClass().getName() + " does not!");
            }
            if (constraintSet.getConstraint(id2) == null) {
                Log.w(TAG, "CHECK: " + name + " NO CONSTRAINTS for " + Debug.getName(childAt));
            }
        }
        int[] knownIds = constraintSet.getKnownIds();
        for (int i11 = 0; i11 < knownIds.length; i11++) {
            int i12 = knownIds[i11];
            String name2 = Debug.getName(getContext(), i12);
            if (findViewById(knownIds[i11]) == null) {
                Log.w(TAG, "CHECK: " + name + " NO View matches id " + name2);
            }
            if (constraintSet.getHeight(i12) == -1) {
                Log.w(TAG, "CHECK: " + name + "(" + name2 + ") no LAYOUT_HEIGHT");
            }
            if (constraintSet.getWidth(i12) == -1) {
                Log.w(TAG, "CHECK: " + name + "(" + name2 + ") no LAYOUT_HEIGHT");
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void setTransition(MotionScene.Transition transition) {
        this.mScene.setTransition(transition);
        setState(TransitionState.SETUP);
        if (this.mCurrentState == this.mScene.getEndId()) {
            this.mTransitionLastPosition = 1.0f;
            this.mTransitionPosition = 1.0f;
            this.mTransitionGoalPosition = 1.0f;
        } else {
            this.mTransitionLastPosition = 0.0f;
            this.mTransitionPosition = 0.0f;
            this.mTransitionGoalPosition = 0.0f;
        }
        this.mTransitionLastTime = transition.isTransitionFlag(1) ? -1L : getNanoTime();
        int startId = this.mScene.getStartId();
        int endId = this.mScene.getEndId();
        if (startId == this.mBeginState && endId == this.mEndState) {
            return;
        }
        this.mBeginState = startId;
        this.mEndState = endId;
        this.mScene.setTransition(startId, endId);
        this.mModel.initFrom(this.mLayoutWidget, this.mScene.getConstraintSet(this.mBeginState), this.mScene.getConstraintSet(this.mEndState));
        this.mModel.setMeasuredId(this.mBeginState, this.mEndState);
        this.mModel.reEvaluateState();
        rebuildScene();
    }

    private void checkStructure(MotionScene.Transition transition) {
        if (transition.getStartConstraintSetId() == transition.getEndConstraintSetId()) {
            Log.e(TAG, "CHECK: start and end constraint set should not be the same!");
        }
    }

    public MotionLayout(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        this.mProgressInterpolator = null;
        this.mLastVelocity = 0.0f;
        this.mBeginState = -1;
        this.mCurrentState = -1;
        this.mEndState = -1;
        this.mLastWidthMeasureSpec = 0;
        this.mLastHeightMeasureSpec = 0;
        this.mInteractionEnabled = true;
        this.mFrameArrayList = new HashMap<>();
        this.mAnimationStartTime = 0L;
        this.mTransitionDuration = 1.0f;
        this.mTransitionPosition = 0.0f;
        this.mTransitionLastPosition = 0.0f;
        this.mTransitionGoalPosition = 0.0f;
        this.mInTransition = false;
        this.mIndirectTransition = false;
        this.mDebugPath = 0;
        this.mTemporalInterpolator = false;
        this.mStopLogic = new StopLogic();
        this.mDecelerateLogic = new DecelerateInterpolator();
        this.firstDown = true;
        this.mUndergoingMotion = false;
        this.mKeepAnimating = false;
        this.mOnShowHelpers = null;
        this.mOnHideHelpers = null;
        this.mDecoratorsHelpers = null;
        this.mTransitionListeners = null;
        this.mFrames = 0;
        this.mLastDrawTime = -1L;
        this.mLastFps = 0.0f;
        this.mListenerState = 0;
        this.mListenerPosition = 0.0f;
        this.mIsAnimating = false;
        this.mMeasureDuringTransition = false;
        this.mKeyCache = new KeyCache();
        this.mInLayout = false;
        this.mOnComplete = null;
        this.mScheduledTransitionTo = null;
        this.mScheduledTransitions = 0;
        this.mInRotation = false;
        this.mRotatMode = 0;
        this.mPreRotate = new HashMap<>();
        this.mTempRect = new Rect();
        this.mDelayedApply = false;
        this.mTransitionState = TransitionState.UNDEFINED;
        this.mModel = new Model();
        this.mNeedsFireTransitionCompleted = false;
        this.mBoundsCheck = new RectF();
        this.mRegionView = null;
        this.mInverseMatrix = null;
        this.mTransitionCompleted = new ArrayList<>();
        init(attributeSet);
    }

    public MotionLayout(@NonNull Context context, @Nullable AttributeSet attributeSet, int i9) {
        super(context, attributeSet, i9);
        this.mProgressInterpolator = null;
        this.mLastVelocity = 0.0f;
        this.mBeginState = -1;
        this.mCurrentState = -1;
        this.mEndState = -1;
        this.mLastWidthMeasureSpec = 0;
        this.mLastHeightMeasureSpec = 0;
        this.mInteractionEnabled = true;
        this.mFrameArrayList = new HashMap<>();
        this.mAnimationStartTime = 0L;
        this.mTransitionDuration = 1.0f;
        this.mTransitionPosition = 0.0f;
        this.mTransitionLastPosition = 0.0f;
        this.mTransitionGoalPosition = 0.0f;
        this.mInTransition = false;
        this.mIndirectTransition = false;
        this.mDebugPath = 0;
        this.mTemporalInterpolator = false;
        this.mStopLogic = new StopLogic();
        this.mDecelerateLogic = new DecelerateInterpolator();
        this.firstDown = true;
        this.mUndergoingMotion = false;
        this.mKeepAnimating = false;
        this.mOnShowHelpers = null;
        this.mOnHideHelpers = null;
        this.mDecoratorsHelpers = null;
        this.mTransitionListeners = null;
        this.mFrames = 0;
        this.mLastDrawTime = -1L;
        this.mLastFps = 0.0f;
        this.mListenerState = 0;
        this.mListenerPosition = 0.0f;
        this.mIsAnimating = false;
        this.mMeasureDuringTransition = false;
        this.mKeyCache = new KeyCache();
        this.mInLayout = false;
        this.mOnComplete = null;
        this.mScheduledTransitionTo = null;
        this.mScheduledTransitions = 0;
        this.mInRotation = false;
        this.mRotatMode = 0;
        this.mPreRotate = new HashMap<>();
        this.mTempRect = new Rect();
        this.mDelayedApply = false;
        this.mTransitionState = TransitionState.UNDEFINED;
        this.mModel = new Model();
        this.mNeedsFireTransitionCompleted = false;
        this.mBoundsCheck = new RectF();
        this.mRegionView = null;
        this.mInverseMatrix = null;
        this.mTransitionCompleted = new ArrayList<>();
        init(attributeSet);
    }
}
