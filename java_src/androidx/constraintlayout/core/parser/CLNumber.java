package androidx.constraintlayout.core.parser;
/* loaded from: classes.dex */
public class CLNumber extends CLElement {
    float value;

    public CLNumber(char[] cArr) {
        super(cArr);
        this.value = Float.NaN;
    }

    public static CLElement allocate(char[] cArr) {
        return new CLNumber(cArr);
    }

    @Override // androidx.constraintlayout.core.parser.CLElement
    public float getFloat() {
        if (Float.isNaN(this.value)) {
            this.value = Float.parseFloat(content());
        }
        return this.value;
    }

    @Override // androidx.constraintlayout.core.parser.CLElement
    public int getInt() {
        if (Float.isNaN(this.value)) {
            this.value = Integer.parseInt(content());
        }
        return (int) this.value;
    }

    public boolean isInt() {
        float f10 = getFloat();
        return ((float) ((int) f10)) == f10;
    }

    public void putValue(float f10) {
        this.value = f10;
    }

    @Override // androidx.constraintlayout.core.parser.CLElement
    protected String toFormattedJSON(int i9, int i10) {
        StringBuilder sb2 = new StringBuilder();
        addIndent(sb2, i9);
        float f10 = getFloat();
        int i11 = (int) f10;
        if (i11 == f10) {
            sb2.append(i11);
        } else {
            sb2.append(f10);
        }
        return sb2.toString();
    }

    @Override // androidx.constraintlayout.core.parser.CLElement
    protected String toJSON() {
        float f10 = getFloat();
        int i9 = (int) f10;
        if (i9 == f10) {
            return "" + i9;
        }
        return "" + f10;
    }

    public CLNumber(float f10) {
        super(null);
        this.value = f10;
    }
}
