package q;

import android.net.Uri;
import android.text.TextUtils;
import java.util.Collections;
import java.util.LinkedHashMap;
import java.util.Map;
import org.light.utils.IOUtils;
/* loaded from: classes.dex */
public class e {
    public static String a(StackTraceElement[] stackTraceElementArr) {
        StringBuilder sb2 = new StringBuilder();
        for (StackTraceElement stackTraceElement : stackTraceElementArr) {
            sb2.append("    at ");
            sb2.append(stackTraceElement.toString());
            sb2.append(IOUtils.LINE_SEPARATOR_UNIX);
        }
        return sb2.toString();
    }

    public static boolean b(CharSequence charSequence) {
        return charSequence == null || charSequence.length() == 0;
    }

    public static Map<String, String> c(Uri uri) {
        String encodedQuery = uri.getEncodedQuery();
        if (encodedQuery == null) {
            return Collections.emptyMap();
        }
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        int i9 = 0;
        do {
            int indexOf = encodedQuery.indexOf(38, i9);
            if (indexOf == -1) {
                indexOf = encodedQuery.length();
            }
            int indexOf2 = encodedQuery.indexOf(61, i9);
            if (indexOf2 > indexOf || indexOf2 == -1) {
                indexOf2 = indexOf;
            }
            String substring = encodedQuery.substring(i9, indexOf2);
            if (!TextUtils.isEmpty(substring)) {
                linkedHashMap.put(Uri.decode(substring), Uri.decode(indexOf2 == indexOf ? "" : encodedQuery.substring(indexOf2 + 1, indexOf)));
            }
            i9 = indexOf + 1;
        } while (i9 < encodedQuery.length());
        return Collections.unmodifiableMap(linkedHashMap);
    }
}
