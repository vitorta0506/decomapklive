package com.tencent.liteav.base.util;

import com.tencent.liteav.base.Log;
import com.tencent.liteav.base.annotations.CalledByNative;
import java.text.SimpleDateFormat;
import java.util.Date;
/* loaded from: classes4.dex */
public class TimeFormat {
    @CalledByNative
    public static String format(long j10, String str) {
        try {
            return new SimpleDateFormat(str).format(new Date(j10));
        } catch (Exception e10) {
            Log.i("TimeFormat", "toString: Date conversion failed.", e10);
            return "";
        }
    }

    @CalledByNative
    public static long fromString(String str, String str2) {
        try {
            Date parse = new SimpleDateFormat(str2).parse(str);
            if (parse == null) {
                return 0L;
            }
            return parse.getTime();
        } catch (Exception e10) {
            Log.i("TimeFormat", "formString: Date conversion failed.", e10);
            return 0L;
        }
    }
}
