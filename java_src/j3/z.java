package j3;

import j3.z;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
/* loaded from: classes2.dex */
public class z {

    /* renamed from: h  reason: collision with root package name */
    private static final Comparator<b> f53136h = new Comparator() { // from class: j3.y
        @Override // java.util.Comparator
        public final int compare(Object obj, Object obj2) {
            int g10;
            g10 = z.g((z.b) obj, (z.b) obj2);
            return g10;
        }
    };

    /* renamed from: i  reason: collision with root package name */
    private static final Comparator<b> f53137i = new Comparator() { // from class: j3.x
        @Override // java.util.Comparator
        public final int compare(Object obj, Object obj2) {
            int h10;
            h10 = z.h((z.b) obj, (z.b) obj2);
            return h10;
        }
    };

    /* renamed from: a  reason: collision with root package name */
    private final int f53138a;

    /* renamed from: e  reason: collision with root package name */
    private int f53142e;

    /* renamed from: f  reason: collision with root package name */
    private int f53143f;

    /* renamed from: g  reason: collision with root package name */
    private int f53144g;

    /* renamed from: c  reason: collision with root package name */
    private final b[] f53140c = new b[5];

    /* renamed from: b  reason: collision with root package name */
    private final ArrayList<b> f53139b = new ArrayList<>();

    /* renamed from: d  reason: collision with root package name */
    private int f53141d = -1;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public static class b {

        /* renamed from: a  reason: collision with root package name */
        public int f53145a;

        /* renamed from: b  reason: collision with root package name */
        public int f53146b;

        /* renamed from: c  reason: collision with root package name */
        public float f53147c;

        private b() {
        }
    }

    public z(int i9) {
        this.f53138a = i9;
    }

    private void d() {
        if (this.f53141d != 1) {
            Collections.sort(this.f53139b, f53136h);
            this.f53141d = 1;
        }
    }

    private void e() {
        if (this.f53141d != 0) {
            Collections.sort(this.f53139b, f53137i);
            this.f53141d = 0;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ int g(b bVar, b bVar2) {
        return bVar.f53145a - bVar2.f53145a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ int h(b bVar, b bVar2) {
        return Float.compare(bVar.f53147c, bVar2.f53147c);
    }

    public void c(int i9, float f10) {
        b bVar;
        d();
        int i10 = this.f53144g;
        if (i10 > 0) {
            b[] bVarArr = this.f53140c;
            int i11 = i10 - 1;
            this.f53144g = i11;
            bVar = bVarArr[i11];
        } else {
            bVar = new b();
        }
        int i12 = this.f53142e;
        this.f53142e = i12 + 1;
        bVar.f53145a = i12;
        bVar.f53146b = i9;
        bVar.f53147c = f10;
        this.f53139b.add(bVar);
        this.f53143f += i9;
        while (true) {
            int i13 = this.f53143f;
            int i14 = this.f53138a;
            if (i13 <= i14) {
                return;
            }
            int i15 = i13 - i14;
            b bVar2 = this.f53139b.get(0);
            int i16 = bVar2.f53146b;
            if (i16 <= i15) {
                this.f53143f -= i16;
                this.f53139b.remove(0);
                int i17 = this.f53144g;
                if (i17 < 5) {
                    b[] bVarArr2 = this.f53140c;
                    this.f53144g = i17 + 1;
                    bVarArr2[i17] = bVar2;
                }
            } else {
                bVar2.f53146b = i16 - i15;
                this.f53143f -= i15;
            }
        }
    }

    public float f(float f10) {
        e();
        float f11 = f10 * this.f53143f;
        int i9 = 0;
        for (int i10 = 0; i10 < this.f53139b.size(); i10++) {
            b bVar = this.f53139b.get(i10);
            i9 += bVar.f53146b;
            if (i9 >= f11) {
                return bVar.f53147c;
            }
        }
        if (this.f53139b.isEmpty()) {
            return Float.NaN;
        }
        ArrayList<b> arrayList = this.f53139b;
        return arrayList.get(arrayList.size() - 1).f53147c;
    }

    public void i() {
        this.f53139b.clear();
        this.f53141d = -1;
        this.f53142e = 0;
        this.f53143f = 0;
    }
}
