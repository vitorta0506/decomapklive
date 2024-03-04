package org.apache.commons.io.filefilter;

import java.io.File;
import java.io.Serializable;
/* loaded from: classes7.dex */
public class DirectoryFileFilter extends a implements Serializable {
    public static final b DIRECTORY;
    public static final b INSTANCE;
    private static final long serialVersionUID = -5148237843784525732L;

    static {
        DirectoryFileFilter directoryFileFilter = new DirectoryFileFilter();
        DIRECTORY = directoryFileFilter;
        INSTANCE = directoryFileFilter;
    }

    protected DirectoryFileFilter() {
    }

    @Override // org.apache.commons.io.filefilter.a, org.apache.commons.io.filefilter.b, java.io.FileFilter
    public boolean accept(File file) {
        return file.isDirectory();
    }
}
