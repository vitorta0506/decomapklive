package org.apache.commons.io.filefilter;

import java.io.File;
import java.io.Serializable;
import java.util.List;
import org.apache.commons.io.IOCase;
/* loaded from: classes7.dex */
public class SuffixFileFilter extends a implements Serializable {
    private static final long serialVersionUID = -3389157631240246157L;
    private final IOCase caseSensitivity;
    private final String[] suffixes;

    public SuffixFileFilter(String str) {
        this(str, IOCase.SENSITIVE);
    }

    @Override // org.apache.commons.io.filefilter.a, org.apache.commons.io.filefilter.b, java.io.FileFilter
    public boolean accept(File file) {
        String name = file.getName();
        for (String str : this.suffixes) {
            if (this.caseSensitivity.checkEndsWith(name, str)) {
                return true;
            }
        }
        return false;
    }

    @Override // org.apache.commons.io.filefilter.a
    public String toString() {
        StringBuilder sb2 = new StringBuilder();
        sb2.append(super.toString());
        sb2.append("(");
        if (this.suffixes != null) {
            for (int i9 = 0; i9 < this.suffixes.length; i9++) {
                if (i9 > 0) {
                    sb2.append(",");
                }
                sb2.append(this.suffixes[i9]);
            }
        }
        sb2.append(")");
        return sb2.toString();
    }

    public SuffixFileFilter(String str, IOCase iOCase) {
        if (str != null) {
            this.suffixes = new String[]{str};
            this.caseSensitivity = iOCase == null ? IOCase.SENSITIVE : iOCase;
            return;
        }
        throw new IllegalArgumentException("The suffix must not be null");
    }

    @Override // org.apache.commons.io.filefilter.a, org.apache.commons.io.filefilter.b, java.io.FilenameFilter
    public boolean accept(File file, String str) {
        for (String str2 : this.suffixes) {
            if (this.caseSensitivity.checkEndsWith(str, str2)) {
                return true;
            }
        }
        return false;
    }

    public SuffixFileFilter(String[] strArr) {
        this(strArr, IOCase.SENSITIVE);
    }

    public SuffixFileFilter(String[] strArr, IOCase iOCase) {
        if (strArr != null) {
            String[] strArr2 = new String[strArr.length];
            this.suffixes = strArr2;
            System.arraycopy(strArr, 0, strArr2, 0, strArr.length);
            this.caseSensitivity = iOCase == null ? IOCase.SENSITIVE : iOCase;
            return;
        }
        throw new IllegalArgumentException("The array of suffixes must not be null");
    }

    public SuffixFileFilter(List<String> list) {
        this(list, IOCase.SENSITIVE);
    }

    public SuffixFileFilter(List<String> list, IOCase iOCase) {
        if (list != null) {
            this.suffixes = (String[]) list.toArray(new String[list.size()]);
            this.caseSensitivity = iOCase == null ? IOCase.SENSITIVE : iOCase;
            return;
        }
        throw new IllegalArgumentException("The list of suffixes must not be null");
    }
}
