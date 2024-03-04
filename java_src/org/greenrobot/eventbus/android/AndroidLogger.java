package org.greenrobot.eventbus.android;

import android.util.Log;
import java.util.logging.Level;
import org.greenrobot.eventbus.Logger;
import org.light.utils.IOUtils;
/* loaded from: classes7.dex */
public class AndroidLogger implements Logger {
    private final String tag;

    public AndroidLogger(String str) {
        this.tag = str;
    }

    private int mapLevel(Level level) {
        int intValue = level.intValue();
        if (intValue < 800) {
            return intValue < 500 ? 2 : 3;
        } else if (intValue < 900) {
            return 4;
        } else {
            return intValue < 1000 ? 5 : 6;
        }
    }

    @Override // org.greenrobot.eventbus.Logger
    public void log(Level level, String str) {
        if (level != Level.OFF) {
            Log.println(mapLevel(level), this.tag, str);
        }
    }

    @Override // org.greenrobot.eventbus.Logger
    public void log(Level level, String str, Throwable th2) {
        if (level != Level.OFF) {
            int mapLevel = mapLevel(level);
            String str2 = this.tag;
            Log.println(mapLevel, str2, str + IOUtils.LINE_SEPARATOR_UNIX + Log.getStackTraceString(th2));
        }
    }
}
