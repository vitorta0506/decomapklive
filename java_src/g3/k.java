package g3;

import com.google.android.exoplayer2.util.l0;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;
/* loaded from: classes2.dex */
final class k implements x2.h {

    /* renamed from: a  reason: collision with root package name */
    private final List<e> f39948a;

    /* renamed from: b  reason: collision with root package name */
    private final long[] f39949b;

    /* renamed from: c  reason: collision with root package name */
    private final long[] f39950c;

    public k(List<e> list) {
        this.f39948a = Collections.unmodifiableList(new ArrayList(list));
        this.f39949b = new long[list.size() * 2];
        for (int i9 = 0; i9 < list.size(); i9++) {
            e eVar = list.get(i9);
            int i10 = i9 * 2;
            long[] jArr = this.f39949b;
            jArr[i10] = eVar.f39917b;
            jArr[i10 + 1] = eVar.f39918c;
        }
        long[] jArr2 = this.f39949b;
        long[] copyOf = Arrays.copyOf(jArr2, jArr2.length);
        this.f39950c = copyOf;
        Arrays.sort(copyOf);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ int f(e eVar, e eVar2) {
        return Long.compare(eVar.f39917b, eVar2.f39917b);
    }

    @Override // x2.h
    public int a(long j10) {
        int e10 = l0.e(this.f39950c, j10, false, false);
        if (e10 < this.f39950c.length) {
            return e10;
        }
        return -1;
    }

    @Override // x2.h
    public List<x2.b> b(long j10) {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        for (int i9 = 0; i9 < this.f39948a.size(); i9++) {
            long[] jArr = this.f39949b;
            int i10 = i9 * 2;
            if (jArr[i10] <= j10 && j10 < jArr[i10 + 1]) {
                e eVar = this.f39948a.get(i9);
                x2.b bVar = eVar.f39916a;
                if (bVar.f59550e == -3.4028235E38f) {
                    arrayList2.add(eVar);
                } else {
                    arrayList.add(bVar);
                }
            }
        }
        Collections.sort(arrayList2, new Comparator() { // from class: g3.j
            @Override // java.util.Comparator
            public final int compare(Object obj, Object obj2) {
                int f10;
                f10 = k.f((e) obj, (e) obj2);
                return f10;
            }
        });
        for (int i11 = 0; i11 < arrayList2.size(); i11++) {
            arrayList.add(((e) arrayList2.get(i11)).f39916a.b().h((-1) - i11, 1).a());
        }
        return arrayList;
    }

    @Override // x2.h
    public long c(int i9) {
        com.google.android.exoplayer2.util.a.a(i9 >= 0);
        com.google.android.exoplayer2.util.a.a(i9 < this.f39950c.length);
        return this.f39950c[i9];
    }

    @Override // x2.h
    public int d() {
        return this.f39950c.length;
    }
}
