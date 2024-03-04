package me.leolin.shortcutbadger.impl;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import com.tencent.ugc.videoprocessor.watermark.data.AnimatedPasterJsonConfig;
import java.util.Arrays;
import java.util.List;
import me.leolin.shortcutbadger.ShortcutBadgeException;
/* loaded from: classes7.dex */
public class ApexHomeBadger implements ii.a {
    @Override // ii.a
    public List<String> a() {
        return Arrays.asList("com.anddoes.launcher");
    }

    @Override // ii.a
    public void b(Context context, ComponentName componentName, int i9) throws ShortcutBadgeException {
        Intent intent = new Intent("com.anddoes.launcher.COUNTER_CHANGED");
        intent.putExtra("package", componentName.getPackageName());
        intent.putExtra(AnimatedPasterJsonConfig.CONFIG_COUNT, i9);
        intent.putExtra("class", componentName.getClassName());
        ki.a.c(context, intent);
    }
}
