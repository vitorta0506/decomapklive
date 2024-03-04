package com.meizu.cloud.pushsdk.c.c;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Set;
import java.util.TreeSet;
import org.light.utils.IOUtils;
/* loaded from: classes4.dex */
public final class c {

    /* renamed from: a  reason: collision with root package name */
    private final String[] f28373a;

    /* loaded from: classes4.dex */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        private final List<String> f28374a = new ArrayList(20);

        private void c(String str, String str2) {
            if (str == null) {
                throw new IllegalArgumentException("name == null");
            }
            if (str.isEmpty()) {
                throw new IllegalArgumentException("name is empty");
            }
            int length = str.length();
            for (int i9 = 0; i9 < length; i9++) {
                char charAt = str.charAt(i9);
                if (charAt <= 31 || charAt >= 127) {
                    throw new IllegalArgumentException(String.format("Unexpected char %#04x at %d in header name: %s", Integer.valueOf(charAt), Integer.valueOf(i9), str));
                }
            }
            if (str2 == null) {
                throw new IllegalArgumentException("value == null");
            }
            int length2 = str2.length();
            for (int i10 = 0; i10 < length2; i10++) {
                char charAt2 = str2.charAt(i10);
                if (charAt2 <= 31 || charAt2 >= 127) {
                    throw new IllegalArgumentException(String.format("Unexpected char %#04x at %d in %s value: %s", Integer.valueOf(charAt2), Integer.valueOf(i10), str, str2));
                }
            }
        }

        public a a(String str, String str2) {
            c(str, str2);
            return b(str, str2);
        }

        public c a() {
            return new c(this);
        }

        a b(String str, String str2) {
            this.f28374a.add(str);
            this.f28374a.add(str2.trim());
            return this;
        }
    }

    private c(a aVar) {
        this.f28373a = (String[]) aVar.f28374a.toArray(new String[aVar.f28374a.size()]);
    }

    private c(String[] strArr) {
        this.f28373a = strArr;
    }

    public static c a(String... strArr) {
        if (strArr == null || strArr.length % 2 != 0) {
            throw new IllegalArgumentException("Expected alternating header names and values");
        }
        String[] strArr2 = (String[]) strArr.clone();
        for (int i9 = 0; i9 < strArr2.length; i9++) {
            if (strArr2[i9] == null) {
                throw new IllegalArgumentException("Headers cannot be null");
            }
            strArr2[i9] = strArr2[i9].trim();
        }
        for (int i10 = 0; i10 < strArr2.length; i10 += 2) {
            String str = strArr2[i10];
            String str2 = strArr2[i10 + 1];
            if (str.length() == 0 || str.indexOf(0) != -1 || str2.indexOf(0) != -1) {
                throw new IllegalArgumentException("Unexpected header: " + str + ": " + str2);
            }
        }
        return new c(strArr2);
    }

    private static String a(String[] strArr, String str) {
        for (int length = strArr.length - 2; length >= 0; length -= 2) {
            if (str.equalsIgnoreCase(strArr[length])) {
                return strArr[length + 1];
            }
        }
        return null;
    }

    public int a() {
        return this.f28373a.length / 2;
    }

    public String a(int i9) {
        return this.f28373a[i9 * 2];
    }

    public String a(String str) {
        return a(this.f28373a, str);
    }

    public String b(int i9) {
        return this.f28373a[(i9 * 2) + 1];
    }

    public Set<String> b() {
        TreeSet treeSet = new TreeSet(String.CASE_INSENSITIVE_ORDER);
        int a10 = a();
        for (int i9 = 0; i9 < a10; i9++) {
            treeSet.add(a(i9));
        }
        return Collections.unmodifiableSet(treeSet);
    }

    public a c() {
        a aVar = new a();
        Collections.addAll(aVar.f28374a, this.f28373a);
        return aVar;
    }

    public String toString() {
        StringBuilder sb2 = new StringBuilder();
        int a10 = a();
        for (int i9 = 0; i9 < a10; i9++) {
            sb2.append(a(i9));
            sb2.append(": ");
            sb2.append(b(i9));
            sb2.append(IOUtils.LINE_SEPARATOR_UNIX);
        }
        return sb2.toString();
    }
}