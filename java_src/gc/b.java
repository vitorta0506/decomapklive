package gc;

import android.net.Uri;
import android.text.TextUtils;
import android.util.Log;
import android.webkit.URLUtil;
import java.net.MalformedURLException;
import java.net.URL;
import org.light.utils.FileUtils;
/* loaded from: classes4.dex */
public class b {
    private static String a(String str) {
        if (!TextUtils.isEmpty(str)) {
            return !URLUtil.isNetworkUrl(str) ? str : b(str);
        }
        fc.b.f("UriUtil", "whiteListUrl is null");
        return null;
    }

    public static String b(String str) {
        if (TextUtils.isEmpty(str)) {
            fc.b.f("UriUtil", "url is null");
            return str;
        }
        try {
            if (!URLUtil.isNetworkUrl(str)) {
                fc.b.d("UriUtil", "url don't starts with http or https");
                return "";
            }
            return new URL(str.replaceAll("[\\\\#]", FileUtils.RES_PREFIX_STORAGE)).getHost();
        } catch (MalformedURLException e10) {
            fc.b.d("UriUtil", "getHostByURI error  MalformedURLException : " + e10.getMessage());
            return "";
        }
    }

    public static boolean c(String str, String[] strArr) {
        if (strArr != null && strArr.length != 0) {
            for (String str2 : strArr) {
                if (d(str, str2)) {
                    return true;
                }
            }
            return false;
        }
        fc.b.d("UriUtil", "whitelist is null");
        return false;
    }

    public static boolean d(String str, String str2) {
        if (!TextUtils.isEmpty(str) && !TextUtils.isEmpty(str2)) {
            if (!str.contains("..") && !str.contains("@")) {
                if (!str2.equals(str)) {
                    if (!str.startsWith(str2 + "?")) {
                        if (!str.startsWith(str2 + "#")) {
                            if (str2.endsWith(FileUtils.RES_PREFIX_STORAGE)) {
                                if (Uri.parse(str).getPathSegments().size() - Uri.parse(str2).getPathSegments().size() != 1) {
                                    return false;
                                }
                                return str.startsWith(str2);
                            }
                            return false;
                        }
                    }
                }
                return true;
            }
            Log.e("UriUtil", "url contains unsafe char");
        }
        return false;
    }

    public static boolean e(String str, String[] strArr) {
        if (strArr != null && strArr.length != 0) {
            for (String str2 : strArr) {
                if (f(str, str2)) {
                    return true;
                }
            }
            return false;
        }
        fc.b.d("UriUtil", "whitelist is null");
        return false;
    }

    public static boolean f(String str, String str2) {
        String b10 = b(str);
        if (!TextUtils.isEmpty(b10) && !TextUtils.isEmpty(str2)) {
            String a10 = a(str2);
            if (TextUtils.isEmpty(a10)) {
                Log.e("UriUtil", "whitelist host is null");
                return false;
            } else if (a10.equals(b10)) {
                return true;
            } else {
                if (b10.endsWith(a10)) {
                    try {
                        String substring = b10.substring(0, b10.length() - a10.length());
                        if (substring.endsWith(".")) {
                            return substring.matches("^[A-Za-z0-9.-]+$");
                        }
                        return false;
                    } catch (IndexOutOfBoundsException e10) {
                        fc.b.d("UriUtil", "IndexOutOfBoundsException" + e10.getMessage());
                    } catch (Exception e11) {
                        fc.b.d("UriUtil", "Exception : " + e11.getMessage());
                        return false;
                    }
                }
                return false;
            }
        }
        fc.b.d("UriUtil", "url or whitelist is null");
        return false;
    }

    public static boolean g(String str, String str2) {
        if (!TextUtils.isEmpty(str) && !TextUtils.isEmpty(str2)) {
            return TextUtils.equals(b(str), a(str2));
        }
        Log.e("UriUtil", "isUrlHostSameWhitelist: url or host is null");
        return false;
    }

    public static boolean h(String str, String[] strArr) {
        if (strArr != null && strArr.length != 0) {
            for (String str2 : strArr) {
                if (g(str, str2)) {
                    return true;
                }
            }
            return false;
        }
        fc.b.d("UriUtil", "whitelist is null");
        return false;
    }
}
