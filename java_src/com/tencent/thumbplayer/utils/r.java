package com.tencent.thumbplayer.utils;

import androidx.annotation.Nullable;
import java.io.File;
import java.util.HashMap;
import java.util.Map;
import org.light.utils.FileUtils;
/* loaded from: classes4.dex */
public class r {

    /* renamed from: a  reason: collision with root package name */
    private static Map<String, Integer> f34502a;

    static {
        HashMap hashMap = new HashMap();
        f34502a = hashMap;
        hashMap.put("http://", 0);
        f34502a.put("https://", 1);
        f34502a.put("rtmp://", 2);
        f34502a.put("webrtc://", 3);
        f34502a.put("file://", 4);
        f34502a.put(FileUtils.RES_PREFIX_STORAGE, 4);
    }

    public static int a(@Nullable String str) {
        if (str == null) {
            return -1;
        }
        String lowerCase = str.toLowerCase();
        for (Map.Entry<String, Integer> entry : f34502a.entrySet()) {
            if (lowerCase.startsWith(entry.getKey())) {
                return entry.getValue().intValue();
            }
        }
        return new File(str).exists() ? 4 : -1;
    }
}
