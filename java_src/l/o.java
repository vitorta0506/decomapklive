package l;

import android.graphics.Color;
import androidx.annotation.IntRange;
import com.airbnb.lottie.parser.moshi.JsonReader;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes.dex */
public class o implements m0<j.d> {

    /* renamed from: a  reason: collision with root package name */
    private int f54085a;

    public o(int i9) {
        this.f54085a = i9;
    }

    private void b(j.d dVar, List<Float> list) {
        int i9 = this.f54085a * 4;
        if (list.size() <= i9) {
            return;
        }
        int size = (list.size() - i9) / 2;
        double[] dArr = new double[size];
        double[] dArr2 = new double[size];
        int i10 = 0;
        while (i9 < list.size()) {
            if (i9 % 2 == 0) {
                dArr[i10] = list.get(i9).floatValue();
            } else {
                dArr2[i10] = list.get(i9).floatValue();
                i10++;
            }
            i9++;
        }
        for (int i11 = 0; i11 < dVar.c(); i11++) {
            int i12 = dVar.a()[i11];
            dVar.a()[i11] = Color.argb(c(dVar.b()[i11], dArr, dArr2), Color.red(i12), Color.green(i12), Color.blue(i12));
        }
    }

    @IntRange(from = 0, to = 255)
    private int c(double d10, double[] dArr, double[] dArr2) {
        double d11;
        int i9 = 1;
        while (true) {
            if (i9 < dArr.length) {
                int i10 = i9 - 1;
                double d12 = dArr[i10];
                double d13 = dArr[i9];
                if (dArr[i9] >= d10) {
                    d11 = m.g.j(dArr2[i10], dArr2[i9], m.g.b((d10 - d12) / (d13 - d12), 0.0d, 1.0d));
                    break;
                }
                i9++;
            } else {
                d11 = dArr2[dArr2.length - 1];
                break;
            }
        }
        return (int) (d11 * 255.0d);
    }

    @Override // l.m0
    /* renamed from: d */
    public j.d a(JsonReader jsonReader, float f10) throws IOException {
        ArrayList arrayList = new ArrayList();
        boolean z10 = jsonReader.w() == JsonReader.Token.BEGIN_ARRAY;
        if (z10) {
            jsonReader.c();
        }
        while (jsonReader.o()) {
            arrayList.add(Float.valueOf((float) jsonReader.q()));
        }
        if (z10) {
            jsonReader.j();
        }
        if (this.f54085a == -1) {
            this.f54085a = arrayList.size() / 4;
        }
        int i9 = this.f54085a;
        float[] fArr = new float[i9];
        int[] iArr = new int[i9];
        int i10 = 0;
        int i11 = 0;
        for (int i12 = 0; i12 < this.f54085a * 4; i12++) {
            int i13 = i12 / 4;
            double floatValue = arrayList.get(i12).floatValue();
            int i14 = i12 % 4;
            if (i14 == 0) {
                if (i13 > 0) {
                    float f11 = (float) floatValue;
                    if (fArr[i13 - 1] >= f11) {
                        fArr[i13] = f11 + 0.01f;
                    }
                }
                fArr[i13] = (float) floatValue;
            } else if (i14 == 1) {
                i10 = (int) (floatValue * 255.0d);
            } else if (i14 == 2) {
                i11 = (int) (floatValue * 255.0d);
            } else if (i14 == 3) {
                iArr[i13] = Color.argb(255, i10, i11, (int) (floatValue * 255.0d));
            }
        }
        j.d dVar = new j.d(fArr, iArr);
        b(dVar, arrayList);
        return dVar;
    }
}
