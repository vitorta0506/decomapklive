package ji;

import android.content.ComponentName;
import android.content.ContentValues;
import android.content.Context;
import android.net.Uri;
import com.meizu.cloud.pushsdk.constants.PushConstants;
import com.tencent.ugc.videoprocessor.watermark.data.AnimatedPasterJsonConfig;
import java.util.Arrays;
import java.util.List;
import me.leolin.shortcutbadger.ShortcutBadgeException;
/* loaded from: classes7.dex */
public class b implements ii.a {
    @Override // ii.a
    public List<String> a() {
        return Arrays.asList("me.everything.launcher");
    }

    @Override // ii.a
    public void b(Context context, ComponentName componentName, int i9) throws ShortcutBadgeException {
        ContentValues contentValues = new ContentValues();
        contentValues.put(PushConstants.PACKAGE_NAME, componentName.getPackageName());
        contentValues.put("activity_name", componentName.getClassName());
        contentValues.put(AnimatedPasterJsonConfig.CONFIG_COUNT, Integer.valueOf(i9));
        context.getContentResolver().insert(Uri.parse("content://me.everything.badger/apps"), contentValues);
    }
}
