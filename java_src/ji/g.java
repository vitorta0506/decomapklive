package ji;

import android.content.ComponentName;
import android.content.Context;
import android.net.Uri;
import android.os.Bundle;
import java.util.Collections;
import java.util.List;
import me.leolin.shortcutbadger.ShortcutBadgeException;
/* loaded from: classes7.dex */
public class g implements ii.a {

    /* renamed from: a  reason: collision with root package name */
    private final Uri f53257a = Uri.parse("content://com.android.badge/badge");

    @Override // ii.a
    public List<String> a() {
        return Collections.singletonList("com.zui.launcher");
    }

    @Override // ii.a
    public void b(Context context, ComponentName componentName, int i9) throws ShortcutBadgeException {
        Bundle bundle = new Bundle();
        bundle.putInt("app_badge_count", i9);
        context.getContentResolver().call(this.f53257a, "setAppBadgeCount", (String) null, bundle);
    }
}
