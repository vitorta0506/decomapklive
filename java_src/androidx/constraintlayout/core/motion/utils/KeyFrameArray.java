package androidx.constraintlayout.core.motion.utils;

import androidx.constraintlayout.core.motion.CustomAttribute;
import androidx.constraintlayout.core.motion.CustomVariable;
import java.io.PrintStream;
import java.util.Arrays;
/* loaded from: classes.dex */
public class KeyFrameArray {

    /* loaded from: classes.dex */
    public static class CustomArray {
        private static final int EMPTY = 999;
        int count;
        int[] keys = new int[101];
        CustomAttribute[] values = new CustomAttribute[101];

        public CustomArray() {
            clear();
        }

        public void append(int i9, CustomAttribute customAttribute) {
            if (this.values[i9] != null) {
                remove(i9);
            }
            this.values[i9] = customAttribute;
            int[] iArr = this.keys;
            int i10 = this.count;
            this.count = i10 + 1;
            iArr[i10] = i9;
            Arrays.sort(iArr);
        }

        public void clear() {
            Arrays.fill(this.keys, 999);
            Arrays.fill(this.values, (Object) null);
            this.count = 0;
        }

        public void dump() {
            PrintStream printStream = System.out;
            printStream.println("V: " + Arrays.toString(Arrays.copyOf(this.keys, this.count)));
            System.out.print("K: [");
            int i9 = 0;
            while (i9 < this.count) {
                PrintStream printStream2 = System.out;
                StringBuilder sb2 = new StringBuilder();
                sb2.append(i9 == 0 ? "" : ", ");
                sb2.append(valueAt(i9));
                printStream2.print(sb2.toString());
                i9++;
            }
            System.out.println("]");
        }

        public int keyAt(int i9) {
            return this.keys[i9];
        }

        public void remove(int i9) {
            this.values[i9] = null;
            int i10 = 0;
            int i11 = 0;
            while (true) {
                int i12 = this.count;
                if (i10 < i12) {
                    int[] iArr = this.keys;
                    if (i9 == iArr[i10]) {
                        iArr[i10] = 999;
                        i11++;
                    }
                    if (i10 != i11) {
                        iArr[i10] = iArr[i11];
                    }
                    i11++;
                    i10++;
                } else {
                    this.count = i12 - 1;
                    return;
                }
            }
        }

        public int size() {
            return this.count;
        }

        public CustomAttribute valueAt(int i9) {
            return this.values[this.keys[i9]];
        }
    }

    /* loaded from: classes.dex */
    public static class CustomVar {
        private static final int EMPTY = 999;
        int count;
        int[] keys = new int[101];
        CustomVariable[] values = new CustomVariable[101];

        public CustomVar() {
            clear();
        }

        public void append(int i9, CustomVariable customVariable) {
            if (this.values[i9] != null) {
                remove(i9);
            }
            this.values[i9] = customVariable;
            int[] iArr = this.keys;
            int i10 = this.count;
            this.count = i10 + 1;
            iArr[i10] = i9;
            Arrays.sort(iArr);
        }

        public void clear() {
            Arrays.fill(this.keys, 999);
            Arrays.fill(this.values, (Object) null);
            this.count = 0;
        }

        public void dump() {
            PrintStream printStream = System.out;
            printStream.println("V: " + Arrays.toString(Arrays.copyOf(this.keys, this.count)));
            System.out.print("K: [");
            int i9 = 0;
            while (i9 < this.count) {
                PrintStream printStream2 = System.out;
                StringBuilder sb2 = new StringBuilder();
                sb2.append(i9 == 0 ? "" : ", ");
                sb2.append(valueAt(i9));
                printStream2.print(sb2.toString());
                i9++;
            }
            System.out.println("]");
        }

        public int keyAt(int i9) {
            return this.keys[i9];
        }

        public void remove(int i9) {
            this.values[i9] = null;
            int i10 = 0;
            int i11 = 0;
            while (true) {
                int i12 = this.count;
                if (i10 < i12) {
                    int[] iArr = this.keys;
                    if (i9 == iArr[i10]) {
                        iArr[i10] = 999;
                        i11++;
                    }
                    if (i10 != i11) {
                        iArr[i10] = iArr[i11];
                    }
                    i11++;
                    i10++;
                } else {
                    this.count = i12 - 1;
                    return;
                }
            }
        }

        public int size() {
            return this.count;
        }

        public CustomVariable valueAt(int i9) {
            return this.values[this.keys[i9]];
        }
    }

    /* loaded from: classes.dex */
    static class FloatArray {
        private static final int EMPTY = 999;
        int count;
        int[] keys = new int[101];
        float[][] values = new float[101];

        public FloatArray() {
            clear();
        }

        public void append(int i9, float[] fArr) {
            if (this.values[i9] != null) {
                remove(i9);
            }
            this.values[i9] = fArr;
            int[] iArr = this.keys;
            int i10 = this.count;
            this.count = i10 + 1;
            iArr[i10] = i9;
            Arrays.sort(iArr);
        }

        public void clear() {
            Arrays.fill(this.keys, 999);
            Arrays.fill(this.values, (Object) null);
            this.count = 0;
        }

        public void dump() {
            PrintStream printStream = System.out;
            printStream.println("V: " + Arrays.toString(Arrays.copyOf(this.keys, this.count)));
            System.out.print("K: [");
            int i9 = 0;
            while (i9 < this.count) {
                PrintStream printStream2 = System.out;
                StringBuilder sb2 = new StringBuilder();
                sb2.append(i9 == 0 ? "" : ", ");
                sb2.append(Arrays.toString(valueAt(i9)));
                printStream2.print(sb2.toString());
                i9++;
            }
            System.out.println("]");
        }

        public int keyAt(int i9) {
            return this.keys[i9];
        }

        public void remove(int i9) {
            this.values[i9] = null;
            int i10 = 0;
            int i11 = 0;
            while (true) {
                int i12 = this.count;
                if (i10 < i12) {
                    int[] iArr = this.keys;
                    if (i9 == iArr[i10]) {
                        iArr[i10] = 999;
                        i11++;
                    }
                    if (i10 != i11) {
                        iArr[i10] = iArr[i11];
                    }
                    i11++;
                    i10++;
                } else {
                    this.count = i12 - 1;
                    return;
                }
            }
        }

        public int size() {
            return this.count;
        }

        public float[] valueAt(int i9) {
            return this.values[this.keys[i9]];
        }
    }
}
