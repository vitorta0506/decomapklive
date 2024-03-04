package td;

import android.util.SparseArray;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes4.dex */
public class b {

    /* renamed from: a  reason: collision with root package name */
    private static final SparseArray<float[]> f58131a = new SparseArray<>();

    static {
        float[][] fArr = {new float[]{24.0f, 0.0f, 1.0f, 22.0f, 1.0f, 22.0f, 1.0f, 72.0f, 24.0f, 0.0f, 47.0f, 22.0f, 47.0f, 22.0f, 47.0f, 72.0f, 1.0f, 48.0f, 47.0f, 48.0f}, new float[]{0.0f, 0.0f, 0.0f, 72.0f, 0.0f, 0.0f, 37.0f, 0.0f, 37.0f, 0.0f, 47.0f, 11.0f, 47.0f, 11.0f, 47.0f, 26.0f, 47.0f, 26.0f, 38.0f, 36.0f, 38.0f, 36.0f, 0.0f, 36.0f, 38.0f, 36.0f, 47.0f, 46.0f, 47.0f, 46.0f, 47.0f, 61.0f, 47.0f, 61.0f, 38.0f, 71.0f, 37.0f, 72.0f, 0.0f, 72.0f}, new float[]{47.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 72.0f, 0.0f, 72.0f, 47.0f, 72.0f}, new float[]{0.0f, 0.0f, 0.0f, 72.0f, 0.0f, 0.0f, 24.0f, 0.0f, 24.0f, 0.0f, 47.0f, 22.0f, 47.0f, 22.0f, 47.0f, 48.0f, 47.0f, 48.0f, 23.0f, 72.0f, 23.0f, 72.0f, 0.0f, 72.0f}, new float[]{0.0f, 0.0f, 0.0f, 72.0f, 0.0f, 0.0f, 47.0f, 0.0f, 0.0f, 36.0f, 37.0f, 36.0f, 0.0f, 72.0f, 47.0f, 72.0f}, new float[]{0.0f, 0.0f, 0.0f, 72.0f, 0.0f, 0.0f, 47.0f, 0.0f, 0.0f, 36.0f, 37.0f, 36.0f}, new float[]{47.0f, 23.0f, 47.0f, 0.0f, 47.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 72.0f, 0.0f, 72.0f, 47.0f, 72.0f, 47.0f, 72.0f, 47.0f, 48.0f, 47.0f, 48.0f, 24.0f, 48.0f}, new float[]{0.0f, 0.0f, 0.0f, 72.0f, 0.0f, 36.0f, 47.0f, 36.0f, 47.0f, 0.0f, 47.0f, 72.0f}, new float[]{0.0f, 0.0f, 47.0f, 0.0f, 24.0f, 0.0f, 24.0f, 72.0f, 0.0f, 72.0f, 47.0f, 72.0f}, new float[]{47.0f, 0.0f, 47.0f, 72.0f, 47.0f, 72.0f, 24.0f, 72.0f, 24.0f, 72.0f, 0.0f, 48.0f}, new float[]{0.0f, 0.0f, 0.0f, 72.0f, 47.0f, 0.0f, 3.0f, 33.0f, 3.0f, 38.0f, 47.0f, 72.0f}, new float[]{0.0f, 0.0f, 0.0f, 72.0f, 0.0f, 72.0f, 47.0f, 72.0f}, new float[]{0.0f, 0.0f, 0.0f, 72.0f, 0.0f, 0.0f, 24.0f, 23.0f, 24.0f, 23.0f, 47.0f, 0.0f, 47.0f, 0.0f, 47.0f, 72.0f}, new float[]{0.0f, 0.0f, 0.0f, 72.0f, 0.0f, 0.0f, 47.0f, 72.0f, 47.0f, 72.0f, 47.0f, 0.0f}, new float[]{0.0f, 0.0f, 0.0f, 72.0f, 0.0f, 72.0f, 47.0f, 72.0f, 47.0f, 72.0f, 47.0f, 0.0f, 47.0f, 0.0f, 0.0f, 0.0f}, new float[]{0.0f, 0.0f, 0.0f, 72.0f, 0.0f, 0.0f, 47.0f, 0.0f, 47.0f, 0.0f, 47.0f, 36.0f, 47.0f, 36.0f, 0.0f, 36.0f}, new float[]{0.0f, 0.0f, 0.0f, 72.0f, 0.0f, 72.0f, 23.0f, 72.0f, 23.0f, 72.0f, 47.0f, 48.0f, 47.0f, 48.0f, 47.0f, 0.0f, 47.0f, 0.0f, 0.0f, 0.0f, 24.0f, 28.0f, 47.0f, 71.0f}, new float[]{0.0f, 0.0f, 0.0f, 72.0f, 0.0f, 0.0f, 47.0f, 0.0f, 47.0f, 0.0f, 47.0f, 36.0f, 47.0f, 36.0f, 0.0f, 36.0f, 0.0f, 37.0f, 47.0f, 72.0f}, new float[]{47.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 36.0f, 0.0f, 36.0f, 47.0f, 36.0f, 47.0f, 36.0f, 47.0f, 72.0f, 47.0f, 72.0f, 0.0f, 72.0f}, new float[]{0.0f, 0.0f, 47.0f, 0.0f, 24.0f, 0.0f, 24.0f, 72.0f}, new float[]{0.0f, 0.0f, 0.0f, 72.0f, 0.0f, 72.0f, 47.0f, 72.0f, 47.0f, 72.0f, 47.0f, 0.0f}, new float[]{0.0f, 0.0f, 24.0f, 72.0f, 24.0f, 72.0f, 47.0f, 0.0f}, new float[]{0.0f, 0.0f, 0.0f, 72.0f, 0.0f, 72.0f, 24.0f, 49.0f, 24.0f, 49.0f, 47.0f, 72.0f, 47.0f, 72.0f, 47.0f, 0.0f}, new float[]{0.0f, 0.0f, 47.0f, 72.0f, 47.0f, 0.0f, 0.0f, 72.0f}, new float[]{0.0f, 0.0f, 24.0f, 23.0f, 47.0f, 0.0f, 24.0f, 23.0f, 24.0f, 23.0f, 24.0f, 72.0f}, new float[]{0.0f, 0.0f, 47.0f, 0.0f, 47.0f, 0.0f, 0.0f, 72.0f, 0.0f, 72.0f, 47.0f, 72.0f}};
        float[][] fArr2 = {new float[]{0.0f, 0.0f, 0.0f, 72.0f, 0.0f, 72.0f, 47.0f, 72.0f, 47.0f, 72.0f, 47.0f, 0.0f, 47.0f, 0.0f, 0.0f, 0.0f}, new float[]{24.0f, 0.0f, 24.0f, 72.0f}, new float[]{0.0f, 0.0f, 47.0f, 0.0f, 47.0f, 0.0f, 47.0f, 36.0f, 47.0f, 36.0f, 0.0f, 36.0f, 0.0f, 36.0f, 0.0f, 72.0f, 0.0f, 72.0f, 47.0f, 72.0f}, new float[]{0.0f, 0.0f, 47.0f, 0.0f, 47.0f, 0.0f, 47.0f, 36.0f, 47.0f, 36.0f, 0.0f, 36.0f, 47.0f, 36.0f, 47.0f, 72.0f, 47.0f, 72.0f, 0.0f, 72.0f}, new float[]{0.0f, 0.0f, 0.0f, 36.0f, 0.0f, 36.0f, 47.0f, 36.0f, 47.0f, 0.0f, 47.0f, 72.0f}, new float[]{0.0f, 0.0f, 0.0f, 36.0f, 0.0f, 36.0f, 47.0f, 36.0f, 47.0f, 36.0f, 47.0f, 72.0f, 47.0f, 72.0f, 0.0f, 72.0f, 0.0f, 0.0f, 47.0f, 0.0f}, new float[]{0.0f, 0.0f, 0.0f, 72.0f, 0.0f, 72.0f, 47.0f, 72.0f, 47.0f, 72.0f, 47.0f, 36.0f, 47.0f, 36.0f, 0.0f, 36.0f}, new float[]{0.0f, 0.0f, 47.0f, 0.0f, 47.0f, 0.0f, 47.0f, 72.0f}, new float[]{0.0f, 0.0f, 0.0f, 72.0f, 0.0f, 72.0f, 47.0f, 72.0f, 47.0f, 72.0f, 47.0f, 0.0f, 47.0f, 0.0f, 0.0f, 0.0f, 0.0f, 36.0f, 47.0f, 36.0f}, new float[]{47.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 36.0f, 0.0f, 36.0f, 47.0f, 36.0f, 47.0f, 0.0f, 47.0f, 72.0f}};
        for (int i9 = 0; i9 < 26; i9++) {
            f58131a.append(i9 + 65, fArr[i9]);
        }
        for (int i10 = 0; i10 < 26; i10++) {
            f58131a.append(i10 + 65 + 32, fArr[i10]);
        }
        for (int i11 = 0; i11 < 10; i11++) {
            f58131a.append(i11 + 48, fArr2[i11]);
        }
        SparseArray<float[]> sparseArray = f58131a;
        sparseArray.append(32, new float[0]);
        sparseArray.append(45, new float[]{0.0f, 36.0f, 47.0f, 36.0f});
        sparseArray.append(46, new float[]{24.0f, 60.0f, 24.0f, 72.0f});
    }

    public static List<float[]> a(String str, float f10, int i9) {
        ArrayList arrayList = new ArrayList();
        float f11 = 0.0f;
        for (int i10 = 0; i10 < str.length(); i10++) {
            char charAt = str.charAt(i10);
            SparseArray<float[]> sparseArray = f58131a;
            if (sparseArray.indexOfKey(charAt) != -1) {
                float[] fArr = sparseArray.get(charAt);
                int length = fArr.length / 4;
                for (int i11 = 0; i11 < length; i11++) {
                    float[] fArr2 = new float[4];
                    for (int i12 = 0; i12 < 4; i12++) {
                        float f12 = fArr[(i11 * 4) + i12];
                        if (i12 % 2 == 0) {
                            fArr2[i12] = (f12 + f11) * f10;
                        } else {
                            fArr2[i12] = f12 * f10;
                        }
                    }
                    arrayList.add(fArr2);
                }
                f11 += i9 + 57;
            }
        }
        return arrayList;
    }
}
