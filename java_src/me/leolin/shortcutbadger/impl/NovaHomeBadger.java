package me.leolin.shortcutbadger.impl;

import android.content.ComponentName;
import android.content.ContentValues;
import android.content.Context;
import android.net.Uri;
import com.tencent.ugc.videoprocessor.watermark.data.AnimatedPasterJsonConfig;
import java.util.Arrays;
import java.util.List;
import me.leolin.shortcutbadger.ShortcutBadgeException;
import org.light.utils.FileUtils;
/* loaded from: classes7.dex */
public class NovaHomeBadger implements ii.a {
    @Override // ii.a
    public List<String> a() {
        return Arrays.asList("com.teslacoilsw.launcher");
    }

    @Override // ii.a
    public void b(Context context, ComponentName componentName, int i9) throws ShortcutBadgeException {
        ContentValues contentValues = new ContentValues();
        contentValues.put("tag", componentName.getPackageName() + FileUtils.RES_PREFIX_STORAGE + componentName.getClassName());
        contentValues.put(AnimatedPasterJsonConfig.CONFIG_COUNT, Integer.valueOf(i9));
        context.getContentResolver().insert(Uri.parse("content://com.teslacoilsw.notifier/unread_count"), contentValues);
    }
}
