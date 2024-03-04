package vi;
/* loaded from: classes7.dex */
public final class e {
    public static boolean a(Object obj, Object obj2) {
        return obj == null ? obj2 == null : obj.equals(obj2);
    }

    public static boolean b(Object[] objArr, Object[] objArr2) {
        if (objArr == null) {
            return objArr2 == null;
        } else if (objArr2 == null || objArr.length != objArr2.length) {
            return false;
        } else {
            for (int i9 = 0; i9 < objArr.length; i9++) {
                if (!a(objArr[i9], objArr2[i9])) {
                    return false;
                }
            }
            return true;
        }
    }

    public static int c(int i9, int i10) {
        return (i9 * 37) + i10;
    }

    public static int d(int i9, Object obj) {
        return c(i9, obj != null ? obj.hashCode() : 0);
    }
}
