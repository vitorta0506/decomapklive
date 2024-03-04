package xe;
/* loaded from: classes4.dex */
public class b {

    /* renamed from: a  reason: collision with root package name */
    private a[] f59709a;

    /* renamed from: b  reason: collision with root package name */
    private int f59710b;

    /* renamed from: c  reason: collision with root package name */
    private int f59711c;

    /* renamed from: d  reason: collision with root package name */
    private float f59712d;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes4.dex */
    public static class a {

        /* renamed from: a  reason: collision with root package name */
        public final int f59713a;

        /* renamed from: b  reason: collision with root package name */
        public int f59714b;

        /* renamed from: c  reason: collision with root package name */
        public Object f59715c;

        /* renamed from: d  reason: collision with root package name */
        public a f59716d;

        protected a(int i9, int i10, Object obj, a aVar) {
            this.f59713a = i9;
            this.f59714b = i10;
            this.f59715c = obj;
            this.f59716d = aVar;
        }
    }

    public b() {
        this(20, 0.75f);
    }

    public Object a(int i9, Object obj) {
        a[] aVarArr = this.f59709a;
        int i10 = Integer.MAX_VALUE & i9;
        int length = i10 % aVarArr.length;
        for (a aVar = aVarArr[length]; aVar != null; aVar = aVar.f59716d) {
            if (aVar.f59713a == i9) {
                Object obj2 = aVar.f59715c;
                aVar.f59715c = obj;
                return obj2;
            }
        }
        if (this.f59710b >= this.f59711c) {
            b();
            aVarArr = this.f59709a;
            length = i10 % aVarArr.length;
        }
        aVarArr[length] = new a(i9, i9, obj, aVarArr[length]);
        this.f59710b++;
        return null;
    }

    protected void b() {
        a[] aVarArr = this.f59709a;
        int length = aVarArr.length;
        int i9 = (length * 2) + 1;
        a[] aVarArr2 = new a[i9];
        this.f59711c = (int) (i9 * this.f59712d);
        this.f59709a = aVarArr2;
        while (true) {
            int i10 = length - 1;
            if (length <= 0) {
                return;
            }
            a aVar = aVarArr[i10];
            while (aVar != null) {
                a aVar2 = aVar.f59716d;
                int i11 = (aVar.f59713a & Integer.MAX_VALUE) % i9;
                aVar.f59716d = aVarArr2[i11];
                aVarArr2[i11] = aVar;
                aVar = aVar2;
            }
            length = i10;
        }
    }

    public b(int i9, float f10) {
        if (i9 < 0) {
            throw new IllegalArgumentException("Illegal Capacity: " + i9);
        } else if (f10 > 0.0f) {
            i9 = i9 == 0 ? 1 : i9;
            this.f59712d = f10;
            this.f59709a = new a[i9];
            this.f59711c = (int) (i9 * f10);
        } else {
            throw new IllegalArgumentException("Illegal Load: " + f10);
        }
    }
}
