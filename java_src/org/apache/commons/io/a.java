package org.apache.commons.io;

import androidx.webkit.ProxyConfig;
import io.jsonwebtoken.JwtParser;
import java.io.File;
import java.util.ArrayList;
import java.util.Stack;
import org.light.utils.IOUtils;
/* loaded from: classes7.dex */
public class a {

    /* renamed from: a  reason: collision with root package name */
    public static final String f55846a = Character.toString(JwtParser.SEPARATOR_CHAR);

    /* renamed from: b  reason: collision with root package name */
    private static final char f55847b = File.separatorChar;

    /* renamed from: c  reason: collision with root package name */
    private static final char f55848c;

    static {
        if (d()) {
            f55848c = IOUtils.DIR_SEPARATOR_UNIX;
        } else {
            f55848c = IOUtils.DIR_SEPARATOR_WINDOWS;
        }
    }

    public static String a(String str) {
        if (str == null) {
            return null;
        }
        int b10 = b(str);
        return b10 == -1 ? "" : str.substring(b10 + 1);
    }

    public static int b(String str) {
        int lastIndexOf;
        if (str != null && c(str) <= (lastIndexOf = str.lastIndexOf(46))) {
            return lastIndexOf;
        }
        return -1;
    }

    public static int c(String str) {
        if (str == null) {
            return -1;
        }
        return Math.max(str.lastIndexOf(47), str.lastIndexOf(92));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean d() {
        return f55847b == '\\';
    }

    static String[] e(String str) {
        if (str.indexOf(63) == -1 && str.indexOf(42) == -1) {
            return new String[]{str};
        }
        char[] charArray = str.toCharArray();
        ArrayList arrayList = new ArrayList();
        StringBuilder sb2 = new StringBuilder();
        int length = charArray.length;
        int i9 = 0;
        char c10 = 0;
        while (i9 < length) {
            char c11 = charArray[i9];
            if (c11 != '?' && c11 != '*') {
                sb2.append(c11);
            } else {
                if (sb2.length() != 0) {
                    arrayList.add(sb2.toString());
                    sb2.setLength(0);
                }
                if (c11 == '?') {
                    arrayList.add("?");
                } else if (c10 != '*') {
                    arrayList.add(ProxyConfig.MATCH_ALL_SCHEMES);
                }
            }
            i9++;
            c10 = c11;
        }
        if (sb2.length() != 0) {
            arrayList.add(sb2.toString());
        }
        return (String[]) arrayList.toArray(new String[arrayList.size()]);
    }

    public static boolean f(String str, String str2) {
        return g(str, str2, IOCase.SENSITIVE);
    }

    public static boolean g(String str, String str2, IOCase iOCase) {
        if (str == null && str2 == null) {
            return true;
        }
        if (str == null || str2 == null) {
            return false;
        }
        if (iOCase == null) {
            iOCase = IOCase.SENSITIVE;
        }
        String[] e10 = e(str2);
        Stack stack = new Stack();
        boolean z10 = false;
        int i9 = 0;
        int i10 = 0;
        do {
            if (stack.size() > 0) {
                int[] iArr = (int[]) stack.pop();
                i10 = iArr[0];
                i9 = iArr[1];
                z10 = true;
            }
            while (i10 < e10.length) {
                if (e10[i10].equals("?")) {
                    i9++;
                    if (i9 > str.length()) {
                        break;
                    }
                    z10 = false;
                    i10++;
                } else if (e10[i10].equals(ProxyConfig.MATCH_ALL_SCHEMES)) {
                    if (i10 == e10.length - 1) {
                        i9 = str.length();
                    }
                    z10 = true;
                    i10++;
                } else {
                    if (z10) {
                        i9 = iOCase.checkIndexOf(str, i9, e10[i10]);
                        if (i9 == -1) {
                            break;
                        }
                        int checkIndexOf = iOCase.checkIndexOf(str, i9 + 1, e10[i10]);
                        if (checkIndexOf >= 0) {
                            stack.push(new int[]{i10, checkIndexOf});
                        }
                        i9 += e10[i10].length();
                        z10 = false;
                    } else {
                        if (!iOCase.checkRegionMatches(str, i9, e10[i10])) {
                            break;
                        }
                        i9 += e10[i10].length();
                        z10 = false;
                    }
                    i10++;
                }
            }
            if (i10 == e10.length && i9 == str.length()) {
                return true;
            }
        } while (stack.size() > 0);
        return false;
    }
}
