package cn.jiguang.ak;

import java.util.ArrayList;
import java.util.Comparator;
import java.util.List;
/* loaded from: classes.dex */
public class g<E> {

    /* renamed from: a  reason: collision with root package name */
    private Comparator<E> f1944a;

    /* renamed from: b  reason: collision with root package name */
    private int f1945b;

    public g(Comparator<E> comparator) {
        a(comparator);
    }

    private boolean a(List<E> list, int i9, int i10, E e10) {
        while (i9 <= i10) {
            int i11 = (i9 + i10) >> 1;
            int compare = this.f1944a.compare(list.get(i11), e10);
            if (compare == 0) {
                this.f1945b = i11;
                return true;
            } else if (compare < 0) {
                i9 = i11 + 1;
            } else {
                i10 = i11 - 1;
            }
        }
        this.f1945b = i9;
        return false;
    }

    public List<E> a(List<E> list, List<E> list2) {
        if (this.f1944a == null || list == null || list.isEmpty() || list2 == null || list2.isEmpty()) {
            return null;
        }
        int size = list.size();
        int size2 = list2.size();
        int i9 = size - 1;
        int i10 = size2 - 1;
        ArrayList arrayList = new ArrayList();
        int i11 = 0;
        int i12 = 0;
        while (i11 < size && i12 < size2) {
            E e10 = list.get(i11);
            E e11 = list2.get(i12);
            int compare = this.f1944a.compare(e10, e11);
            if (compare == 0) {
                arrayList.add(e10);
            } else if (compare >= 0) {
                if (a(list2, i12 + 1, i10, e10)) {
                    arrayList.add(e10);
                    i12 = this.f1945b + 1;
                } else {
                    i12 = this.f1945b;
                }
                i11++;
            } else if (a(list, i11 + 1, i9, e11)) {
                arrayList.add(e11);
                i11 = this.f1945b;
            } else {
                i11 = this.f1945b;
                i12++;
            }
            i11++;
            i12++;
        }
        return arrayList;
    }

    public void a(Comparator<E> comparator) {
        this.f1944a = comparator;
    }
}
