package ki;

import android.content.Context;
import android.content.Intent;
import android.content.pm.ResolveInfo;
import android.os.Build;
import java.util.Collections;
import java.util.List;
import me.leolin.shortcutbadger.ShortcutBadgeException;
/* loaded from: classes7.dex */
public class a {
    public static List<ResolveInfo> a(Context context, Intent intent) {
        List<ResolveInfo> queryBroadcastReceivers = context.getPackageManager().queryBroadcastReceivers(intent, 0);
        return queryBroadcastReceivers != null ? queryBroadcastReceivers : Collections.emptyList();
    }

    public static void b(Context context, Intent intent) throws ShortcutBadgeException {
        boolean z10 = false;
        if (Build.VERSION.SDK_INT >= 26) {
            Intent intent2 = new Intent(intent);
            intent2.setAction("me.leolin.shortcutbadger.BADGE_COUNT_UPDATE");
            try {
                c(context, intent2);
                z10 = true;
            } catch (ShortcutBadgeException unused) {
            }
        }
        if (z10) {
            return;
        }
        c(context, intent);
    }

    public static void c(Context context, Intent intent) throws ShortcutBadgeException {
        List<ResolveInfo> a10 = a(context, intent);
        if (a10.size() != 0) {
            for (ResolveInfo resolveInfo : a10) {
                Intent intent2 = new Intent(intent);
                if (resolveInfo != null) {
                    intent2.setPackage(resolveInfo.resolvePackageName);
                    context.sendBroadcast(intent2);
                }
            }
            return;
        }
        throw new ShortcutBadgeException("unable to resolve intent: " + intent.toString());
    }
}
