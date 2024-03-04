package cn.jiguang.bb;

import android.content.Context;
import android.text.TextUtils;
import android.util.Pair;
import java.nio.ByteBuffer;
/* loaded from: classes.dex */
public class a {
    public static Pair<c, ByteBuffer> a(Context context, byte[] bArr, String str) {
        ByteBuffer wrap;
        if (bArr.length < 20) {
            cn.jiguang.as.d.h("JCommands", "Error: received body-length short than common head-length, return null");
            return null;
        }
        byte[] bArr2 = new byte[20];
        System.arraycopy(bArr, 0, bArr2, 0, 20);
        c cVar = new c(false, bArr2);
        cn.jiguang.as.d.c("JCommands", "parsed head - " + cVar.toString());
        int i9 = cVar.f2404a - 20;
        if (i9 < 0) {
            cn.jiguang.as.d.h("JCommands", "Error: totalBytes length error with no encrypted, return null");
            return null;
        }
        cn.jiguang.as.d.a("JCommands", "body size:" + i9);
        if (TextUtils.isEmpty(str)) {
            str = b.a(context);
        }
        byte[] bArr3 = new byte[i9];
        System.arraycopy(bArr, 20, bArr3, 0, i9);
        cn.jiguang.as.d.c("JCommands", "decode algorithm:" + ((int) cVar.f2407d) + ", pwd:" + str);
        if (TextUtils.isEmpty(str)) {
            System.arraycopy(bArr, 20, bArr3, 0, i9);
            wrap = ByteBuffer.wrap(bArr3);
        } else {
            try {
                wrap = ByteBuffer.wrap(cVar.f2407d == 2 ? new cn.jiguang.bh.c().b(bArr3, str) : cn.jiguang.bh.d.a(bArr3, str, str.substring(0, 16), false));
            } catch (Exception e10) {
                cn.jiguang.as.d.c("JCommands", "decryptBytes error:" + e10.getMessage());
                return null;
            }
        }
        return new Pair<>(cVar, wrap);
    }

    public static boolean a(Context context, byte[] bArr) {
        try {
            Pair<c, ByteBuffer> a10 = a(context, bArr, "");
            if (a10 != null) {
                long f10 = cn.jiguang.d.a.f(context);
                long j10 = ((c) a10.first).f2410g;
                cn.jiguang.as.d.c("JCommands", "uid:" + f10 + ",msgUid:" + j10 + ",cmd:" + ((c) a10.first).f2406c);
                if (f10 == 0 || j10 == 0 || f10 == j10) {
                    cn.jiguang.az.b.a().a(context, (c) a10.first, (ByteBuffer) a10.second);
                    return true;
                }
                cn.jiguang.as.d.c("JCommands", "recv other app msg");
                cn.jiguang.e.a.b().a(context, j10, bArr);
                return true;
            }
            return false;
        } catch (Throwable th2) {
            cn.jiguang.as.d.h("JCommands", "dispatchMessage error:" + th2.getMessage());
            return false;
        }
    }
}
