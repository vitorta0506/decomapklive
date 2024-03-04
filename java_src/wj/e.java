package wj;

import java.util.Hashtable;
import org.bouncycastle.crypto.g;
import org.light.utils.FileUtils;
/* loaded from: classes7.dex */
class e {

    /* renamed from: a  reason: collision with root package name */
    static final Hashtable f59538a;

    static {
        Hashtable hashtable = new Hashtable();
        f59538a = hashtable;
        hashtable.put("SHA-1", org.bouncycastle.util.e.d(128));
        hashtable.put("SHA-224", org.bouncycastle.util.e.d(192));
        hashtable.put("SHA-256", org.bouncycastle.util.e.d(256));
        hashtable.put("SHA-384", org.bouncycastle.util.e.d(256));
        hashtable.put("SHA-512", org.bouncycastle.util.e.d(256));
        hashtable.put("SHA-512/224", org.bouncycastle.util.e.d(192));
        hashtable.put("SHA-512/256", org.bouncycastle.util.e.d(256));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int a(org.bouncycastle.crypto.e eVar) {
        return ((Integer) f59538a.get(eVar.getAlgorithmName())).intValue();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int b(g gVar) {
        String algorithmName = gVar.getAlgorithmName();
        return ((Integer) f59538a.get(algorithmName.substring(0, algorithmName.indexOf(FileUtils.RES_PREFIX_STORAGE)))).intValue();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static byte[] c(org.bouncycastle.crypto.e eVar, byte[] bArr, int i9) {
        int i10 = (i9 + 7) / 8;
        byte[] bArr2 = new byte[i10];
        int d10 = i10 / eVar.d();
        int d11 = eVar.d();
        byte[] bArr3 = new byte[d11];
        int i11 = 1;
        int i12 = 0;
        for (int i13 = 0; i13 <= d10; i13++) {
            eVar.b((byte) i11);
            eVar.b((byte) (i9 >> 24));
            eVar.b((byte) (i9 >> 16));
            eVar.b((byte) (i9 >> 8));
            eVar.b((byte) i9);
            eVar.c(bArr, 0, bArr.length);
            eVar.a(bArr3, 0);
            int i14 = i13 * d11;
            int i15 = i10 - i14;
            if (i15 > d11) {
                i15 = d11;
            }
            System.arraycopy(bArr3, 0, bArr2, i14, i15);
            i11++;
        }
        int i16 = i9 % 8;
        if (i16 != 0) {
            int i17 = 8 - i16;
            int i18 = 0;
            while (i12 != i10) {
                int i19 = bArr2[i12] & 255;
                bArr2[i12] = (byte) ((i18 << (8 - i17)) | (i19 >>> i17));
                i12++;
                i18 = i19;
            }
        }
        return bArr2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean d(byte[] bArr, int i9) {
        return bArr != null && bArr.length > i9;
    }
}
