package com.huawei.hms.utils;

import com.huawei.hms.framework.common.ExceptionCode;
import com.tencent.bugly.BuglyStrategy;
import java.util.regex.Pattern;
/* loaded from: classes4.dex */
public class StringUtil {
    public static String addByteForNum(String str, int i9, char c10) {
        int length = str.length();
        if (length == i9) {
            return str;
        }
        if (length > i9) {
            return str.substring(length - i9);
        }
        StringBuffer stringBuffer = new StringBuffer();
        while (length < i9) {
            stringBuffer.append(c10);
            length++;
        }
        stringBuffer.append(str);
        return stringBuffer.toString();
    }

    public static boolean checkVersion(String str) {
        return Pattern.compile("(^([0-9]{1,2}\\.){2}[0-9]{1,2}$)|(^([0-9]{1,2}\\.){3}[0-9]{1,3}$)").matcher(str).find();
    }

    public static int convertVersion2Integer(String str) {
        if (checkVersion(str)) {
            String[] split = str.split("\\.");
            if (split.length < 3) {
                return 0;
            }
            int parseInt = (Integer.parseInt(split[0]) * ExceptionCode.CRASH_EXCEPTION) + (Integer.parseInt(split[1]) * BuglyStrategy.a.MAX_USERDATA_VALUE_LENGTH) + (Integer.parseInt(split[2]) * 1000);
            return split.length == 4 ? parseInt + Integer.parseInt(split[3]) : parseInt;
        }
        return 0;
    }

    public static String objDesc(Object obj) {
        if (obj == null) {
            return "null";
        }
        return obj.getClass().getName() + '@' + Integer.toHexString(obj.hashCode());
    }
}
