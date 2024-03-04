package org.apache.commons.io.filefilter;

import java.io.File;
import java.io.Serializable;
import java.util.List;
@Deprecated
/* loaded from: classes7.dex */
public class WildcardFilter extends a implements Serializable {
    private static final long serialVersionUID = -5037645902506953517L;
    private final String[] wildcards;

    public WildcardFilter(String str) {
        if (str != null) {
            this.wildcards = new String[]{str};
            return;
        }
        throw new IllegalArgumentException("The wildcard must not be null");
    }

    @Override // org.apache.commons.io.filefilter.a, org.apache.commons.io.filefilter.b, java.io.FilenameFilter
    public boolean accept(File file, String str) {
        if (file == null || !new File(file, str).isDirectory()) {
            for (String str2 : this.wildcards) {
                if (org.apache.commons.io.a.f(str, str2)) {
                    return true;
                }
            }
            return false;
        }
        return false;
    }

    public WildcardFilter(String[] strArr) {
        if (strArr != null) {
            String[] strArr2 = new String[strArr.length];
            this.wildcards = strArr2;
            System.arraycopy(strArr, 0, strArr2, 0, strArr.length);
            return;
        }
        throw new IllegalArgumentException("The wildcard array must not be null");
    }

    @Override // org.apache.commons.io.filefilter.a, org.apache.commons.io.filefilter.b, java.io.FileFilter
    public boolean accept(File file) {
        if (file.isDirectory()) {
            return false;
        }
        for (String str : this.wildcards) {
            if (org.apache.commons.io.a.f(file.getName(), str)) {
                return true;
            }
        }
        return false;
    }

    public WildcardFilter(List<String> list) {
        if (list != null) {
            this.wildcards = (String[]) list.toArray(new String[list.size()]);
            return;
        }
        throw new IllegalArgumentException("The wildcard list must not be null");
    }
}
