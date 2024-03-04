package com.google.re2j;

import com.google.re2j.l;
import java.util.ArrayList;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3.dex */
public class m {

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public static /* synthetic */ class a {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f15470a;

        static {
            int[] iArr = new int[l.b.values().length];
            f15470a = iArr;
            try {
                iArr[l.b.CAPTURE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f15470a[l.b.CONCAT.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f15470a[l.b.ALTERNATE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f15470a[l.b.STAR.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f15470a[l.b.PLUS.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f15470a[l.b.QUEST.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f15470a[l.b.REPEAT.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static l a(l lVar) {
        ArrayList arrayList;
        if (lVar == null) {
            return null;
        }
        switch (a.f15470a[lVar.f15438a.ordinal()]) {
            case 1:
            case 2:
            case 3:
                l lVar2 = lVar;
                int i9 = 0;
                while (true) {
                    l[] lVarArr = lVar.f15440c;
                    if (i9 >= lVarArr.length) {
                        return lVar2;
                    }
                    l lVar3 = lVarArr[i9];
                    l a10 = a(lVar3);
                    if (lVar2 == lVar && a10 != lVar3) {
                        lVar2 = new l(lVar);
                        lVar2.f15441d = null;
                        l[] lVarArr2 = lVar.f15440c;
                        lVar2.f15440c = i.M(lVarArr2, 0, lVarArr2.length);
                    }
                    if (lVar2 != lVar) {
                        lVar2.f15440c[i9] = a10;
                    }
                    i9++;
                }
            case 4:
            case 5:
            case 6:
                return b(lVar.f15438a, lVar.f15439b, a(lVar.f15440c[0]), lVar);
            case 7:
                if (lVar.f15442e == 0 && lVar.f15443f == 0) {
                    return new l(l.b.EMPTY_MATCH);
                }
                l a11 = a(lVar.f15440c[0]);
                int i10 = lVar.f15443f;
                if (i10 == -1) {
                    int i11 = lVar.f15442e;
                    if (i11 == 0) {
                        return b(l.b.STAR, lVar.f15439b, a11, null);
                    }
                    if (i11 == 1) {
                        return b(l.b.PLUS, lVar.f15439b, a11, null);
                    }
                    l lVar4 = new l(l.b.CONCAT);
                    ArrayList arrayList2 = new ArrayList();
                    for (int i12 = 0; i12 < lVar.f15442e - 1; i12++) {
                        arrayList2.add(a11);
                    }
                    arrayList2.add(b(l.b.PLUS, lVar.f15439b, a11, null));
                    lVar4.f15440c = (l[]) arrayList2.toArray(new l[arrayList2.size()]);
                    return lVar4;
                }
                int i13 = lVar.f15442e;
                if (i13 == 1 && i10 == 1) {
                    return a11;
                }
                if (i13 > 0) {
                    arrayList = new ArrayList();
                    for (int i14 = 0; i14 < lVar.f15442e; i14++) {
                        arrayList.add(a11);
                    }
                } else {
                    arrayList = null;
                }
                if (lVar.f15443f > lVar.f15442e) {
                    l b10 = b(l.b.QUEST, lVar.f15439b, a11, null);
                    for (int i15 = lVar.f15442e + 1; i15 < lVar.f15443f; i15++) {
                        l lVar5 = new l(l.b.CONCAT);
                        lVar5.f15440c = new l[]{a11, b10};
                        b10 = b(l.b.QUEST, lVar.f15439b, lVar5, null);
                    }
                    if (arrayList == null) {
                        return b10;
                    }
                    arrayList.add(b10);
                }
                if (arrayList != null) {
                    l lVar6 = new l(l.b.CONCAT);
                    lVar6.f15440c = (l[]) arrayList.toArray(new l[arrayList.size()]);
                    return lVar6;
                }
                return new l(l.b.NO_MATCH);
            default:
                return lVar;
        }
    }

    private static l b(l.b bVar, int i9, l lVar, l lVar2) {
        l.b bVar2 = lVar.f15438a;
        if (bVar2 == l.b.EMPTY_MATCH) {
            return lVar;
        }
        if (bVar == bVar2 && (i9 & 32) == (lVar.f15439b & 32)) {
            return lVar;
        }
        if (lVar2 != null && lVar2.f15438a == bVar && (lVar2.f15439b & 32) == (i9 & 32) && lVar == lVar2.f15440c[0]) {
            return lVar2;
        }
        l lVar3 = new l(bVar);
        lVar3.f15439b = i9;
        lVar3.f15440c = new l[]{lVar};
        return lVar3;
    }
}
