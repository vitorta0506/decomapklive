package androidx.constraintlayout.core.parser;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import java.util.ArrayList;
/* loaded from: classes.dex */
public class CLKey extends CLContainer {
    private static ArrayList<String> sections;

    static {
        ArrayList<String> arrayList = new ArrayList<>();
        sections = arrayList;
        arrayList.add("ConstraintSets");
        sections.add("Variables");
        sections.add("Generate");
        sections.add(TypedValues.TransitionType.NAME);
        sections.add("KeyFrames");
        sections.add(TypedValues.AttributesType.NAME);
        sections.add("KeyPositions");
        sections.add("KeyCycles");
    }

    public CLKey(char[] cArr) {
        super(cArr);
    }

    public static CLElement allocate(char[] cArr) {
        return new CLKey(cArr);
    }

    public String getName() {
        return content();
    }

    public CLElement getValue() {
        if (this.mElements.size() > 0) {
            return this.mElements.get(0);
        }
        return null;
    }

    public void set(CLElement cLElement) {
        if (this.mElements.size() > 0) {
            this.mElements.set(0, cLElement);
        } else {
            this.mElements.add(cLElement);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.constraintlayout.core.parser.CLElement
    public String toFormattedJSON(int i9, int i10) {
        StringBuilder sb2 = new StringBuilder(getDebugName());
        addIndent(sb2, i9);
        String content = content();
        if (this.mElements.size() > 0) {
            sb2.append(content);
            sb2.append(": ");
            if (sections.contains(content)) {
                i10 = 3;
            }
            if (i10 > 0) {
                sb2.append(this.mElements.get(0).toFormattedJSON(i9, i10 - 1));
            } else {
                String json = this.mElements.get(0).toJSON();
                if (json.length() + i9 < CLElement.MAX_LINE) {
                    sb2.append(json);
                } else {
                    sb2.append(this.mElements.get(0).toFormattedJSON(i9, i10 - 1));
                }
            }
            return sb2.toString();
        }
        return content + ": <> ";
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.constraintlayout.core.parser.CLElement
    public String toJSON() {
        if (this.mElements.size() > 0) {
            return getDebugName() + content() + ": " + this.mElements.get(0).toJSON();
        }
        return getDebugName() + content() + ": <> ";
    }

    public static CLElement allocate(String str, CLElement cLElement) {
        CLKey cLKey = new CLKey(str.toCharArray());
        cLKey.setStart(0L);
        cLKey.setEnd(str.length() - 1);
        cLKey.set(cLElement);
        return cLKey;
    }
}
