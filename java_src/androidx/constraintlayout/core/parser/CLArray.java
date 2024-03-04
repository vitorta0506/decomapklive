package androidx.constraintlayout.core.parser;

import java.util.Iterator;
import org.light.utils.IOUtils;
/* loaded from: classes.dex */
public class CLArray extends CLContainer {
    public CLArray(char[] cArr) {
        super(cArr);
    }

    public static CLElement allocate(char[] cArr) {
        return new CLArray(cArr);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.constraintlayout.core.parser.CLElement
    public String toFormattedJSON(int i9, int i10) {
        StringBuilder sb2 = new StringBuilder();
        String json = toJSON();
        if (i10 <= 0 && json.length() + i9 < CLElement.MAX_LINE) {
            sb2.append(json);
        } else {
            sb2.append("[\n");
            Iterator<CLElement> it = this.mElements.iterator();
            boolean z10 = true;
            while (it.hasNext()) {
                CLElement next = it.next();
                if (z10) {
                    z10 = false;
                } else {
                    sb2.append(",\n");
                }
                addIndent(sb2, CLElement.BASE_INDENT + i9);
                sb2.append(next.toFormattedJSON(CLElement.BASE_INDENT + i9, i10 - 1));
            }
            sb2.append(IOUtils.LINE_SEPARATOR_UNIX);
            addIndent(sb2, i9);
            sb2.append("]");
        }
        return sb2.toString();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.constraintlayout.core.parser.CLElement
    public String toJSON() {
        StringBuilder sb2 = new StringBuilder(getDebugName() + "[");
        boolean z10 = true;
        for (int i9 = 0; i9 < this.mElements.size(); i9++) {
            if (z10) {
                z10 = false;
            } else {
                sb2.append(", ");
            }
            sb2.append(this.mElements.get(i9).toJSON());
        }
        return ((Object) sb2) + "]";
    }
}
