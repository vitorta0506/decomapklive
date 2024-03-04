package androidx.constraintlayout.core.parser;
/* loaded from: classes.dex */
public class CLString extends CLElement {
    public CLString(char[] cArr) {
        super(cArr);
    }

    public static CLElement allocate(char[] cArr) {
        return new CLString(cArr);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.constraintlayout.core.parser.CLElement
    public String toFormattedJSON(int i9, int i10) {
        StringBuilder sb2 = new StringBuilder();
        addIndent(sb2, i9);
        sb2.append("'");
        sb2.append(content());
        sb2.append("'");
        return sb2.toString();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.constraintlayout.core.parser.CLElement
    public String toJSON() {
        return "'" + content() + "'";
    }
}
