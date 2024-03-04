package org.apache.commons.io.filefilter;

import java.io.File;
import java.io.Serializable;
/* loaded from: classes7.dex */
public class SizeFileFilter extends a implements Serializable {
    private static final long serialVersionUID = 7388077430788600069L;
    private final boolean acceptLarger;
    private final long size;

    public SizeFileFilter(long j10) {
        this(j10, true);
    }

    @Override // org.apache.commons.io.filefilter.a, org.apache.commons.io.filefilter.b, java.io.FileFilter
    public boolean accept(File file) {
        boolean z10 = file.length() < this.size;
        return this.acceptLarger ? !z10 : z10;
    }

    @Override // org.apache.commons.io.filefilter.a
    public String toString() {
        String str = this.acceptLarger ? ">=" : "<";
        return super.toString() + "(" + str + this.size + ")";
    }

    public SizeFileFilter(long j10, boolean z10) {
        if (j10 >= 0) {
            this.size = j10;
            this.acceptLarger = z10;
            return;
        }
        throw new IllegalArgumentException("The size must be non-negative");
    }
}
