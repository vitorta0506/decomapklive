package org.apache.commons.io.comparator;

import java.io.File;
import java.io.Serializable;
import java.util.Comparator;
/* loaded from: classes7.dex */
class b extends a implements Serializable {
    private static final long serialVersionUID = -4808255005272229056L;

    /* renamed from: a  reason: collision with root package name */
    private final Comparator<File> f55849a;

    public b(Comparator<File> comparator) {
        if (comparator != null) {
            this.f55849a = comparator;
            return;
        }
        throw new IllegalArgumentException("Delegate comparator is missing");
    }

    @Override // org.apache.commons.io.comparator.a
    public String toString() {
        return super.toString() + "[" + this.f55849a.toString() + "]";
    }

    @Override // java.util.Comparator
    public int compare(File file, File file2) {
        return this.f55849a.compare(file2, file);
    }
}
