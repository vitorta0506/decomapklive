package org.apache.commons.io.comparator;

import java.io.File;
import java.io.Serializable;
import java.util.Comparator;
import java.util.List;
/* loaded from: classes7.dex */
public class LastModifiedFileComparator extends a implements Serializable {
    public static final Comparator<File> LASTMODIFIED_COMPARATOR;
    public static final Comparator<File> LASTMODIFIED_REVERSE;
    private static final long serialVersionUID = 7372168004395734046L;

    static {
        LastModifiedFileComparator lastModifiedFileComparator = new LastModifiedFileComparator();
        LASTMODIFIED_COMPARATOR = lastModifiedFileComparator;
        LASTMODIFIED_REVERSE = new b(lastModifiedFileComparator);
    }

    @Override // org.apache.commons.io.comparator.a
    public /* bridge */ /* synthetic */ List sort(List list) {
        return super.sort(list);
    }

    @Override // org.apache.commons.io.comparator.a
    public /* bridge */ /* synthetic */ String toString() {
        return super.toString();
    }

    @Override // java.util.Comparator
    public int compare(File file, File file2) {
        int i9 = ((file.lastModified() - file2.lastModified()) > 0L ? 1 : ((file.lastModified() - file2.lastModified()) == 0L ? 0 : -1));
        if (i9 < 0) {
            return -1;
        }
        return i9 > 0 ? 1 : 0;
    }

    @Override // org.apache.commons.io.comparator.a
    public /* bridge */ /* synthetic */ File[] sort(File[] fileArr) {
        return super.sort(fileArr);
    }
}
