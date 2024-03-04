package androidx.core.view;

import android.os.Build;
import android.view.Menu;
import android.view.MenuItem;
import androidx.core.internal.view.SupportMenu;
/* loaded from: classes.dex */
public final class MenuCompat {
    private MenuCompat() {
    }

    public static void setGroupDividerEnabled(Menu menu, boolean z10) {
        if (menu instanceof SupportMenu) {
            ((SupportMenu) menu).setGroupDividerEnabled(z10);
        } else if (Build.VERSION.SDK_INT >= 28) {
            menu.setGroupDividerEnabled(z10);
        }
    }

    @Deprecated
    public static void setShowAsAction(MenuItem menuItem, int i9) {
        menuItem.setShowAsAction(i9);
    }
}
