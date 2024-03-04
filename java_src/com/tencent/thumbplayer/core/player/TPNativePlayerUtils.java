package com.tencent.thumbplayer.core.player;

import android.view.Surface;
import com.tencent.thumbplayer.core.common.TPMethodCalledByNative;
import java.util.Map;
/* loaded from: classes4.dex */
public class TPNativePlayerUtils {
    @TPMethodCalledByNative
    static boolean isTPNativePlayerSurface(Surface surface) {
        return surface instanceof TPNativePlayerSurface;
    }

    public static String[] tpMapStringToStringArray(Map<String, String> map) {
        int i9 = 0;
        if (map == null || map.isEmpty()) {
            return new String[0];
        }
        String[] strArr = new String[map.size() * 2];
        for (String str : map.keySet()) {
            int i10 = i9 * 2;
            strArr[i10] = str;
            strArr[i10 + 1] = map.get(str);
            i9++;
        }
        return strArr;
    }
}
