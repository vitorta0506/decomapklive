package me.leolin.shortcutbadger.impl;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.os.Build;
import java.util.Arrays;
import java.util.List;
import me.leolin.shortcutbadger.ShortcutBadgeException;
/* loaded from: classes7.dex */
public class DefaultBadger implements ii.a {
    @Override // ii.a
    public List<String> a() {
        return Arrays.asList("fr.neamar.kiss", "com.quaap.launchtime", "com.quaap.launchtime_official");
    }

    @Override // ii.a
    public void b(Context context, ComponentName componentName, int i9) throws ShortcutBadgeException {
        Intent intent = new Intent("android.intent.action.BADGE_COUNT_UPDATE");
        intent.putExtra("badge_count", i9);
        intent.putExtra("badge_count_package_name", componentName.getPackageName());
        intent.putExtra("badge_count_class_name", componentName.getClassName());
        ki.a.b(context, intent);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean c(Context context) {
        return ki.a.a(context, new Intent("android.intent.action.BADGE_COUNT_UPDATE")).size() > 0 || (Build.VERSION.SDK_INT >= 26 && ki.a.a(context, new Intent("me.leolin.shortcutbadger.BADGE_COUNT_UPDATE")).size() > 0);
    }
}
