package b3;

import android.text.Spannable;
/* loaded from: classes.dex */
public final class d {
    public static void a(Spannable spannable, Object obj, int i9, int i10, int i11) {
        Object[] spans;
        for (Object obj2 : spannable.getSpans(i9, i10, obj.getClass())) {
            if (spannable.getSpanStart(obj2) == i9 && spannable.getSpanEnd(obj2) == i10 && spannable.getSpanFlags(obj2) == i11) {
                spannable.removeSpan(obj2);
            }
        }
        spannable.setSpan(obj, i9, i10, i11);
    }
}
