package androidx.constraintlayout.core.widgets.analyzer;

import androidx.constraintlayout.core.LinearSystem;
import androidx.constraintlayout.core.widgets.Chain;
import androidx.constraintlayout.core.widgets.ConstraintWidget;
import androidx.constraintlayout.core.widgets.ConstraintWidgetContainer;
import com.facebook.internal.AnalyticsEvents;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;
/* loaded from: classes.dex */
public class WidgetGroup {
    private static final boolean DEBUG = false;
    static int count;

    /* renamed from: id  reason: collision with root package name */
    int f828id;
    int orientation;
    ArrayList<ConstraintWidget> widgets = new ArrayList<>();
    boolean authoritative = false;
    ArrayList<MeasureResult> results = null;
    private int moveTo = -1;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class MeasureResult {
        int baseline;
        int bottom;
        int left;
        int orientation;
        int right;
        int top;
        WeakReference<ConstraintWidget> widgetRef;

        public MeasureResult(ConstraintWidget constraintWidget, LinearSystem linearSystem, int i9) {
            this.widgetRef = new WeakReference<>(constraintWidget);
            this.left = linearSystem.getObjectVariableValue(constraintWidget.mLeft);
            this.top = linearSystem.getObjectVariableValue(constraintWidget.mTop);
            this.right = linearSystem.getObjectVariableValue(constraintWidget.mRight);
            this.bottom = linearSystem.getObjectVariableValue(constraintWidget.mBottom);
            this.baseline = linearSystem.getObjectVariableValue(constraintWidget.mBaseline);
            this.orientation = i9;
        }

        public void apply() {
            ConstraintWidget constraintWidget = this.widgetRef.get();
            if (constraintWidget != null) {
                constraintWidget.setFinalFrame(this.left, this.top, this.right, this.bottom, this.baseline, this.orientation);
            }
        }
    }

    public WidgetGroup(int i9) {
        int i10 = count;
        count = i10 + 1;
        this.f828id = i10;
        this.orientation = i9;
    }

    private boolean contains(ConstraintWidget constraintWidget) {
        return this.widgets.contains(constraintWidget);
    }

    private String getOrientationString() {
        int i9 = this.orientation;
        return i9 == 0 ? "Horizontal" : i9 == 1 ? "Vertical" : i9 == 2 ? "Both" : AnalyticsEvents.PARAMETER_DIALOG_OUTCOME_VALUE_UNKNOWN;
    }

    private int measureWrap(int i9, ConstraintWidget constraintWidget) {
        ConstraintWidget.DimensionBehaviour dimensionBehaviour = constraintWidget.getDimensionBehaviour(i9);
        if (dimensionBehaviour == ConstraintWidget.DimensionBehaviour.WRAP_CONTENT || dimensionBehaviour == ConstraintWidget.DimensionBehaviour.MATCH_PARENT || dimensionBehaviour == ConstraintWidget.DimensionBehaviour.FIXED) {
            if (i9 == 0) {
                return constraintWidget.getWidth();
            }
            return constraintWidget.getHeight();
        }
        return -1;
    }

    private int solverMeasure(LinearSystem linearSystem, ArrayList<ConstraintWidget> arrayList, int i9) {
        int objectVariableValue;
        int objectVariableValue2;
        ConstraintWidgetContainer constraintWidgetContainer = (ConstraintWidgetContainer) arrayList.get(0).getParent();
        linearSystem.reset();
        constraintWidgetContainer.addToSolver(linearSystem, false);
        for (int i10 = 0; i10 < arrayList.size(); i10++) {
            arrayList.get(i10).addToSolver(linearSystem, false);
        }
        if (i9 == 0 && constraintWidgetContainer.mHorizontalChainsSize > 0) {
            Chain.applyChainConstraints(constraintWidgetContainer, linearSystem, arrayList, 0);
        }
        if (i9 == 1 && constraintWidgetContainer.mVerticalChainsSize > 0) {
            Chain.applyChainConstraints(constraintWidgetContainer, linearSystem, arrayList, 1);
        }
        try {
            linearSystem.minimize();
        } catch (Exception e10) {
            e10.printStackTrace();
        }
        this.results = new ArrayList<>();
        for (int i11 = 0; i11 < arrayList.size(); i11++) {
            this.results.add(new MeasureResult(arrayList.get(i11), linearSystem, i9));
        }
        if (i9 == 0) {
            objectVariableValue = linearSystem.getObjectVariableValue(constraintWidgetContainer.mLeft);
            objectVariableValue2 = linearSystem.getObjectVariableValue(constraintWidgetContainer.mRight);
            linearSystem.reset();
        } else {
            objectVariableValue = linearSystem.getObjectVariableValue(constraintWidgetContainer.mTop);
            objectVariableValue2 = linearSystem.getObjectVariableValue(constraintWidgetContainer.mBottom);
            linearSystem.reset();
        }
        return objectVariableValue2 - objectVariableValue;
    }

    public boolean add(ConstraintWidget constraintWidget) {
        if (this.widgets.contains(constraintWidget)) {
            return false;
        }
        this.widgets.add(constraintWidget);
        return true;
    }

    public void apply() {
        if (this.results != null && this.authoritative) {
            for (int i9 = 0; i9 < this.results.size(); i9++) {
                this.results.get(i9).apply();
            }
        }
    }

    public void cleanup(ArrayList<WidgetGroup> arrayList) {
        int size = this.widgets.size();
        if (this.moveTo != -1 && size > 0) {
            for (int i9 = 0; i9 < arrayList.size(); i9++) {
                WidgetGroup widgetGroup = arrayList.get(i9);
                if (this.moveTo == widgetGroup.f828id) {
                    moveTo(this.orientation, widgetGroup);
                }
            }
        }
        if (size == 0) {
            arrayList.remove(this);
        }
    }

    public void clear() {
        this.widgets.clear();
    }

    public int getId() {
        return this.f828id;
    }

    public int getOrientation() {
        return this.orientation;
    }

    public boolean intersectWith(WidgetGroup widgetGroup) {
        for (int i9 = 0; i9 < this.widgets.size(); i9++) {
            if (widgetGroup.contains(this.widgets.get(i9))) {
                return true;
            }
        }
        return false;
    }

    public boolean isAuthoritative() {
        return this.authoritative;
    }

    public void moveTo(int i9, WidgetGroup widgetGroup) {
        Iterator<ConstraintWidget> it = this.widgets.iterator();
        while (it.hasNext()) {
            ConstraintWidget next = it.next();
            widgetGroup.add(next);
            if (i9 == 0) {
                next.horizontalGroup = widgetGroup.getId();
            } else {
                next.verticalGroup = widgetGroup.getId();
            }
        }
        this.moveTo = widgetGroup.f828id;
    }

    public void setAuthoritative(boolean z10) {
        this.authoritative = z10;
    }

    public void setOrientation(int i9) {
        this.orientation = i9;
    }

    public int size() {
        return this.widgets.size();
    }

    public String toString() {
        Iterator<ConstraintWidget> it;
        String str = getOrientationString() + " [" + this.f828id + "] <";
        while (this.widgets.iterator().hasNext()) {
            str = str + " " + it.next().getDebugName();
        }
        return str + " >";
    }

    public int measureWrap(LinearSystem linearSystem, int i9) {
        if (this.widgets.size() == 0) {
            return 0;
        }
        return solverMeasure(linearSystem, this.widgets, i9);
    }
}
