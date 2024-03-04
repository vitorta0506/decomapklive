package androidx.constraintlayout.core.state;

import androidx.constraintlayout.core.motion.Motion;
import androidx.constraintlayout.core.motion.MotionWidget;
import androidx.constraintlayout.core.motion.key.MotionKeyAttributes;
import androidx.constraintlayout.core.motion.key.MotionKeyCycle;
import androidx.constraintlayout.core.motion.key.MotionKeyPosition;
import androidx.constraintlayout.core.motion.utils.Easing;
import androidx.constraintlayout.core.motion.utils.KeyCache;
import androidx.constraintlayout.core.motion.utils.TypedBundle;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import androidx.constraintlayout.core.widgets.ConstraintWidget;
import androidx.constraintlayout.core.widgets.ConstraintWidgetContainer;
import java.util.ArrayList;
import java.util.HashMap;
/* loaded from: classes.dex */
public class Transition implements TypedValues {
    static final int ANTICIPATE = 6;
    static final int BOUNCE = 4;
    static final int EASE_IN = 1;
    static final int EASE_IN_OUT = 0;
    static final int EASE_OUT = 2;
    public static final int END = 1;
    public static final int INTERPOLATED = 2;
    private static final int INTERPOLATOR_REFERENCE_ID = -2;
    static final int LINEAR = 3;
    static final int OVERSHOOT = 5;
    private static final int SPLINE_STRING = -1;
    public static final int START = 0;
    HashMap<Integer, HashMap<String, KeyPosition>> keyPositions = new HashMap<>();
    private HashMap<String, WidgetState> state = new HashMap<>();
    TypedBundle mBundle = new TypedBundle();
    private int mDefaultInterpolator = 0;
    private String mDefaultInterpolatorString = null;
    private Easing mEasing = null;
    private int mAutoTransition = 0;
    private int mDuration = 400;
    private float mStagger = 0.0f;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static class KeyPosition {
        int frame;
        String target;
        int type;

        /* renamed from: x  reason: collision with root package name */
        float f816x;

        /* renamed from: y  reason: collision with root package name */
        float f817y;

        public KeyPosition(String str, int i9, int i10, float f10, float f11) {
            this.target = str;
            this.frame = i9;
            this.type = i10;
            this.f816x = f10;
            this.f817y = f11;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static class WidgetState {
        Motion motionControl;
        KeyCache myKeyCache = new KeyCache();
        int myParentHeight = -1;
        int myParentWidth = -1;
        WidgetFrame start = new WidgetFrame();
        WidgetFrame end = new WidgetFrame();
        WidgetFrame interpolated = new WidgetFrame();
        MotionWidget motionWidgetStart = new MotionWidget(this.start);
        MotionWidget motionWidgetEnd = new MotionWidget(this.end);
        MotionWidget motionWidgetInterpolated = new MotionWidget(this.interpolated);

        public WidgetState() {
            Motion motion = new Motion(this.motionWidgetStart);
            this.motionControl = motion;
            motion.setStart(this.motionWidgetStart);
            this.motionControl.setEnd(this.motionWidgetEnd);
        }

        public WidgetFrame getFrame(int i9) {
            if (i9 == 0) {
                return this.start;
            }
            if (i9 == 1) {
                return this.end;
            }
            return this.interpolated;
        }

        public void interpolate(int i9, int i10, float f10, Transition transition) {
            this.myParentHeight = i10;
            this.myParentWidth = i9;
            this.motionControl.setup(i9, i10, 1.0f, System.nanoTime());
            WidgetFrame.interpolate(i9, i10, this.interpolated, this.start, this.end, transition, f10);
            this.interpolated.interpolatedPos = f10;
            this.motionControl.interpolate(this.motionWidgetInterpolated, f10, System.nanoTime(), this.myKeyCache);
        }

        public void setKeyAttribute(TypedBundle typedBundle) {
            MotionKeyAttributes motionKeyAttributes = new MotionKeyAttributes();
            typedBundle.applyDelta(motionKeyAttributes);
            this.motionControl.addKey(motionKeyAttributes);
        }

        public void setKeyCycle(TypedBundle typedBundle) {
            MotionKeyCycle motionKeyCycle = new MotionKeyCycle();
            typedBundle.applyDelta(motionKeyCycle);
            this.motionControl.addKey(motionKeyCycle);
        }

        public void setKeyPosition(TypedBundle typedBundle) {
            MotionKeyPosition motionKeyPosition = new MotionKeyPosition();
            typedBundle.applyDelta(motionKeyPosition);
            this.motionControl.addKey(motionKeyPosition);
        }

        public void update(ConstraintWidget constraintWidget, int i9) {
            if (i9 == 0) {
                this.start.update(constraintWidget);
                this.motionControl.setStart(this.motionWidgetStart);
            } else if (i9 == 1) {
                this.end.update(constraintWidget);
                this.motionControl.setEnd(this.motionWidgetEnd);
            }
            this.myParentWidth = -1;
        }
    }

    public static Interpolator getInterpolator(int i9, final String str) {
        switch (i9) {
            case -1:
                return new Interpolator() { // from class: androidx.constraintlayout.core.state.a
                    @Override // androidx.constraintlayout.core.state.Interpolator
                    public final float getInterpolation(float f10) {
                        float lambda$getInterpolator$0;
                        lambda$getInterpolator$0 = Transition.lambda$getInterpolator$0(str, f10);
                        return lambda$getInterpolator$0;
                    }
                };
            case 0:
                return new Interpolator() { // from class: androidx.constraintlayout.core.state.d
                    @Override // androidx.constraintlayout.core.state.Interpolator
                    public final float getInterpolation(float f10) {
                        float lambda$getInterpolator$1;
                        lambda$getInterpolator$1 = Transition.lambda$getInterpolator$1(f10);
                        return lambda$getInterpolator$1;
                    }
                };
            case 1:
                return new Interpolator() { // from class: androidx.constraintlayout.core.state.e
                    @Override // androidx.constraintlayout.core.state.Interpolator
                    public final float getInterpolation(float f10) {
                        float lambda$getInterpolator$2;
                        lambda$getInterpolator$2 = Transition.lambda$getInterpolator$2(f10);
                        return lambda$getInterpolator$2;
                    }
                };
            case 2:
                return new Interpolator() { // from class: androidx.constraintlayout.core.state.b
                    @Override // androidx.constraintlayout.core.state.Interpolator
                    public final float getInterpolation(float f10) {
                        float lambda$getInterpolator$3;
                        lambda$getInterpolator$3 = Transition.lambda$getInterpolator$3(f10);
                        return lambda$getInterpolator$3;
                    }
                };
            case 3:
                return new Interpolator() { // from class: androidx.constraintlayout.core.state.c
                    @Override // androidx.constraintlayout.core.state.Interpolator
                    public final float getInterpolation(float f10) {
                        float lambda$getInterpolator$4;
                        lambda$getInterpolator$4 = Transition.lambda$getInterpolator$4(f10);
                        return lambda$getInterpolator$4;
                    }
                };
            case 4:
                return new Interpolator() { // from class: androidx.constraintlayout.core.state.f
                    @Override // androidx.constraintlayout.core.state.Interpolator
                    public final float getInterpolation(float f10) {
                        float lambda$getInterpolator$7;
                        lambda$getInterpolator$7 = Transition.lambda$getInterpolator$7(f10);
                        return lambda$getInterpolator$7;
                    }
                };
            case 5:
                return new Interpolator() { // from class: androidx.constraintlayout.core.state.h
                    @Override // androidx.constraintlayout.core.state.Interpolator
                    public final float getInterpolation(float f10) {
                        float lambda$getInterpolator$6;
                        lambda$getInterpolator$6 = Transition.lambda$getInterpolator$6(f10);
                        return lambda$getInterpolator$6;
                    }
                };
            case 6:
                return new Interpolator() { // from class: androidx.constraintlayout.core.state.g
                    @Override // androidx.constraintlayout.core.state.Interpolator
                    public final float getInterpolation(float f10) {
                        float lambda$getInterpolator$5;
                        lambda$getInterpolator$5 = Transition.lambda$getInterpolator$5(f10);
                        return lambda$getInterpolator$5;
                    }
                };
            default:
                return null;
        }
    }

    private WidgetState getWidgetState(String str) {
        return this.state.get(str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ float lambda$getInterpolator$0(String str, float f10) {
        return (float) Easing.getInterpolator(str).get(f10);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ float lambda$getInterpolator$1(float f10) {
        return (float) Easing.getInterpolator("standard").get(f10);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ float lambda$getInterpolator$2(float f10) {
        return (float) Easing.getInterpolator("accelerate").get(f10);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ float lambda$getInterpolator$3(float f10) {
        return (float) Easing.getInterpolator("decelerate").get(f10);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ float lambda$getInterpolator$4(float f10) {
        return (float) Easing.getInterpolator("linear").get(f10);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ float lambda$getInterpolator$5(float f10) {
        return (float) Easing.getInterpolator("anticipate").get(f10);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ float lambda$getInterpolator$6(float f10) {
        return (float) Easing.getInterpolator("overshoot").get(f10);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ float lambda$getInterpolator$7(float f10) {
        return (float) Easing.getInterpolator("spline(0.0, 0.2, 0.4, 0.6, 0.8 ,1.0, 0.8, 1.0, 0.9, 1.0)").get(f10);
    }

    public void addCustomColor(int i9, String str, String str2, int i10) {
        getWidgetState(str, null, i9).getFrame(i9).addCustomColor(str2, i10);
    }

    public void addCustomFloat(int i9, String str, String str2, float f10) {
        getWidgetState(str, null, i9).getFrame(i9).addCustomFloat(str2, f10);
    }

    public void addKeyAttribute(String str, TypedBundle typedBundle) {
        getWidgetState(str, null, 0).setKeyAttribute(typedBundle);
    }

    public void addKeyCycle(String str, TypedBundle typedBundle) {
        getWidgetState(str, null, 0).setKeyCycle(typedBundle);
    }

    public void addKeyPosition(String str, TypedBundle typedBundle) {
        getWidgetState(str, null, 0).setKeyPosition(typedBundle);
    }

    public void clear() {
        this.state.clear();
    }

    public boolean contains(String str) {
        return this.state.containsKey(str);
    }

    public void fillKeyPositions(WidgetFrame widgetFrame, float[] fArr, float[] fArr2, float[] fArr3) {
        KeyPosition keyPosition;
        int i9 = 0;
        for (int i10 = 0; i10 <= 100; i10++) {
            HashMap<String, KeyPosition> hashMap = this.keyPositions.get(Integer.valueOf(i10));
            if (hashMap != null && (keyPosition = hashMap.get(widgetFrame.widget.stringId)) != null) {
                fArr[i9] = keyPosition.f816x;
                fArr2[i9] = keyPosition.f817y;
                fArr3[i9] = keyPosition.frame;
                i9++;
            }
        }
    }

    public KeyPosition findNextPosition(String str, int i9) {
        KeyPosition keyPosition;
        while (i9 <= 100) {
            HashMap<String, KeyPosition> hashMap = this.keyPositions.get(Integer.valueOf(i9));
            if (hashMap != null && (keyPosition = hashMap.get(str)) != null) {
                return keyPosition;
            }
            i9++;
        }
        return null;
    }

    public KeyPosition findPreviousPosition(String str, int i9) {
        KeyPosition keyPosition;
        while (i9 >= 0) {
            HashMap<String, KeyPosition> hashMap = this.keyPositions.get(Integer.valueOf(i9));
            if (hashMap != null && (keyPosition = hashMap.get(str)) != null) {
                return keyPosition;
            }
            i9--;
        }
        return null;
    }

    public int getAutoTransition() {
        return this.mAutoTransition;
    }

    public WidgetFrame getEnd(String str) {
        WidgetState widgetState = this.state.get(str);
        if (widgetState == null) {
            return null;
        }
        return widgetState.end;
    }

    @Override // androidx.constraintlayout.core.motion.utils.TypedValues
    public int getId(String str) {
        return 0;
    }

    public WidgetFrame getInterpolated(String str) {
        WidgetState widgetState = this.state.get(str);
        if (widgetState == null) {
            return null;
        }
        return widgetState.interpolated;
    }

    public int getKeyFrames(String str, float[] fArr, int[] iArr, int[] iArr2) {
        return this.state.get(str).motionControl.buildKeyFrames(fArr, iArr, iArr2);
    }

    public Motion getMotion(String str) {
        return getWidgetState(str, null, 0).motionControl;
    }

    public int getNumberKeyPositions(WidgetFrame widgetFrame) {
        int i9 = 0;
        for (int i10 = 0; i10 <= 100; i10++) {
            HashMap<String, KeyPosition> hashMap = this.keyPositions.get(Integer.valueOf(i10));
            if (hashMap != null && hashMap.get(widgetFrame.widget.stringId) != null) {
                i9++;
            }
        }
        return i9;
    }

    public float[] getPath(String str) {
        float[] fArr = new float[124];
        this.state.get(str).motionControl.buildPath(fArr, 62);
        return fArr;
    }

    public WidgetFrame getStart(String str) {
        WidgetState widgetState = this.state.get(str);
        if (widgetState == null) {
            return null;
        }
        return widgetState.start;
    }

    public boolean hasPositionKeyframes() {
        return this.keyPositions.size() > 0;
    }

    public void interpolate(int i9, int i10, float f10) {
        Easing easing = this.mEasing;
        if (easing != null) {
            f10 = (float) easing.get(f10);
        }
        for (String str : this.state.keySet()) {
            this.state.get(str).interpolate(i9, i10, f10, this);
        }
    }

    public boolean isEmpty() {
        return this.state.isEmpty();
    }

    public void setTransitionProperties(TypedBundle typedBundle) {
        typedBundle.applyDelta(this.mBundle);
        typedBundle.applyDelta(this);
    }

    @Override // androidx.constraintlayout.core.motion.utils.TypedValues
    public boolean setValue(int i9, float f10) {
        if (i9 == 706) {
            this.mStagger = f10;
            return false;
        }
        return false;
    }

    @Override // androidx.constraintlayout.core.motion.utils.TypedValues
    public boolean setValue(int i9, int i10) {
        return false;
    }

    @Override // androidx.constraintlayout.core.motion.utils.TypedValues
    public boolean setValue(int i9, boolean z10) {
        return false;
    }

    public void updateFrom(ConstraintWidgetContainer constraintWidgetContainer, int i9) {
        ArrayList<ConstraintWidget> children = constraintWidgetContainer.getChildren();
        int size = children.size();
        for (int i10 = 0; i10 < size; i10++) {
            ConstraintWidget constraintWidget = children.get(i10);
            getWidgetState(constraintWidget.stringId, null, i9).update(constraintWidget, i9);
        }
    }

    private WidgetState getWidgetState(String str, ConstraintWidget constraintWidget, int i9) {
        WidgetState widgetState = this.state.get(str);
        if (widgetState == null) {
            widgetState = new WidgetState();
            this.mBundle.applyDelta(widgetState.motionControl);
            this.state.put(str, widgetState);
            if (constraintWidget != null) {
                widgetState.update(constraintWidget, i9);
            }
        }
        return widgetState;
    }

    public void addKeyPosition(String str, int i9, int i10, float f10, float f11) {
        TypedBundle typedBundle = new TypedBundle();
        typedBundle.add(TypedValues.PositionType.TYPE_POSITION_TYPE, 2);
        typedBundle.add(100, i9);
        typedBundle.add(506, f10);
        typedBundle.add(507, f11);
        getWidgetState(str, null, 0).setKeyPosition(typedBundle);
        KeyPosition keyPosition = new KeyPosition(str, i9, i10, f10, f11);
        HashMap<String, KeyPosition> hashMap = this.keyPositions.get(Integer.valueOf(i9));
        if (hashMap == null) {
            hashMap = new HashMap<>();
            this.keyPositions.put(Integer.valueOf(i9), hashMap);
        }
        hashMap.put(str, keyPosition);
    }

    @Override // androidx.constraintlayout.core.motion.utils.TypedValues
    public boolean setValue(int i9, String str) {
        if (i9 == 705) {
            this.mDefaultInterpolatorString = str;
            this.mEasing = Easing.getInterpolator(str);
            return false;
        }
        return false;
    }

    public WidgetFrame getEnd(ConstraintWidget constraintWidget) {
        return getWidgetState(constraintWidget.stringId, null, 1).end;
    }

    public WidgetFrame getInterpolated(ConstraintWidget constraintWidget) {
        return getWidgetState(constraintWidget.stringId, null, 2).interpolated;
    }

    public WidgetFrame getStart(ConstraintWidget constraintWidget) {
        return getWidgetState(constraintWidget.stringId, null, 0).start;
    }

    public Interpolator getInterpolator() {
        return getInterpolator(this.mDefaultInterpolator, this.mDefaultInterpolatorString);
    }
}
