package cn.jiguang.ac;

import android.content.Context;
import android.content.pm.PackageManager;
import android.content.pm.Signature;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.text.TextUtils;
import cn.jiguang.o.d;
import java.security.MessageDigest;
import kotlin.UByte;
/* loaded from: classes.dex */
public class a implements IInterface {

    /* renamed from: a  reason: collision with root package name */
    private IBinder f1823a;

    /* renamed from: b  reason: collision with root package name */
    private String f1824b;

    /* renamed from: c  reason: collision with root package name */
    private String f1825c = d.g("bFWKQsRzI9d+ktdqxw44MA==");

    /* renamed from: d  reason: collision with root package name */
    private String f1826d = d.g("vWw3rdN6/HN94yy83HO8Lw==");

    /* renamed from: e  reason: collision with root package name */
    private String f1827e = d.g("Ha7IUc4OlbRIQFpw3FJeZw==");

    /* renamed from: f  reason: collision with root package name */
    private String f1828f = d.g("qFFOesfckPwVmbfqzGl5oBCLe9WD17E04n+Ic7C9fCw=");

    public a(IBinder iBinder) {
        this.f1823a = iBinder;
    }

    private String a(String str, String str2, String str3) {
        Parcel obtain = Parcel.obtain();
        Parcel obtain2 = Parcel.obtain();
        try {
            obtain.writeInterfaceToken(this.f1828f);
            obtain.writeString(str);
            obtain.writeString(str2);
            obtain.writeString(str3);
            this.f1823a.transact(1, obtain, obtain2, 0);
            obtain2.readException();
            return obtain2.readString();
        } catch (Throwable th2) {
            try {
                cn.jiguang.al.a.d("OppoAdvertisingInterface", "getIdByType error: " + th2.getMessage());
                obtain2.recycle();
                obtain.recycle();
                return "";
            } finally {
                obtain2.recycle();
                obtain.recycle();
            }
        }
    }

    private String b(Context context) {
        String packageName = context.getPackageName();
        if (TextUtils.isEmpty(this.f1824b)) {
            Signature[] signatureArr = null;
            try {
                signatureArr = context.getPackageManager().getPackageInfo(packageName, 64).signatures;
            } catch (PackageManager.NameNotFoundException e10) {
                cn.jiguang.al.a.d("OppoAdvertisingInterface", "packageName: " + packageName + " getPackageInfo error: " + e10.getMessage());
            }
            if (signatureArr != null && signatureArr.length > 0) {
                byte[] byteArray = signatureArr[0].toByteArray();
                try {
                    MessageDigest messageDigest = MessageDigest.getInstance("SHA1");
                    if (messageDigest != null) {
                        byte[] digest = messageDigest.digest(byteArray);
                        StringBuilder sb2 = new StringBuilder();
                        for (byte b10 : digest) {
                            sb2.append(Integer.toHexString((b10 & UByte.MAX_VALUE) | 256).substring(1, 3));
                        }
                        this.f1824b = sb2.toString();
                    }
                } catch (Throwable th2) {
                    cn.jiguang.al.a.d("OppoAdvertisingInterface", "package sign error: " + th2.getMessage());
                }
            }
        }
        return this.f1824b;
    }

    public String a(Context context) {
        return context == null ? "" : a(context.getPackageName(), b(context), this.f1825c);
    }

    @Override // android.os.IInterface
    public IBinder asBinder() {
        return null;
    }
}
