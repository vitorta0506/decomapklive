package ea;

import com.google.zxing.BarcodeFormat;
import java.util.Collection;
import java.util.EnumSet;
import java.util.HashMap;
import java.util.Map;
import java.util.Set;
import java.util.regex.Pattern;
/* loaded from: classes3.dex */
public final class b {

    /* renamed from: a  reason: collision with root package name */
    private static final Pattern f38489a = Pattern.compile(",");

    /* renamed from: b  reason: collision with root package name */
    public static final Set<BarcodeFormat> f38490b;

    /* renamed from: c  reason: collision with root package name */
    static final Set<BarcodeFormat> f38491c;

    /* renamed from: d  reason: collision with root package name */
    static final Set<BarcodeFormat> f38492d;

    /* renamed from: e  reason: collision with root package name */
    static final Set<BarcodeFormat> f38493e;

    /* renamed from: f  reason: collision with root package name */
    static final Set<BarcodeFormat> f38494f;

    /* renamed from: g  reason: collision with root package name */
    static final Set<BarcodeFormat> f38495g;

    /* renamed from: h  reason: collision with root package name */
    static final Set<BarcodeFormat> f38496h;

    /* renamed from: i  reason: collision with root package name */
    private static final Map<String, Set<BarcodeFormat>> f38497i;

    static {
        EnumSet of2 = EnumSet.of(BarcodeFormat.QR_CODE);
        f38493e = of2;
        EnumSet of3 = EnumSet.of(BarcodeFormat.DATA_MATRIX);
        f38494f = of3;
        EnumSet of4 = EnumSet.of(BarcodeFormat.AZTEC);
        f38495g = of4;
        EnumSet of5 = EnumSet.of(BarcodeFormat.PDF_417);
        f38496h = of5;
        EnumSet of6 = EnumSet.of(BarcodeFormat.UPC_A, BarcodeFormat.UPC_E, BarcodeFormat.EAN_13, BarcodeFormat.EAN_8, BarcodeFormat.RSS_14, BarcodeFormat.RSS_EXPANDED);
        f38490b = of6;
        EnumSet of7 = EnumSet.of(BarcodeFormat.CODE_39, BarcodeFormat.CODE_93, BarcodeFormat.CODE_128, BarcodeFormat.ITF, BarcodeFormat.CODABAR);
        f38491c = of7;
        EnumSet copyOf = EnumSet.copyOf((Collection) of6);
        f38492d = copyOf;
        copyOf.addAll(of7);
        HashMap hashMap = new HashMap();
        f38497i = hashMap;
        hashMap.put("ONE_D_MODE", copyOf);
        hashMap.put("PRODUCT_MODE", of6);
        hashMap.put("QR_CODE_MODE", of2);
        hashMap.put("DATA_MATRIX_MODE", of3);
        hashMap.put("AZTEC_MODE", of4);
        hashMap.put("PDF417_MODE", of5);
    }
}
