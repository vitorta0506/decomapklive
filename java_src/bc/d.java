package bc;

import android.os.Build;
/* loaded from: classes4.dex */
public class d {

    /* renamed from: b  reason: collision with root package name */
    private static final String f1244b = "RootKeyUtil";

    /* renamed from: a  reason: collision with root package name */
    private byte[] f1245a = null;

    private d() {
    }

    private void a(String str, String str2, String str3, String str4) {
        b(str, str2, str3, c.b(str4));
    }

    private void b(String str, String str2, String str3, byte[] bArr) {
        if (Build.VERSION.SDK_INT < 26) {
            f.d(f1244b, "initRootKey: sha1");
            this.f1245a = a.h(str, str2, str3, bArr, false);
            return;
        }
        f.d(f1244b, "initRootKey: sha256");
        this.f1245a = a.h(str, str2, str3, bArr, true);
    }

    public static d d(String str, String str2, String str3, String str4) {
        d dVar = new d();
        dVar.a(str, str2, str3, str4);
        return dVar;
    }

    public byte[] c() {
        return (byte[]) this.f1245a.clone();
    }
}
