package tb;

import android.content.Context;
import android.util.Log;
import java.security.NoSuchAlgorithmException;
import java.security.spec.InvalidKeySpecException;
import java.util.HashMap;
import java.util.Map;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4.dex */
public class m extends l {

    /* renamed from: c  reason: collision with root package name */
    private final Map<String, String> f58117c;

    /* renamed from: d  reason: collision with root package name */
    private final Object f58118d;

    /* renamed from: e  reason: collision with root package name */
    private i f58119e;

    /* renamed from: f  reason: collision with root package name */
    private boolean f58120f;

    /* renamed from: g  reason: collision with root package name */
    private final String f58121g;

    /* JADX INFO: Access modifiers changed from: package-private */
    public m(Context context, String str) {
        super(context, str);
        this.f58117c = new HashMap();
        this.f58118d = new Object();
        this.f58120f = true;
        this.f58121g = str;
        try {
            String a10 = a("/AD91D45E3E72DB6989DDCB13287E75061FABCB933D886E6C6ABEF0939B577138");
            String a11 = a("/B314B3BF013DF5AC4134E880AF3D2B7C9FFBE8F0305EAC1C898145E2BCF1F21C");
            String a12 = a("/C767BD8FDF53E53D059BE95B09E2A71056F5F180AECC62836B287ACA5793421B");
            String a13 = a("/DCB3E6D4C2CF80F30D89CDBC412C964DA8381BB84668769391FBCC3E329AD0FD");
            if (a10 == null || a11 == null || a12 == null || a13 == null) {
                this.f58120f = false;
            } else {
                this.f58119e = new h(a10, a11, a12, a13);
            }
        } catch (IllegalArgumentException | NoSuchAlgorithmException | InvalidKeySpecException unused) {
            Log.e("SecurityResourcesReader", "Exception when reading the 'K&I' for 'Config'.");
            this.f58119e = null;
        }
    }

    private String a(String str) {
        return super.a(str, null);
    }

    @Override // tb.l, tb.f
    public String a(String str, String str2) {
        if (!this.f58120f) {
            String a10 = a(str);
            return a10 != null ? a10 : str2;
        } else if (this.f58119e == null) {
            Log.e("SecurityResourcesReader", "KEY is null return def directly");
            return str2;
        } else {
            synchronized (this.f58118d) {
                String str3 = this.f58117c.get(str);
                if (str3 != null) {
                    return str3;
                }
                String a11 = a(str);
                if (a11 == null) {
                    return str2;
                }
                String a12 = this.f58119e.a(a11, str2);
                this.f58117c.put(str, a12);
                return a12;
            }
        }
    }

    public String toString() {
        return "SecurityResourcesReader{mKey=, encrypt=" + this.f58120f + '}';
    }
}
