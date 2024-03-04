package org.apache.commons.io.comparator;

import java.io.File;
import java.io.Serializable;
import java.util.Comparator;
import java.util.List;
/* loaded from: classes7.dex */
public class SizeFileComparator extends a implements Serializable {
    public static final Comparator<File> SIZE_COMPARATOR;
    public static final Comparator<File> SIZE_REVERSE;
    public static final Comparator<File> SIZE_SUMDIR_COMPARATOR;
    public static final Comparator<File> SIZE_SUMDIR_REVERSE;
    private static final long serialVersionUID = -1201561106411416190L;
    private final boolean sumDirectoryContents;

    static {
        SizeFileComparator sizeFileComparator = new SizeFileComparator();
        SIZE_COMPARATOR = sizeFileComparator;
        SIZE_REVERSE = new b(sizeFileComparator);
        SizeFileComparator sizeFileComparator2 = new SizeFileComparator(true);
        SIZE_SUMDIR_COMPARATOR = sizeFileComparator2;
        SIZE_SUMDIR_REVERSE = new b(sizeFileComparator2);
    }

    public SizeFileComparator() {
        this.sumDirectoryContents = false;
    }

    @Override // org.apache.commons.io.comparator.a
    public /* bridge */ /* synthetic */ List sort(List list) {
        return super.sort(list);
    }

    @Override // org.apache.commons.io.comparator.a
    public String toString() {
        return super.toString() + "[sumDirectoryContents=" + this.sumDirectoryContents + "]";
    }

    @Override // java.util.Comparator
    public int compare(File file, File file2) {
        long length;
        long length2;
        if (file.isDirectory()) {
            length = (this.sumDirectoryContents && file.exists()) ? ni.a.p(file) : 0L;
        } else {
            length = file.length();
        }
        if (file2.isDirectory()) {
            length2 = (this.sumDirectoryContents && file2.exists()) ? ni.a.p(file2) : 0L;
        } else {
            length2 = file2.length();
        }
        int i9 = ((length - length2) > 0L ? 1 : ((length - length2) == 0L ? 0 : -1));
        if (i9 < 0) {
            return -1;
        }
        return i9 > 0 ? 1 : 0;
    }

    @Override // org.apache.commons.io.comparator.a
    public /* bridge */ /* synthetic */ File[] sort(File[] fileArr) {
        return super.sort(fileArr);
    }

    public SizeFileComparator(boolean z10) {
        this.sumDirectoryContents = z10;
    }
}
