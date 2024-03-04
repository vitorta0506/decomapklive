package ji;

import android.content.ComponentName;
import android.content.Context;
import android.net.Uri;
import android.os.Bundle;
import java.util.Collections;
import java.util.List;
import me.leolin.shortcutbadger.ShortcutBadgeException;
/* loaded from: classes7.dex */
public class d implements ii.a {

    /* renamed from: a  reason: collision with root package name */
    private int f53256a = -1;

    private void c(Context context, int i9) throws ShortcutBadgeException {
        Bundle bundle = new Bundle();
        bundle.putInt("app_badge_count", i9);
        context.getContentResolver().call(Uri.parse("content://com.android.badge/badge"), "setAppBadgeCount", (String) null, bundle);
    }

    @Override // ii.a
    public List<String> a() {
        return Collections.singletonList("com.oppo.launcher");
    }

    @Override // ii.a
    public void b(Context context, ComponentName componentName, int i9) throws ShortcutBadgeException {
        if (this.f53256a == i9) {
            return;
        }
        this.f53256a = i9;
        c(context, i9);
    }
}
