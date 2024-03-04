package androidx.constraintlayout.core;

import androidx.constraintlayout.core.ArrayRow;
import com.facebook.appevents.integrity.IntegrityManager;
import java.io.PrintStream;
import java.util.Arrays;
/* loaded from: classes.dex */
public class SolverVariableValues implements ArrayRow.ArrayRowVariables {
    private static final boolean DEBUG = false;
    private static final boolean HASH = true;
    private static float epsilon = 0.001f;
    protected final Cache mCache;
    private final ArrayRow mRow;
    private final int NONE = -1;
    private int SIZE = 16;
    private int HASH_SIZE = 16;
    int[] keys = new int[16];
    int[] nextKeys = new int[16];
    int[] variables = new int[16];
    float[] values = new float[16];
    int[] previous = new int[16];
    int[] next = new int[16];
    int mCount = 0;
    int head = -1;

    /* JADX INFO: Access modifiers changed from: package-private */
    public SolverVariableValues(ArrayRow arrayRow, Cache cache) {
        this.mRow = arrayRow;
        this.mCache = cache;
        clear();
    }

    private void addToHashMap(SolverVariable solverVariable, int i9) {
        int[] iArr;
        int i10 = solverVariable.f805id % this.HASH_SIZE;
        int[] iArr2 = this.keys;
        int i11 = iArr2[i10];
        if (i11 == -1) {
            iArr2[i10] = i9;
        } else {
            while (true) {
                iArr = this.nextKeys;
                if (iArr[i11] == -1) {
                    break;
                }
                i11 = iArr[i11];
            }
            iArr[i11] = i9;
        }
        this.nextKeys[i9] = -1;
    }

    private void addVariable(int i9, SolverVariable solverVariable, float f10) {
        this.variables[i9] = solverVariable.f805id;
        this.values[i9] = f10;
        this.previous[i9] = -1;
        this.next[i9] = -1;
        solverVariable.addToRow(this.mRow);
        solverVariable.usageInRowCount++;
        this.mCount++;
    }

    private void displayHash() {
        for (int i9 = 0; i9 < this.HASH_SIZE; i9++) {
            if (this.keys[i9] != -1) {
                String str = hashCode() + " hash [" + i9 + "] => ";
                int i10 = this.keys[i9];
                boolean z10 = false;
                while (!z10) {
                    str = str + " " + this.variables[i10];
                    int[] iArr = this.nextKeys;
                    if (iArr[i10] != -1) {
                        i10 = iArr[i10];
                    } else {
                        z10 = true;
                    }
                }
                System.out.println(str);
            }
        }
    }

    private int findEmptySlot() {
        for (int i9 = 0; i9 < this.SIZE; i9++) {
            if (this.variables[i9] == -1) {
                return i9;
            }
        }
        return -1;
    }

    private void increaseSize() {
        int i9 = this.SIZE * 2;
        this.variables = Arrays.copyOf(this.variables, i9);
        this.values = Arrays.copyOf(this.values, i9);
        this.previous = Arrays.copyOf(this.previous, i9);
        this.next = Arrays.copyOf(this.next, i9);
        this.nextKeys = Arrays.copyOf(this.nextKeys, i9);
        for (int i10 = this.SIZE; i10 < i9; i10++) {
            this.variables[i10] = -1;
            this.nextKeys[i10] = -1;
        }
        this.SIZE = i9;
    }

    private void insertVariable(int i9, SolverVariable solverVariable, float f10) {
        int findEmptySlot = findEmptySlot();
        addVariable(findEmptySlot, solverVariable, f10);
        if (i9 != -1) {
            this.previous[findEmptySlot] = i9;
            int[] iArr = this.next;
            iArr[findEmptySlot] = iArr[i9];
            iArr[i9] = findEmptySlot;
        } else {
            this.previous[findEmptySlot] = -1;
            if (this.mCount > 0) {
                this.next[findEmptySlot] = this.head;
                this.head = findEmptySlot;
            } else {
                this.next[findEmptySlot] = -1;
            }
        }
        int[] iArr2 = this.next;
        if (iArr2[findEmptySlot] != -1) {
            this.previous[iArr2[findEmptySlot]] = findEmptySlot;
        }
        addToHashMap(solverVariable, findEmptySlot);
    }

    private void removeFromHashMap(SolverVariable solverVariable) {
        int[] iArr;
        int i9 = solverVariable.f805id;
        int i10 = i9 % this.HASH_SIZE;
        int[] iArr2 = this.keys;
        int i11 = iArr2[i10];
        if (i11 == -1) {
            return;
        }
        if (this.variables[i11] == i9) {
            int[] iArr3 = this.nextKeys;
            iArr2[i10] = iArr3[i11];
            iArr3[i11] = -1;
            return;
        }
        while (true) {
            iArr = this.nextKeys;
            if (iArr[i11] == -1 || this.variables[iArr[i11]] == i9) {
                break;
            }
            i11 = iArr[i11];
        }
        int i12 = iArr[i11];
        if (i12 == -1 || this.variables[i12] != i9) {
            return;
        }
        iArr[i11] = iArr[i12];
        iArr[i12] = -1;
    }

    @Override // androidx.constraintlayout.core.ArrayRow.ArrayRowVariables
    public void add(SolverVariable solverVariable, float f10, boolean z10) {
        float f11 = epsilon;
        if (f10 <= (-f11) || f10 >= f11) {
            int indexOf = indexOf(solverVariable);
            if (indexOf == -1) {
                put(solverVariable, f10);
                return;
            }
            float[] fArr = this.values;
            fArr[indexOf] = fArr[indexOf] + f10;
            float f12 = fArr[indexOf];
            float f13 = epsilon;
            if (f12 <= (-f13) || fArr[indexOf] >= f13) {
                return;
            }
            fArr[indexOf] = 0.0f;
            remove(solverVariable, z10);
        }
    }

    @Override // androidx.constraintlayout.core.ArrayRow.ArrayRowVariables
    public void clear() {
        int i9 = this.mCount;
        for (int i10 = 0; i10 < i9; i10++) {
            SolverVariable variable = getVariable(i10);
            if (variable != null) {
                variable.removeFromRow(this.mRow);
            }
        }
        for (int i11 = 0; i11 < this.SIZE; i11++) {
            this.variables[i11] = -1;
            this.nextKeys[i11] = -1;
        }
        for (int i12 = 0; i12 < this.HASH_SIZE; i12++) {
            this.keys[i12] = -1;
        }
        this.mCount = 0;
        this.head = -1;
    }

    @Override // androidx.constraintlayout.core.ArrayRow.ArrayRowVariables
    public boolean contains(SolverVariable solverVariable) {
        return indexOf(solverVariable) != -1;
    }

    @Override // androidx.constraintlayout.core.ArrayRow.ArrayRowVariables
    public void display() {
        int i9 = this.mCount;
        System.out.print("{ ");
        for (int i10 = 0; i10 < i9; i10++) {
            SolverVariable variable = getVariable(i10);
            if (variable != null) {
                PrintStream printStream = System.out;
                printStream.print(variable + " = " + getVariableValue(i10) + " ");
            }
        }
        System.out.println(" }");
    }

    @Override // androidx.constraintlayout.core.ArrayRow.ArrayRowVariables
    public void divideByAmount(float f10) {
        int i9 = this.mCount;
        int i10 = this.head;
        for (int i11 = 0; i11 < i9; i11++) {
            float[] fArr = this.values;
            fArr[i10] = fArr[i10] / f10;
            i10 = this.next[i10];
            if (i10 == -1) {
                return;
            }
        }
    }

    @Override // androidx.constraintlayout.core.ArrayRow.ArrayRowVariables
    public float get(SolverVariable solverVariable) {
        int indexOf = indexOf(solverVariable);
        if (indexOf != -1) {
            return this.values[indexOf];
        }
        return 0.0f;
    }

    @Override // androidx.constraintlayout.core.ArrayRow.ArrayRowVariables
    public int getCurrentSize() {
        return this.mCount;
    }

    @Override // androidx.constraintlayout.core.ArrayRow.ArrayRowVariables
    public SolverVariable getVariable(int i9) {
        int i10 = this.mCount;
        if (i10 == 0) {
            return null;
        }
        int i11 = this.head;
        for (int i12 = 0; i12 < i10; i12++) {
            if (i12 == i9 && i11 != -1) {
                return this.mCache.mIndexedVariables[this.variables[i11]];
            }
            i11 = this.next[i11];
            if (i11 == -1) {
                break;
            }
        }
        return null;
    }

    @Override // androidx.constraintlayout.core.ArrayRow.ArrayRowVariables
    public float getVariableValue(int i9) {
        int i10 = this.mCount;
        int i11 = this.head;
        for (int i12 = 0; i12 < i10; i12++) {
            if (i12 == i9) {
                return this.values[i11];
            }
            i11 = this.next[i11];
            if (i11 == -1) {
                return 0.0f;
            }
        }
        return 0.0f;
    }

    @Override // androidx.constraintlayout.core.ArrayRow.ArrayRowVariables
    public int indexOf(SolverVariable solverVariable) {
        int[] iArr;
        if (this.mCount != 0 && solverVariable != null) {
            int i9 = solverVariable.f805id;
            int i10 = this.keys[i9 % this.HASH_SIZE];
            if (i10 == -1) {
                return -1;
            }
            if (this.variables[i10] == i9) {
                return i10;
            }
            while (true) {
                iArr = this.nextKeys;
                if (iArr[i10] == -1 || this.variables[iArr[i10]] == i9) {
                    break;
                }
                i10 = iArr[i10];
            }
            if (iArr[i10] != -1 && this.variables[iArr[i10]] == i9) {
                return iArr[i10];
            }
        }
        return -1;
    }

    @Override // androidx.constraintlayout.core.ArrayRow.ArrayRowVariables
    public void invert() {
        int i9 = this.mCount;
        int i10 = this.head;
        for (int i11 = 0; i11 < i9; i11++) {
            float[] fArr = this.values;
            fArr[i10] = fArr[i10] * (-1.0f);
            i10 = this.next[i10];
            if (i10 == -1) {
                return;
            }
        }
    }

    @Override // androidx.constraintlayout.core.ArrayRow.ArrayRowVariables
    public void put(SolverVariable solverVariable, float f10) {
        float f11 = epsilon;
        if (f10 > (-f11) && f10 < f11) {
            remove(solverVariable, true);
            return;
        }
        if (this.mCount == 0) {
            addVariable(0, solverVariable, f10);
            addToHashMap(solverVariable, 0);
            this.head = 0;
            return;
        }
        int indexOf = indexOf(solverVariable);
        if (indexOf != -1) {
            this.values[indexOf] = f10;
            return;
        }
        if (this.mCount + 1 >= this.SIZE) {
            increaseSize();
        }
        int i9 = this.mCount;
        int i10 = this.head;
        int i11 = -1;
        for (int i12 = 0; i12 < i9; i12++) {
            int[] iArr = this.variables;
            int i13 = iArr[i10];
            int i14 = solverVariable.f805id;
            if (i13 == i14) {
                this.values[i10] = f10;
                return;
            }
            if (iArr[i10] < i14) {
                i11 = i10;
            }
            i10 = this.next[i10];
            if (i10 == -1) {
                break;
            }
        }
        insertVariable(i11, solverVariable, f10);
    }

    @Override // androidx.constraintlayout.core.ArrayRow.ArrayRowVariables
    public float remove(SolverVariable solverVariable, boolean z10) {
        int indexOf = indexOf(solverVariable);
        if (indexOf == -1) {
            return 0.0f;
        }
        removeFromHashMap(solverVariable);
        float f10 = this.values[indexOf];
        if (this.head == indexOf) {
            this.head = this.next[indexOf];
        }
        this.variables[indexOf] = -1;
        int[] iArr = this.previous;
        if (iArr[indexOf] != -1) {
            int[] iArr2 = this.next;
            iArr2[iArr[indexOf]] = iArr2[indexOf];
        }
        int[] iArr3 = this.next;
        if (iArr3[indexOf] != -1) {
            iArr[iArr3[indexOf]] = iArr[indexOf];
        }
        this.mCount--;
        solverVariable.usageInRowCount--;
        if (z10) {
            solverVariable.removeFromRow(this.mRow);
        }
        return f10;
    }

    @Override // androidx.constraintlayout.core.ArrayRow.ArrayRowVariables
    public int sizeInBytes() {
        return 0;
    }

    public String toString() {
        String str = hashCode() + " { ";
        int i9 = this.mCount;
        for (int i10 = 0; i10 < i9; i10++) {
            SolverVariable variable = getVariable(i10);
            if (variable != null) {
                String str2 = str + variable + " = " + getVariableValue(i10) + " ";
                int indexOf = indexOf(variable);
                String str3 = str2 + "[p: ";
                String str4 = (this.previous[indexOf] != -1 ? str3 + this.mCache.mIndexedVariables[this.variables[this.previous[indexOf]]] : str3 + IntegrityManager.INTEGRITY_TYPE_NONE) + ", n: ";
                str = (this.next[indexOf] != -1 ? str4 + this.mCache.mIndexedVariables[this.variables[this.next[indexOf]]] : str4 + IntegrityManager.INTEGRITY_TYPE_NONE) + "]";
            }
        }
        return str + " }";
    }

    @Override // androidx.constraintlayout.core.ArrayRow.ArrayRowVariables
    public float use(ArrayRow arrayRow, boolean z10) {
        float f10 = get(arrayRow.variable);
        remove(arrayRow.variable, z10);
        SolverVariableValues solverVariableValues = (SolverVariableValues) arrayRow.variables;
        int currentSize = solverVariableValues.getCurrentSize();
        int i9 = 0;
        int i10 = 0;
        while (i9 < currentSize) {
            int[] iArr = solverVariableValues.variables;
            if (iArr[i10] != -1) {
                add(this.mCache.mIndexedVariables[iArr[i10]], solverVariableValues.values[i10] * f10, z10);
                i9++;
            }
            i10++;
        }
        return f10;
    }
}
