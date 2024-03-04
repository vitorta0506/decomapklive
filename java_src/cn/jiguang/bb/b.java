package cn.jiguang.bb;

import android.content.Context;
import cn.jiguang.internal.JConstants;
import java.nio.ByteBuffer;
import java.security.SecureRandom;
import kotlin.jvm.internal.ByteCompanionObject;
import org.json.JSONArray;
import org.json.JSONObject;
/* loaded from: classes.dex */
public class b {

    /* renamed from: a  reason: collision with root package name */
    private static Integer f2403a;

    public static int a() {
        Integer num = f2403a;
        if (num != null) {
            return num.intValue();
        }
        Integer valueOf = Integer.valueOf(Math.abs(new SecureRandom().nextInt()));
        f2403a = valueOf;
        return valueOf.intValue();
    }

    public static String a(Context context) {
        long f10 = cn.jiguang.d.a.f(context);
        return f10 > 0 ? cn.jiguang.bh.d.a(f10) : cn.jiguang.bh.d.a(a());
    }

    public static String a(ByteBuffer byteBuffer) {
        byte[] bArr = new byte[byteBuffer.getShort()];
        byteBuffer.get(bArr);
        try {
            return new String(bArr, "UTF-8");
        } catch (Throwable unused) {
            return null;
        }
    }

    public static byte[] a(int i9, byte b10, long j10, String str) {
        cn.jiguang.be.b bVar = new cn.jiguang.be.b(20480);
        bVar.b(i9);
        bVar.a((int) b10);
        bVar.b(j10);
        bVar.a(str);
        return bVar.b();
    }

    public static byte[] a(long j10, int i9, long j11, short s10, int i10) {
        cn.jiguang.be.b bVar = new cn.jiguang.be.b(20480);
        bVar.b(0);
        bVar.a(6);
        bVar.a(2);
        bVar.b(j10);
        bVar.a(i9);
        bVar.b(j11);
        bVar.a(s10);
        bVar.a(i10);
        bVar.b(bVar.a(), 0);
        return bVar.b();
    }

    public static byte[] a(long j10, long j11, String str, String str2, String str3, long j12, byte b10, int i9, String str4, String str5, String str6, String str7, int i10) {
        cn.jiguang.be.b bVar = new cn.jiguang.be.b(20480);
        bVar.b(0);
        bVar.a(24);
        bVar.a(1);
        bVar.b(j10);
        bVar.a(0L);
        bVar.b(j11);
        bVar.a(97);
        bVar.a(0);
        bVar.b(0);
        bVar.a(str);
        bVar.a(str3);
        bVar.a(str2);
        bVar.a(0);
        bVar.a(j12);
        bVar.a((int) b10);
        bVar.a(i9);
        bVar.a(str4);
        bVar.a(str5);
        bVar.a(str6);
        bVar.a(str7);
        bVar.a(i10);
        bVar.b(bVar.a(), 0);
        return bVar.b();
    }

    public static byte[] a(long j10, String str, String str2, String str3, String str4, long j11, String str5) {
        int a10 = a();
        cn.jiguang.be.b bVar = new cn.jiguang.be.b(20480);
        bVar.b(0);
        bVar.a(24);
        bVar.a(0);
        bVar.b(j10);
        bVar.a(a10);
        bVar.b(0L);
        bVar.a(str);
        bVar.a(str2);
        bVar.a(str3);
        bVar.a(0);
        bVar.a(str4);
        bVar.a(j11);
        bVar.a(str5);
        bVar.b(bVar.a(), 0);
        return bVar.b();
    }

    public static byte[] a(long j10, String str, long[] jArr) {
        cn.jiguang.be.b bVar = new cn.jiguang.be.b(20480);
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("device_id", str);
            JSONArray jSONArray = new JSONArray();
            if (jArr != null) {
                jSONArray.put(j10);
                for (long j11 : jArr) {
                    jSONArray.put(j11);
                }
            }
            jSONObject.put("uids", jSONArray);
            cn.jiguang.as.d.c("CorePackage", "attach uids:" + jSONArray.toString());
            bVar.a(jSONObject.toString());
            return bVar.b();
        } catch (Throwable th2) {
            cn.jiguang.as.d.g("CorePackage", "packageAttachInfo:" + th2);
            return null;
        }
    }

    public static byte[] a(Context context, int i9, int i10, long j10, byte[] bArr, long j11) {
        cn.jiguang.be.b bVar = new cn.jiguang.be.b(20480);
        bVar.b(0);
        bVar.a(i10);
        bVar.a(i9);
        bVar.b(j10);
        bVar.a(JConstants.tcpSessionId);
        cn.jiguang.as.d.c("CorePackage", "packageSendData uid:" + j11);
        if (j11 == 0) {
            j11 = cn.jiguang.d.a.f(context);
            cn.jiguang.as.d.c("CorePackage", "use mine uid:" + j11);
        }
        bVar.b(j11);
        bVar.a(bArr);
        bVar.b(bVar.a(), 0);
        return a(context, bVar.b());
    }

    public static byte[] a(Context context, byte[] bArr) {
        if (bArr == null || bArr.length == 0) {
            return bArr;
        }
        int length = bArr.length - 24;
        byte[] bArr2 = new byte[24];
        byte[] bArr3 = new byte[length];
        System.arraycopy(bArr, 0, bArr2, 0, 24);
        System.arraycopy(bArr, 24, bArr3, 0, length);
        String a10 = a(context);
        try {
            byte b10 = JConstants.tcpAlgorithm;
            cn.jiguang.as.d.c("CorePackage", "encryptBuf algorithm=" + ((int) b10) + ", key=" + a10);
            byte[] a11 = b10 == 2 ? new cn.jiguang.bh.c().a(bArr3, a10) : cn.jiguang.bh.d.a(bArr3, a10, a10.substring(0, 16), true);
            int length2 = a11.length + 24;
            byte[] bArr4 = new byte[length2];
            System.arraycopy(bArr2, 0, bArr4, 0, 24);
            System.arraycopy(a11, 0, bArr4, 24, a11.length);
            bArr4[0] = (byte) ((length2 >>> 8) & 255);
            bArr4[1] = (byte) (length2 & 255);
            bArr4[0] = (byte) (bArr4[0] | ByteCompanionObject.MIN_VALUE);
            bArr4[4] = b10;
            return bArr4;
        } catch (Exception e10) {
            cn.jiguang.as.d.g("CorePackage", "e:" + e10);
            cn.jiguang.as.d.h("CorePackage", "encrpt data failed");
            return null;
        }
    }

    public static byte[] a(String str, long[] jArr) {
        cn.jiguang.be.b bVar = new cn.jiguang.be.b(20480);
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("device_id", str);
            JSONArray jSONArray = new JSONArray();
            if (jArr != null) {
                for (long j10 : jArr) {
                    jSONArray.put(j10);
                }
            }
            jSONObject.put("uids", jSONArray);
            bVar.a(jSONObject.toString());
            return bVar.b();
        } catch (Throwable th2) {
            cn.jiguang.as.d.g("CorePackage", "packageDetachInfo:" + th2);
            return null;
        }
    }

    public static byte[] a(short s10, short s11, String str) {
        cn.jiguang.be.b bVar = new cn.jiguang.be.b(20480);
        bVar.a((int) s10);
        bVar.a((int) s11);
        bVar.a(str);
        return bVar.b();
    }
}
