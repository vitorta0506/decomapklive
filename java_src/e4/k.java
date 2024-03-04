package e4;

import android.text.TextUtils;
import androidx.annotation.Nullable;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
/* loaded from: classes2.dex */
public final class k {

    /* renamed from: a  reason: collision with root package name */
    private static final Pattern f38443a = Pattern.compile("\\\\.");

    /* renamed from: b  reason: collision with root package name */
    private static final Pattern f38444b = Pattern.compile("[\\\\\"/\b\f\n\r\t]");

    @Nullable
    public static String a(@Nullable String str) {
        if (TextUtils.isEmpty(str)) {
            return str;
        }
        Matcher matcher = f38444b.matcher(str);
        StringBuffer stringBuffer = null;
        while (matcher.find()) {
            if (stringBuffer == null) {
                stringBuffer = new StringBuffer();
            }
            char charAt = matcher.group().charAt(0);
            if (charAt == '\f') {
                matcher.appendReplacement(stringBuffer, "\\\\f");
            } else if (charAt == '\r') {
                matcher.appendReplacement(stringBuffer, "\\\\r");
            } else if (charAt == '\"') {
                matcher.appendReplacement(stringBuffer, "\\\\\\\"");
            } else if (charAt == '/') {
                matcher.appendReplacement(stringBuffer, "\\\\/");
            } else if (charAt != '\\') {
                switch (charAt) {
                    case '\b':
                        matcher.appendReplacement(stringBuffer, "\\\\b");
                        continue;
                    case '\t':
                        matcher.appendReplacement(stringBuffer, "\\\\t");
                        continue;
                    case '\n':
                        matcher.appendReplacement(stringBuffer, "\\\\n");
                        continue;
                }
            } else {
                matcher.appendReplacement(stringBuffer, "\\\\\\\\");
            }
        }
        if (stringBuffer == null) {
            return str;
        }
        matcher.appendTail(stringBuffer);
        return stringBuffer.toString();
    }
}
