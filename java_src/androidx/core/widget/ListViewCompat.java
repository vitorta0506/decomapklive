package androidx.core.widget;

import android.widget.ListView;
import androidx.annotation.NonNull;
/* loaded from: classes.dex */
public final class ListViewCompat {
    private ListViewCompat() {
    }

    public static boolean canScrollList(@NonNull ListView listView, int i9) {
        return listView.canScrollList(i9);
    }

    public static void scrollListBy(@NonNull ListView listView, int i9) {
        listView.scrollListBy(i9);
    }
}
