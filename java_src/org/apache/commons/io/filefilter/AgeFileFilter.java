package org.apache.commons.io.filefilter;

import java.io.File;
import java.io.Serializable;
import java.util.Date;
/* loaded from: classes7.dex */
public class AgeFileFilter extends a implements Serializable {
    private static final long serialVersionUID = -2132740084016138541L;
    private final boolean acceptOlder;
    private final long cutoff;

    public AgeFileFilter(long j10) {
        this(j10, true);
    }

    @Override // org.apache.commons.io.filefilter.a, org.apache.commons.io.filefilter.b, java.io.FileFilter
    public boolean accept(File file) {
        boolean k10 = ni.a.k(file, this.cutoff);
        return this.acceptOlder ? !k10 : k10;
    }

    @Override // org.apache.commons.io.filefilter.a
    public String toString() {
        String str = this.acceptOlder ? "<=" : ">";
        return super.toString() + "(" + str + this.cutoff + ")";
    }

    public AgeFileFilter(long j10, boolean z10) {
        this.acceptOlder = z10;
        this.cutoff = j10;
    }

    public AgeFileFilter(Date date) {
        this(date, true);
    }

    public AgeFileFilter(Date date, boolean z10) {
        this(date.getTime(), z10);
    }

    public AgeFileFilter(File file) {
        this(file, true);
    }

    public AgeFileFilter(File file, boolean z10) {
        this(file.lastModified(), z10);
    }
}
