package androidx.constraintlayout.core;

import androidx.constraintlayout.core.LinearSystem;
import androidx.constraintlayout.core.SolverVariable;
import com.facebook.appevents.UserDataStore;
import java.util.ArrayList;
/* loaded from: classes.dex */
public class ArrayRow implements LinearSystem.Row {
    private static final boolean DEBUG = false;
    private static final boolean FULL_NEW_CHECK = false;
    public ArrayRowVariables variables;
    SolverVariable variable = null;
    float constantValue = 0.0f;
    boolean used = false;
    ArrayList<SolverVariable> variablesToUpdate = new ArrayList<>();
    boolean isSimpleDefinition = false;

    /* loaded from: classes.dex */
    public interface ArrayRowVariables {
        void add(SolverVariable solverVariable, float f10, boolean z10);

        void clear();

        boolean contains(SolverVariable solverVariable);

        void display();

        void divideByAmount(float f10);

        float get(SolverVariable solverVariable);

        int getCurrentSize();

        SolverVariable getVariable(int i9);

        float getVariableValue(int i9);

        int indexOf(SolverVariable solverVariable);

        void invert();

        void put(SolverVariable solverVariable, float f10);

        float remove(SolverVariable solverVariable, boolean z10);

        int sizeInBytes();

        float use(ArrayRow arrayRow, boolean z10);
    }

    public ArrayRow() {
    }

    private boolean isNew(SolverVariable solverVariable, LinearSystem linearSystem) {
        return solverVariable.usageInRowCount <= 1;
    }

    private SolverVariable pickPivotInVariables(boolean[] zArr, SolverVariable solverVariable) {
        SolverVariable.Type type;
        int currentSize = this.variables.getCurrentSize();
        SolverVariable solverVariable2 = null;
        float f10 = 0.0f;
        for (int i9 = 0; i9 < currentSize; i9++) {
            float variableValue = this.variables.getVariableValue(i9);
            if (variableValue < 0.0f) {
                SolverVariable variable = this.variables.getVariable(i9);
                if ((zArr == null || !zArr[variable.f805id]) && variable != solverVariable && (((type = variable.mType) == SolverVariable.Type.SLACK || type == SolverVariable.Type.ERROR) && variableValue < f10)) {
                    f10 = variableValue;
                    solverVariable2 = variable;
                }
            }
        }
        return solverVariable2;
    }

    public ArrayRow addError(LinearSystem linearSystem, int i9) {
        this.variables.put(linearSystem.createErrorVariable(i9, "ep"), 1.0f);
        this.variables.put(linearSystem.createErrorVariable(i9, UserDataStore.EMAIL), -1.0f);
        return this;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public ArrayRow addSingleError(SolverVariable solverVariable, int i9) {
        this.variables.put(solverVariable, i9);
        return this;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean chooseSubject(LinearSystem linearSystem) {
        boolean z10;
        SolverVariable chooseSubjectInVariables = chooseSubjectInVariables(linearSystem);
        if (chooseSubjectInVariables == null) {
            z10 = true;
        } else {
            pivot(chooseSubjectInVariables);
            z10 = false;
        }
        if (this.variables.getCurrentSize() == 0) {
            this.isSimpleDefinition = true;
        }
        return z10;
    }

    SolverVariable chooseSubjectInVariables(LinearSystem linearSystem) {
        boolean isNew;
        boolean isNew2;
        int currentSize = this.variables.getCurrentSize();
        SolverVariable solverVariable = null;
        SolverVariable solverVariable2 = null;
        boolean z10 = false;
        boolean z11 = false;
        float f10 = 0.0f;
        float f11 = 0.0f;
        for (int i9 = 0; i9 < currentSize; i9++) {
            float variableValue = this.variables.getVariableValue(i9);
            SolverVariable variable = this.variables.getVariable(i9);
            if (variable.mType == SolverVariable.Type.UNRESTRICTED) {
                if (solverVariable == null) {
                    isNew2 = isNew(variable, linearSystem);
                } else if (f10 > variableValue) {
                    isNew2 = isNew(variable, linearSystem);
                } else if (!z10 && isNew(variable, linearSystem)) {
                    f10 = variableValue;
                    solverVariable = variable;
                    z10 = true;
                }
                z10 = isNew2;
                f10 = variableValue;
                solverVariable = variable;
            } else if (solverVariable == null && variableValue < 0.0f) {
                if (solverVariable2 == null) {
                    isNew = isNew(variable, linearSystem);
                } else if (f11 > variableValue) {
                    isNew = isNew(variable, linearSystem);
                } else if (!z11 && isNew(variable, linearSystem)) {
                    f11 = variableValue;
                    solverVariable2 = variable;
                    z11 = true;
                }
                z11 = isNew;
                f11 = variableValue;
                solverVariable2 = variable;
            }
        }
        return solverVariable != null ? solverVariable : solverVariable2;
    }

    @Override // androidx.constraintlayout.core.LinearSystem.Row
    public void clear() {
        this.variables.clear();
        this.variable = null;
        this.constantValue = 0.0f;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public ArrayRow createRowCentering(SolverVariable solverVariable, SolverVariable solverVariable2, int i9, float f10, SolverVariable solverVariable3, SolverVariable solverVariable4, int i10) {
        if (solverVariable2 == solverVariable3) {
            this.variables.put(solverVariable, 1.0f);
            this.variables.put(solverVariable4, 1.0f);
            this.variables.put(solverVariable2, -2.0f);
            return this;
        }
        if (f10 == 0.5f) {
            this.variables.put(solverVariable, 1.0f);
            this.variables.put(solverVariable2, -1.0f);
            this.variables.put(solverVariable3, -1.0f);
            this.variables.put(solverVariable4, 1.0f);
            if (i9 > 0 || i10 > 0) {
                this.constantValue = (-i9) + i10;
            }
        } else if (f10 <= 0.0f) {
            this.variables.put(solverVariable, -1.0f);
            this.variables.put(solverVariable2, 1.0f);
            this.constantValue = i9;
        } else if (f10 >= 1.0f) {
            this.variables.put(solverVariable4, -1.0f);
            this.variables.put(solverVariable3, 1.0f);
            this.constantValue = -i10;
        } else {
            float f11 = 1.0f - f10;
            this.variables.put(solverVariable, f11 * 1.0f);
            this.variables.put(solverVariable2, f11 * (-1.0f));
            this.variables.put(solverVariable3, (-1.0f) * f10);
            this.variables.put(solverVariable4, 1.0f * f10);
            if (i9 > 0 || i10 > 0) {
                this.constantValue = ((-i9) * f11) + (i10 * f10);
            }
        }
        return this;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public ArrayRow createRowDefinition(SolverVariable solverVariable, int i9) {
        this.variable = solverVariable;
        float f10 = i9;
        solverVariable.computedValue = f10;
        this.constantValue = f10;
        this.isSimpleDefinition = true;
        return this;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public ArrayRow createRowDimensionPercent(SolverVariable solverVariable, SolverVariable solverVariable2, float f10) {
        this.variables.put(solverVariable, -1.0f);
        this.variables.put(solverVariable2, f10);
        return this;
    }

    public ArrayRow createRowDimensionRatio(SolverVariable solverVariable, SolverVariable solverVariable2, SolverVariable solverVariable3, SolverVariable solverVariable4, float f10) {
        this.variables.put(solverVariable, -1.0f);
        this.variables.put(solverVariable2, 1.0f);
        this.variables.put(solverVariable3, f10);
        this.variables.put(solverVariable4, -f10);
        return this;
    }

    public ArrayRow createRowEqualDimension(float f10, float f11, float f12, SolverVariable solverVariable, int i9, SolverVariable solverVariable2, int i10, SolverVariable solverVariable3, int i11, SolverVariable solverVariable4, int i12) {
        if (f11 != 0.0f && f10 != f12) {
            float f13 = (f10 / f11) / (f12 / f11);
            this.constantValue = ((-i9) - i10) + (i11 * f13) + (i12 * f13);
            this.variables.put(solverVariable, 1.0f);
            this.variables.put(solverVariable2, -1.0f);
            this.variables.put(solverVariable4, f13);
            this.variables.put(solverVariable3, -f13);
        } else {
            this.constantValue = ((-i9) - i10) + i11 + i12;
            this.variables.put(solverVariable, 1.0f);
            this.variables.put(solverVariable2, -1.0f);
            this.variables.put(solverVariable4, 1.0f);
            this.variables.put(solverVariable3, -1.0f);
        }
        return this;
    }

    public ArrayRow createRowEqualMatchDimensions(float f10, float f11, float f12, SolverVariable solverVariable, SolverVariable solverVariable2, SolverVariable solverVariable3, SolverVariable solverVariable4) {
        this.constantValue = 0.0f;
        if (f11 == 0.0f || f10 == f12) {
            this.variables.put(solverVariable, 1.0f);
            this.variables.put(solverVariable2, -1.0f);
            this.variables.put(solverVariable4, 1.0f);
            this.variables.put(solverVariable3, -1.0f);
        } else if (f10 == 0.0f) {
            this.variables.put(solverVariable, 1.0f);
            this.variables.put(solverVariable2, -1.0f);
        } else if (f12 == 0.0f) {
            this.variables.put(solverVariable3, 1.0f);
            this.variables.put(solverVariable4, -1.0f);
        } else {
            float f13 = (f10 / f11) / (f12 / f11);
            this.variables.put(solverVariable, 1.0f);
            this.variables.put(solverVariable2, -1.0f);
            this.variables.put(solverVariable4, f13);
            this.variables.put(solverVariable3, -f13);
        }
        return this;
    }

    public ArrayRow createRowEquals(SolverVariable solverVariable, int i9) {
        if (i9 < 0) {
            this.constantValue = i9 * (-1);
            this.variables.put(solverVariable, 1.0f);
        } else {
            this.constantValue = i9;
            this.variables.put(solverVariable, -1.0f);
        }
        return this;
    }

    public ArrayRow createRowGreaterThan(SolverVariable solverVariable, SolverVariable solverVariable2, SolverVariable solverVariable3, int i9) {
        boolean z10 = false;
        if (i9 != 0) {
            if (i9 < 0) {
                i9 *= -1;
                z10 = true;
            }
            this.constantValue = i9;
        }
        if (!z10) {
            this.variables.put(solverVariable, -1.0f);
            this.variables.put(solverVariable2, 1.0f);
            this.variables.put(solverVariable3, 1.0f);
        } else {
            this.variables.put(solverVariable, 1.0f);
            this.variables.put(solverVariable2, -1.0f);
            this.variables.put(solverVariable3, -1.0f);
        }
        return this;
    }

    public ArrayRow createRowLowerThan(SolverVariable solverVariable, SolverVariable solverVariable2, SolverVariable solverVariable3, int i9) {
        boolean z10 = false;
        if (i9 != 0) {
            if (i9 < 0) {
                i9 *= -1;
                z10 = true;
            }
            this.constantValue = i9;
        }
        if (!z10) {
            this.variables.put(solverVariable, -1.0f);
            this.variables.put(solverVariable2, 1.0f);
            this.variables.put(solverVariable3, -1.0f);
        } else {
            this.variables.put(solverVariable, 1.0f);
            this.variables.put(solverVariable2, -1.0f);
            this.variables.put(solverVariable3, 1.0f);
        }
        return this;
    }

    public ArrayRow createRowWithAngle(SolverVariable solverVariable, SolverVariable solverVariable2, SolverVariable solverVariable3, SolverVariable solverVariable4, float f10) {
        this.variables.put(solverVariable3, 0.5f);
        this.variables.put(solverVariable4, 0.5f);
        this.variables.put(solverVariable, -0.5f);
        this.variables.put(solverVariable2, -0.5f);
        this.constantValue = -f10;
        return this;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void ensurePositiveConstant() {
        float f10 = this.constantValue;
        if (f10 < 0.0f) {
            this.constantValue = f10 * (-1.0f);
            this.variables.invert();
        }
    }

    @Override // androidx.constraintlayout.core.LinearSystem.Row
    public SolverVariable getKey() {
        return this.variable;
    }

    @Override // androidx.constraintlayout.core.LinearSystem.Row
    public SolverVariable getPivotCandidate(LinearSystem linearSystem, boolean[] zArr) {
        return pickPivotInVariables(zArr, null);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean hasKeyVariable() {
        SolverVariable solverVariable = this.variable;
        return solverVariable != null && (solverVariable.mType == SolverVariable.Type.UNRESTRICTED || this.constantValue >= 0.0f);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean hasVariable(SolverVariable solverVariable) {
        return this.variables.contains(solverVariable);
    }

    @Override // androidx.constraintlayout.core.LinearSystem.Row
    public void initFromRow(LinearSystem.Row row) {
        if (row instanceof ArrayRow) {
            ArrayRow arrayRow = (ArrayRow) row;
            this.variable = null;
            this.variables.clear();
            for (int i9 = 0; i9 < arrayRow.variables.getCurrentSize(); i9++) {
                this.variables.add(arrayRow.variables.getVariable(i9), arrayRow.variables.getVariableValue(i9), true);
            }
        }
    }

    @Override // androidx.constraintlayout.core.LinearSystem.Row
    public boolean isEmpty() {
        return this.variable == null && this.constantValue == 0.0f && this.variables.getCurrentSize() == 0;
    }

    public SolverVariable pickPivot(SolverVariable solverVariable) {
        return pickPivotInVariables(null, solverVariable);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void pivot(SolverVariable solverVariable) {
        SolverVariable solverVariable2 = this.variable;
        if (solverVariable2 != null) {
            this.variables.put(solverVariable2, -1.0f);
            this.variable.definitionId = -1;
            this.variable = null;
        }
        float remove = this.variables.remove(solverVariable, true) * (-1.0f);
        this.variable = solverVariable;
        if (remove == 1.0f) {
            return;
        }
        this.constantValue /= remove;
        this.variables.divideByAmount(remove);
    }

    public void reset() {
        this.variable = null;
        this.variables.clear();
        this.constantValue = 0.0f;
        this.isSimpleDefinition = false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int sizeInBytes() {
        return (this.variable != null ? 4 : 0) + 4 + 4 + this.variables.sizeInBytes();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Removed duplicated region for block: B:29:0x00c0  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x00d0  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.String toReadableString() {
        /*
            Method dump skipped, instructions count: 256
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.constraintlayout.core.ArrayRow.toReadableString():java.lang.String");
    }

    public String toString() {
        return toReadableString();
    }

    @Override // androidx.constraintlayout.core.LinearSystem.Row
    public void updateFromFinalVariable(LinearSystem linearSystem, SolverVariable solverVariable, boolean z10) {
        if (solverVariable == null || !solverVariable.isFinalValue) {
            return;
        }
        this.constantValue += solverVariable.computedValue * this.variables.get(solverVariable);
        this.variables.remove(solverVariable, z10);
        if (z10) {
            solverVariable.removeFromRow(this);
        }
        if (LinearSystem.SIMPLIFY_SYNONYMS && this.variables.getCurrentSize() == 0) {
            this.isSimpleDefinition = true;
            linearSystem.hasSimpleDefinition = true;
        }
    }

    @Override // androidx.constraintlayout.core.LinearSystem.Row
    public void updateFromRow(LinearSystem linearSystem, ArrayRow arrayRow, boolean z10) {
        this.constantValue += arrayRow.constantValue * this.variables.use(arrayRow, z10);
        if (z10) {
            arrayRow.variable.removeFromRow(this);
        }
        if (LinearSystem.SIMPLIFY_SYNONYMS && this.variable != null && this.variables.getCurrentSize() == 0) {
            this.isSimpleDefinition = true;
            linearSystem.hasSimpleDefinition = true;
        }
    }

    public void updateFromSynonymVariable(LinearSystem linearSystem, SolverVariable solverVariable, boolean z10) {
        if (solverVariable == null || !solverVariable.isSynonym) {
            return;
        }
        float f10 = this.variables.get(solverVariable);
        this.constantValue += solverVariable.synonymDelta * f10;
        this.variables.remove(solverVariable, z10);
        if (z10) {
            solverVariable.removeFromRow(this);
        }
        this.variables.add(linearSystem.mCache.mIndexedVariables[solverVariable.synonym], f10, z10);
        if (LinearSystem.SIMPLIFY_SYNONYMS && this.variables.getCurrentSize() == 0) {
            this.isSimpleDefinition = true;
            linearSystem.hasSimpleDefinition = true;
        }
    }

    @Override // androidx.constraintlayout.core.LinearSystem.Row
    public void updateFromSystem(LinearSystem linearSystem) {
        if (linearSystem.mRows.length == 0) {
            return;
        }
        boolean z10 = false;
        while (!z10) {
            int currentSize = this.variables.getCurrentSize();
            for (int i9 = 0; i9 < currentSize; i9++) {
                SolverVariable variable = this.variables.getVariable(i9);
                if (variable.definitionId != -1 || variable.isFinalValue || variable.isSynonym) {
                    this.variablesToUpdate.add(variable);
                }
            }
            int size = this.variablesToUpdate.size();
            if (size > 0) {
                for (int i10 = 0; i10 < size; i10++) {
                    SolverVariable solverVariable = this.variablesToUpdate.get(i10);
                    if (solverVariable.isFinalValue) {
                        updateFromFinalVariable(linearSystem, solverVariable, true);
                    } else if (solverVariable.isSynonym) {
                        updateFromSynonymVariable(linearSystem, solverVariable, true);
                    } else {
                        updateFromRow(linearSystem, linearSystem.mRows[solverVariable.definitionId], true);
                    }
                }
                this.variablesToUpdate.clear();
            } else {
                z10 = true;
            }
        }
        if (LinearSystem.SIMPLIFY_SYNONYMS && this.variable != null && this.variables.getCurrentSize() == 0) {
            this.isSimpleDefinition = true;
            linearSystem.hasSimpleDefinition = true;
        }
    }

    @Override // androidx.constraintlayout.core.LinearSystem.Row
    public void addError(SolverVariable solverVariable) {
        int i9 = solverVariable.strength;
        float f10 = 1.0f;
        if (i9 != 1) {
            if (i9 == 2) {
                f10 = 1000.0f;
            } else if (i9 == 3) {
                f10 = 1000000.0f;
            } else if (i9 == 4) {
                f10 = 1.0E9f;
            } else if (i9 == 5) {
                f10 = 1.0E12f;
            }
        }
        this.variables.put(solverVariable, f10);
    }

    public ArrayRow createRowEquals(SolverVariable solverVariable, SolverVariable solverVariable2, int i9) {
        boolean z10 = false;
        if (i9 != 0) {
            if (i9 < 0) {
                i9 *= -1;
                z10 = true;
            }
            this.constantValue = i9;
        }
        if (!z10) {
            this.variables.put(solverVariable, -1.0f);
            this.variables.put(solverVariable2, 1.0f);
        } else {
            this.variables.put(solverVariable, 1.0f);
            this.variables.put(solverVariable2, -1.0f);
        }
        return this;
    }

    public ArrayRow(Cache cache) {
        this.variables = new ArrayLinkedVariables(this, cache);
    }

    public ArrayRow createRowGreaterThan(SolverVariable solverVariable, int i9, SolverVariable solverVariable2) {
        this.constantValue = i9;
        this.variables.put(solverVariable, -1.0f);
        return this;
    }
}
