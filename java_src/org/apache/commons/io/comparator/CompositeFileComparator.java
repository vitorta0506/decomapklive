package org.apache.commons.io.comparator;

import java.io.File;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.List;
/* loaded from: classes7.dex */
public class CompositeFileComparator extends a implements Serializable {
    private static final Comparator<?>[] NO_COMPARATORS = new Comparator[0];
    private static final long serialVersionUID = -2224170307287243428L;
    private final Comparator<File>[] delegates;

    /* JADX WARN: Multi-variable type inference failed */
    public CompositeFileComparator(Comparator<File>... comparatorArr) {
        if (comparatorArr == null) {
            this.delegates = NO_COMPARATORS;
            return;
        }
        Comparator<File>[] comparatorArr2 = new Comparator[comparatorArr.length];
        this.delegates = comparatorArr2;
        System.arraycopy(comparatorArr, 0, comparatorArr2, 0, comparatorArr.length);
    }

    @Override // org.apache.commons.io.comparator.a
    public /* bridge */ /* synthetic */ List sort(List list) {
        return super.sort(list);
    }

    @Override // org.apache.commons.io.comparator.a
    public String toString() {
        StringBuilder sb2 = new StringBuilder();
        sb2.append(super.toString());
        sb2.append('{');
        for (int i9 = 0; i9 < this.delegates.length; i9++) {
            if (i9 > 0) {
                sb2.append(',');
            }
            sb2.append(this.delegates[i9]);
        }
        sb2.append('}');
        return sb2.toString();
    }

    @Override // java.util.Comparator
    public int compare(File file, File file2) {
        int i9 = 0;
        for (Comparator<File> comparator : this.delegates) {
            i9 = comparator.compare(file, file2);
            if (i9 != 0) {
                break;
            }
        }
        return i9;
    }

    @Override // org.apache.commons.io.comparator.a
    public /* bridge */ /* synthetic */ File[] sort(File[] fileArr) {
        return super.sort(fileArr);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public CompositeFileComparator(Iterable<Comparator<File>> iterable) {
        if (iterable == null) {
            this.delegates = NO_COMPARATORS;
            return;
        }
        ArrayList arrayList = new ArrayList();
        for (Comparator<File> comparator : iterable) {
            arrayList.add(comparator);
        }
        this.delegates = (Comparator[]) arrayList.toArray(new Comparator[arrayList.size()]);
    }
}
