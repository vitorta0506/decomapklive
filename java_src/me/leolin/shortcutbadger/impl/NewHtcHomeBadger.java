package me.leolin.shortcutbadger.impl;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import com.tencent.ugc.videoprocessor.watermark.data.AnimatedPasterJsonConfig;
import java.util.Collections;
import java.util.List;
import me.leolin.shortcutbadger.ShortcutBadgeException;
/* loaded from: classes7.dex */
public class NewHtcHomeBadger implements ii.a {
    @Override // ii.a
    public List<String> a() {
        return Collections.singletonList("com.htc.launcher");
    }

    @Override // ii.a
    public void b(Context context, ComponentName componentName, int i9) throws ShortcutBadgeException {
        boolean z10;
        Intent intent = new Intent("com.htc.launcher.action.SET_NOTIFICATION");
        intent.putExtra("com.htc.launcher.extra.COMPONENT", componentName.flattenToShortString());
        intent.putExtra("com.htc.launcher.extra.COUNT", i9);
        Intent intent2 = new Intent("com.htc.launcher.action.UPDATE_SHORTCUT");
        intent2.putExtra("packagename", componentName.getPackageName());
        intent2.putExtra(AnimatedPasterJsonConfig.CONFIG_COUNT, i9);
        boolean z11 = false;
        try {
            ki.a.c(context, intent);
            z10 = true;
        } catch (ShortcutBadgeException unused) {
            z10 = false;
        }
        try {
            ki.a.c(context, intent2);
            z11 = true;
        } catch (ShortcutBadgeException unused2) {
        }
        if (z10 || z11) {
            return;
        }
        throw new ShortcutBadgeException("unable to resolve intent: " + intent2.toString());
    }
}
