package yc;

import android.net.Uri;
import androidx.annotation.NonNull;
import java.util.LinkedHashMap;
import java.util.Map;
/* loaded from: classes4.dex */
public final class f {
    public static Uri.Builder a(@NonNull Uri.Builder builder, @NonNull Map<String, String> map) {
        for (Map.Entry<String, String> entry : map.entrySet()) {
            builder.appendQueryParameter(entry.getKey(), entry.getValue());
        }
        return builder;
    }

    public static Uri b(@NonNull Uri uri, @NonNull Map<String, String> map) {
        return a(f(uri, new String[0]), map).build();
    }

    public static Uri c(@NonNull String str, @NonNull Map<String, String> map) {
        return b(Uri.parse(str), map);
    }

    public static Map<String, String> d(String... strArr) {
        if (strArr.length % 2 == 0) {
            LinkedHashMap linkedHashMap = new LinkedHashMap();
            for (int i9 = 0; i9 < strArr.length; i9 += 2) {
                linkedHashMap.put(strArr[i9], strArr[i9 + 1]);
            }
            return linkedHashMap;
        }
        throw new IllegalArgumentException("Odd number of key and Value");
    }

    public static Uri e(@NonNull Uri uri, @NonNull String... strArr) {
        return f(uri, strArr).build();
    }

    public static Uri.Builder f(@NonNull Uri uri, @NonNull String... strArr) {
        Uri.Builder buildUpon = uri.buildUpon();
        for (String str : strArr) {
            buildUpon.appendEncodedPath(str);
        }
        return buildUpon;
    }
}
