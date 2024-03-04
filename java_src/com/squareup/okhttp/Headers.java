package com.squareup.okhttp;

import com.facebook.internal.security.CertificateUtil;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Date;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.TreeSet;
import org.light.utils.IOUtils;
import qe.f;
/* loaded from: classes4.dex */
public final class Headers {
    private final String[] namesAndValues;

    public static Headers of(String... strArr) {
        if (strArr != null && strArr.length % 2 == 0) {
            String[] strArr2 = (String[]) strArr.clone();
            for (int i9 = 0; i9 < strArr2.length; i9++) {
                if (strArr2[i9] != null) {
                    strArr2[i9] = strArr2[i9].trim();
                } else {
                    throw new IllegalArgumentException("Headers cannot be null");
                }
            }
            for (int i10 = 0; i10 < strArr2.length; i10 += 2) {
                String str = strArr2[i10];
                String str2 = strArr2[i10 + 1];
                if (str.length() == 0 || str.indexOf(0) != -1 || str2.indexOf(0) != -1) {
                    throw new IllegalArgumentException("Unexpected header: " + str + ": " + str2);
                }
            }
            return new Headers(strArr2);
        }
        throw new IllegalArgumentException("Expected alternating header names and values");
    }

    public String get(String str) {
        return get(this.namesAndValues, str);
    }

    public Date getDate(String str) {
        String str2 = get(str);
        if (str2 != null) {
            return f.b(str2);
        }
        return null;
    }

    public String name(int i9) {
        int i10 = i9 * 2;
        if (i10 >= 0) {
            String[] strArr = this.namesAndValues;
            if (i10 >= strArr.length) {
                return null;
            }
            return strArr[i10];
        }
        return null;
    }

    public Set<String> names() {
        TreeSet treeSet = new TreeSet(String.CASE_INSENSITIVE_ORDER);
        int size = size();
        for (int i9 = 0; i9 < size; i9++) {
            treeSet.add(name(i9));
        }
        return Collections.unmodifiableSet(treeSet);
    }

    public Builder newBuilder() {
        Builder builder = new Builder();
        Collections.addAll(builder.namesAndValues, this.namesAndValues);
        return builder;
    }

    public int size() {
        return this.namesAndValues.length / 2;
    }

    public Map<String, List<String>> toMultimap() {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        int size = size();
        for (int i9 = 0; i9 < size; i9++) {
            String name = name(i9);
            List list = (List) linkedHashMap.get(name);
            if (list == null) {
                list = new ArrayList(2);
                linkedHashMap.put(name, list);
            }
            list.add(value(i9));
        }
        return linkedHashMap;
    }

    public String toString() {
        StringBuilder sb2 = new StringBuilder();
        int size = size();
        for (int i9 = 0; i9 < size; i9++) {
            sb2.append(name(i9));
            sb2.append(": ");
            sb2.append(value(i9));
            sb2.append(IOUtils.LINE_SEPARATOR_UNIX);
        }
        return sb2.toString();
    }

    public String value(int i9) {
        int i10 = (i9 * 2) + 1;
        if (i10 >= 0) {
            String[] strArr = this.namesAndValues;
            if (i10 >= strArr.length) {
                return null;
            }
            return strArr[i10];
        }
        return null;
    }

    public List<String> values(String str) {
        int size = size();
        ArrayList arrayList = null;
        for (int i9 = 0; i9 < size; i9++) {
            if (str.equalsIgnoreCase(name(i9))) {
                if (arrayList == null) {
                    arrayList = new ArrayList(2);
                }
                arrayList.add(value(i9));
            }
        }
        return arrayList != null ? Collections.unmodifiableList(arrayList) : Collections.emptyList();
    }

    private Headers(Builder builder) {
        this.namesAndValues = (String[]) builder.namesAndValues.toArray(new String[builder.namesAndValues.size()]);
    }

    private static String get(String[] strArr, String str) {
        for (int length = strArr.length - 2; length >= 0; length -= 2) {
            if (str.equalsIgnoreCase(strArr[length])) {
                return strArr[length + 1];
            }
        }
        return null;
    }

    /* loaded from: classes4.dex */
    public static final class Builder {
        private final List<String> namesAndValues = new ArrayList(20);

        private void checkNameAndValue(String str, String str2) {
            if (str != null) {
                if (!str.isEmpty()) {
                    int length = str.length();
                    for (int i9 = 0; i9 < length; i9++) {
                        char charAt = str.charAt(i9);
                        if (charAt <= 31 || charAt >= 127) {
                            throw new IllegalArgumentException(String.format("Unexpected char %#04x at %d in header name: %s", Integer.valueOf(charAt), Integer.valueOf(i9), str));
                        }
                    }
                    if (str2 != null) {
                        int length2 = str2.length();
                        for (int i10 = 0; i10 < length2; i10++) {
                            char charAt2 = str2.charAt(i10);
                            if (charAt2 <= 31 || charAt2 >= 127) {
                                throw new IllegalArgumentException(String.format("Unexpected char %#04x at %d in header value: %s", Integer.valueOf(charAt2), Integer.valueOf(i10), str2));
                            }
                        }
                        return;
                    }
                    throw new IllegalArgumentException("value == null");
                }
                throw new IllegalArgumentException("name is empty");
            }
            throw new IllegalArgumentException("name == null");
        }

        public Builder add(String str) {
            int indexOf = str.indexOf(CertificateUtil.DELIMITER);
            if (indexOf != -1) {
                return add(str.substring(0, indexOf).trim(), str.substring(indexOf + 1));
            }
            throw new IllegalArgumentException("Unexpected header: " + str);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public Builder addLenient(String str) {
            int indexOf = str.indexOf(CertificateUtil.DELIMITER, 1);
            if (indexOf != -1) {
                return addLenient(str.substring(0, indexOf), str.substring(indexOf + 1));
            }
            if (str.startsWith(CertificateUtil.DELIMITER)) {
                return addLenient("", str.substring(1));
            }
            return addLenient("", str);
        }

        public Headers build() {
            return new Headers(this);
        }

        public String get(String str) {
            for (int size = this.namesAndValues.size() - 2; size >= 0; size -= 2) {
                if (str.equalsIgnoreCase(this.namesAndValues.get(size))) {
                    return this.namesAndValues.get(size + 1);
                }
            }
            return null;
        }

        public Builder removeAll(String str) {
            int i9 = 0;
            while (i9 < this.namesAndValues.size()) {
                if (str.equalsIgnoreCase(this.namesAndValues.get(i9))) {
                    this.namesAndValues.remove(i9);
                    this.namesAndValues.remove(i9);
                    i9 -= 2;
                }
                i9 += 2;
            }
            return this;
        }

        public Builder set(String str, String str2) {
            checkNameAndValue(str, str2);
            removeAll(str);
            addLenient(str, str2);
            return this;
        }

        public Builder add(String str, String str2) {
            checkNameAndValue(str, str2);
            return addLenient(str, str2);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public Builder addLenient(String str, String str2) {
            this.namesAndValues.add(str);
            this.namesAndValues.add(str2.trim());
            return this;
        }
    }

    private Headers(String[] strArr) {
        this.namesAndValues = strArr;
    }

    public static Headers of(Map<String, String> map) {
        if (map != null) {
            String[] strArr = new String[map.size() * 2];
            int i9 = 0;
            for (Map.Entry<String, String> entry : map.entrySet()) {
                if (entry.getKey() != null && entry.getValue() != null) {
                    String trim = entry.getKey().trim();
                    String trim2 = entry.getValue().trim();
                    if (trim.length() != 0 && trim.indexOf(0) == -1 && trim2.indexOf(0) == -1) {
                        strArr[i9] = trim;
                        strArr[i9 + 1] = trim2;
                        i9 += 2;
                    } else {
                        throw new IllegalArgumentException("Unexpected header: " + trim + ": " + trim2);
                    }
                } else {
                    throw new IllegalArgumentException("Headers cannot be null");
                }
            }
            return new Headers(strArr);
        }
        throw new IllegalArgumentException("Expected map with header names and values");
    }
}
