package ea;

import android.graphics.Bitmap;
import com.google.zxing.LuminanceSource;
/* loaded from: classes3.dex */
public class a extends LuminanceSource {

    /* renamed from: a  reason: collision with root package name */
    private byte[] f38488a;

    public a(Bitmap bitmap) {
        super(bitmap.getWidth(), bitmap.getHeight());
        int width = bitmap.getWidth() * bitmap.getHeight();
        int[] iArr = new int[width];
        this.f38488a = new byte[bitmap.getWidth() * bitmap.getHeight()];
        bitmap.getPixels(iArr, 0, getWidth(), 0, 0, getWidth(), getHeight());
        for (int i9 = 0; i9 < width; i9++) {
            this.f38488a[i9] = (byte) iArr[i9];
        }
    }

    @Override // com.google.zxing.LuminanceSource
    public byte[] getMatrix() {
        return this.f38488a;
    }

    @Override // com.google.zxing.LuminanceSource
    public byte[] getRow(int i9, byte[] bArr) {
        System.arraycopy(this.f38488a, i9 * getWidth(), bArr, 0, getWidth());
        return bArr;
    }
}
