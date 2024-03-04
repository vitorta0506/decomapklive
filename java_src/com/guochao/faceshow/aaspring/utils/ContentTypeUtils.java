package com.guochao.faceshow.aaspring.utils;

import android.text.TextUtils;
import java.util.HashMap;
/* loaded from: classes3.dex */
public class ContentTypeUtils {
    private static final HashMap<String, String> CONTENT_TYPES;

    static {
        HashMap<String, String> hashMap = new HashMap<>();
        CONTENT_TYPES = hashMap;
        hashMap.put("gif", "image/gif");
        hashMap.put("jpg", "image/jpg");
        hashMap.put("jpeg", "image/jpg");
        hashMap.put("png", "image/png");
        hashMap.put("webp", "image/webp");
        hashMap.put("mp3", "audio/mpeg");
    }

    public static String findContentType(String str) {
        int lastIndexOf;
        if (!TextUtils.isEmpty(str) && (lastIndexOf = str.lastIndexOf(".")) >= 0) {
            String substring = str.substring(lastIndexOf + 1);
            if (TextUtils.isEmpty(substring)) {
                return null;
            }
            return CONTENT_TYPES.get(substring);
        }
        return null;
    }
}
