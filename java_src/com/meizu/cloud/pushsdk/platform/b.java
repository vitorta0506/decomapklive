package com.meizu.cloud.pushsdk.platform;

import com.huawei.hms.framework.common.ContainerUtils;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.Map;
import java.util.Set;
import java.util.TreeMap;
import kotlin.UByte;
/* loaded from: classes4.dex */
public class b {
    public static String a(String str) {
        try {
            byte[] digest = MessageDigest.getInstance("MD5").digest(str.getBytes());
            StringBuilder sb2 = new StringBuilder();
            for (byte b10 : digest) {
                int i9 = b10 & UByte.MAX_VALUE;
                if (i9 < 16) {
                    sb2.append(0);
                }
                sb2.append(Integer.toHexString(i9));
            }
            return sb2.toString();
        } catch (NoSuchAlgorithmException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    public static String a(Map<String, String> map, String str) {
        Set<Map.Entry> entrySet = new TreeMap(map).entrySet();
        StringBuilder sb2 = new StringBuilder();
        for (Map.Entry entry : entrySet) {
            sb2.append((String) entry.getKey());
            sb2.append(ContainerUtils.KEY_VALUE_DELIMITER);
            sb2.append((String) entry.getValue());
        }
        sb2.append(str);
        return a(sb2.toString());
    }
}
