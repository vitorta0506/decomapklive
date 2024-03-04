package ji;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import java.util.Arrays;
import java.util.List;
import me.leolin.shortcutbadger.ShortcutBadgeException;
/* loaded from: classes7.dex */
public class e implements ii.a {
    @Override // ii.a
    public List<String> a() {
        return Arrays.asList("com.vivo.launcher");
    }

    @Override // ii.a
    public void b(Context context, ComponentName componentName, int i9) throws ShortcutBadgeException {
        Intent intent = new Intent("launcher.action.CHANGE_APPLICATION_NOTIFICATION_NUM");
        intent.putExtra("packageName", context.getPackageName());
        intent.putExtra("className", componentName.getClassName());
        intent.putExtra("notificationNum", i9);
        context.sendBroadcast(intent);
    }
}
