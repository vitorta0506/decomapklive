package ji;

import android.content.ComponentName;
import android.content.Context;
import android.net.Uri;
import android.os.Bundle;
import java.util.ArrayList;
import java.util.List;
import me.leolin.shortcutbadger.ShortcutBadgeException;
/* loaded from: classes7.dex */
public class f implements ii.a {
    @Override // ii.a
    public List<String> a() {
        return new ArrayList(0);
    }

    @Override // ii.a
    public void b(Context context, ComponentName componentName, int i9) throws ShortcutBadgeException {
        Bundle bundle = new Bundle();
        bundle.putInt("app_badge_count", i9);
        bundle.putString("app_badge_component_name", componentName.flattenToString());
        context.getContentResolver().call(Uri.parse("content://com.android.launcher3.cornermark.unreadbadge"), "setAppUnreadCount", (String) null, bundle);
    }
}
