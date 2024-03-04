package cn.jiguang.ax;

import android.content.Context;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.Pair;
import androidx.core.view.ViewCompat;
import cn.jiguang.internal.JConstants;
import com.google.android.exoplayer2.PlaybackException;
import com.huawei.hms.framework.common.ContainerUtils;
import java.io.IOException;
import java.net.DatagramPacket;
import java.net.DatagramSocket;
import java.nio.ByteBuffer;
import java.util.Random;
import org.json.JSONObject;
/* loaded from: classes.dex */
public class c {
    /* JADX WARN: Removed duplicated region for block: B:16:0x00a5  */
    /* JADX WARN: Removed duplicated region for block: B:17:0x00aa  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x00bf  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x00c2  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static int a(android.content.Context r28, cn.jiguang.bc.a r29) {
        /*
            Method dump skipped, instructions count: 590
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: cn.jiguang.ax.c.a(android.content.Context, cn.jiguang.bc.a):int");
    }

    public static void a(Context context) {
        cn.jiguang.g.b.a(context, cn.jiguang.g.a.J().a((cn.jiguang.g.a<String>) null), cn.jiguang.g.a.K().a((cn.jiguang.g.a<String>) null), cn.jiguang.g.a.d(false).a((cn.jiguang.g.a<String>) null), cn.jiguang.g.a.d(true).a((cn.jiguang.g.a<String>) null), cn.jiguang.g.a.O().a((cn.jiguang.g.a<String>) null), cn.jiguang.g.a.L().a((cn.jiguang.g.a<Boolean>) null), cn.jiguang.g.a.M().a((cn.jiguang.g.a<Long>) null), cn.jiguang.g.a.b(true).a((cn.jiguang.g.a<String>) null), cn.jiguang.g.a.b(false).a((cn.jiguang.g.a<String>) null), cn.jiguang.g.a.c(true).a((cn.jiguang.g.a<String>) null), cn.jiguang.g.a.c(false).a((cn.jiguang.g.a<String>) null));
        cn.jiguang.g.b.a(context, cn.jiguang.g.a.c().a((cn.jiguang.g.a<Long>) null), cn.jiguang.g.a.d().a((cn.jiguang.g.a<String>) null), cn.jiguang.g.a.e().a((cn.jiguang.g.a<String>) null));
    }

    public static void a(Context context, int i9) {
        a(context, i9, true);
    }

    public static void a(Context context, int i9, boolean z10) {
        String str;
        StringBuilder sb2;
        String str2;
        String str3;
        if (z10) {
            String a10 = cn.jiguang.be.c.a(i9);
            cn.jiguang.as.d.j("ConnectingHelper", "Register Failed with server error - code:" + i9);
            if (!TextUtils.isEmpty(a10)) {
                cn.jiguang.as.d.h("ConnectingHelper", "Local error description: " + a10);
            }
            cn.jiguang.az.b.a().a(context, 0, i9, a10);
        }
        String e10 = cn.jiguang.d.a.e(context);
        if (i9 != 11) {
            if (i9 == 1012) {
                a(context);
                return;
            }
            if (i9 != 10001) {
                switch (i9) {
                    case 1005:
                        sb2 = new StringBuilder();
                        sb2.append("包名: ");
                        sb2.append(context.getPackageName());
                        sb2.append(" 与 AppKey:");
                        sb2.append(e10);
                        str2 = "不匹配";
                        sb2.append(str2);
                        str = sb2.toString();
                        break;
                    case 1006:
                        sb2 = new StringBuilder();
                        sb2.append("包名: ");
                        sb2.append(context.getPackageName());
                        str2 = " 不存在";
                        sb2.append(str2);
                        str = sb2.toString();
                        break;
                    case 1007:
                        str3 = "IMEI is duplicated reported by server. Give up now. ";
                        cn.jiguang.as.d.e("ConnectingHelper", str3);
                        return;
                    case 1008:
                        sb2 = new StringBuilder();
                        sb2.append(" AppKey:");
                        sb2.append(e10);
                        str2 = " 是无效的AppKey,请确认与JIGUANG web端的AppKey一致";
                        sb2.append(str2);
                        str = sb2.toString();
                        break;
                    case 1009:
                        sb2 = new StringBuilder();
                        sb2.append(" AppKey:");
                        sb2.append(e10);
                        str2 = " 非android AppKey";
                        sb2.append(str2);
                        str = sb2.toString();
                        break;
                    default:
                        str3 = "Unhandled server response error code - " + i9;
                        cn.jiguang.as.d.e("ConnectingHelper", str3);
                        return;
                }
            } else {
                str = " 未在manifest中配置AppKey";
            }
            cn.jiguang.f.a.a(context, str, -1);
        }
    }

    private static void a(final Context context, final long j10) {
        if (j10 > 0) {
            cn.jiguang.av.b.d(new cn.jiguang.bg.b() { // from class: cn.jiguang.ax.c.1
                /* JADX WARN: Removed duplicated region for block: B:25:0x011a A[Catch: all -> 0x0144, TRY_LEAVE, TryCatch #0 {all -> 0x0144, blocks: (B:12:0x006e, B:15:0x0088, B:16:0x0094, B:25:0x011a, B:17:0x009b, B:19:0x00d7, B:21:0x00e3, B:22:0x00f5), top: B:28:0x006e }] */
                /* JADX WARN: Removed duplicated region for block: B:35:? A[RETURN, SYNTHETIC] */
                @Override // cn.jiguang.bg.b
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                    To view partially-correct add '--show-bad-code' argument
                */
                public void a() {
                    /*
                        Method dump skipped, instructions count: 325
                        To view this dump add '--comments-level debug' option
                    */
                    throw new UnsupportedOperationException("Method not decompiled: cn.jiguang.ax.c.AnonymousClass1.a():void");
                }
            }, new int[0]);
        }
    }

    private static synchronized byte[] a(String str, int i9, byte[] bArr, boolean z10, int i10) {
        byte[] b10;
        synchronized (c.class) {
            if (TextUtils.isEmpty(str) || str.length() != 2 || bArr == null || bArr.length == 0) {
                throw new IllegalArgumentException("flag or body length error");
            }
            cn.jiguang.be.b bVar = new cn.jiguang.be.b(300);
            bVar.b(0);
            bVar.a(str.getBytes());
            bVar.a(i9);
            bVar.b(i10);
            bVar.a(bArr);
            bVar.b(bVar.a(), 0);
            bVar.a((int) ((byte) ((z10 ? (byte) 1 : (byte) 0) | 16)), 4);
            b10 = bVar.b();
        }
        return b10;
    }

    public static byte[] a(String str, String str2) {
        boolean z10;
        byte[] a10;
        byte[] i9 = cn.jiguang.f.g.i(str2);
        try {
            a10 = cn.jiguang.f.i.a(i9);
        } catch (IOException unused) {
        }
        if (a10.length < i9.length) {
            i9 = a10;
            z10 = true;
            int length = i9.length;
            int a11 = cn.jiguang.bh.d.a();
            String a12 = cn.jiguang.bh.d.a(a11);
            return a(str, a11, cn.jiguang.bh.d.a(i9, a12, a12.substring(0, 16), true), z10, length);
        }
        z10 = false;
        int length2 = i9.length;
        int a112 = cn.jiguang.bh.d.a();
        String a122 = cn.jiguang.bh.d.a(a112);
        return a(str, a112, cn.jiguang.bh.d.a(i9, a122, a122.substring(0, 16), true), z10, length2);
    }

    public static byte[] a(DatagramSocket datagramSocket, DatagramPacket datagramPacket) {
        datagramSocket.setSoTimeout(PlaybackException.ERROR_CODE_DRM_UNSPECIFIED);
        datagramSocket.send(datagramPacket);
        DatagramPacket datagramPacket2 = new DatagramPacket(new byte[1024], 1024);
        cn.jiguang.as.d.d("ConnectingHelper", "udp Receiving...");
        datagramSocket.receive(datagramPacket2);
        int length = datagramPacket2.getLength();
        byte[] bArr = new byte[length];
        System.arraycopy(datagramPacket2.getData(), 0, bArr, 0, length);
        return bArr;
    }

    public static byte[] a(byte[] bArr) {
        if (bArr == null || bArr.length == 0) {
            throw new cn.jiguang.az.f(4, "response is empty!");
        }
        try {
            ByteBuffer wrap = ByteBuffer.wrap(bArr);
            wrap.getShort();
            wrap.getShort();
            int i9 = wrap.getInt();
            int i10 = i9 >>> 24;
            long j10 = i9 & ViewCompat.MEASURED_SIZE_MASK;
            wrap.getShort();
            int remaining = wrap.remaining();
            byte[] bArr2 = new byte[remaining];
            wrap.get(bArr2, 0, remaining);
            if (j10 != 0) {
                String a10 = cn.jiguang.bh.d.a(j10);
                try {
                    bArr2 = cn.jiguang.bh.d.a(bArr2, a10, a10.substring(0, 16), false);
                    if (bArr2 == null) {
                        throw new cn.jiguang.az.f(5, "decrypt response error");
                    }
                } catch (Exception unused) {
                    throw new cn.jiguang.az.f(5, "decrypt response error");
                }
            }
            if ((i10 & 1) == 1) {
                try {
                    return cn.jiguang.f.i.b(bArr2);
                } catch (IOException unused2) {
                    return bArr2;
                }
            }
            return bArr2;
        } catch (Throwable th2) {
            throw new cn.jiguang.az.f(4, "parse head error:" + th2.getMessage());
        }
    }

    public static int b(Context context, cn.jiguang.bc.a aVar) {
        Object obj;
        Object obj2;
        String d10 = d(context);
        String str = cn.jiguang.be.a.a(context).f2451a;
        String e10 = e(context);
        String f10 = f(context);
        long b10 = cn.jiguang.az.b.a().b();
        String d11 = cn.jiguang.d.a.d(context);
        cn.jiguang.as.d.c("ConnectingHelper", "Register with: key:" + d10 + ", apkVersion:" + str + ", clientInfo:" + e10 + ", extKey:" + f10 + ",reg business:" + b10 + " accountId:" + d11);
        byte[] a10 = cn.jiguang.bb.b.a(context, cn.jiguang.bb.b.a(c(context), d10, str, e10, f10, b10, d11));
        if (a10 == null) {
            cn.jiguang.as.d.h("ConnectingHelper", "Register failed - encrytor reg info failed");
            return -1;
        } else if (aVar.a(a10) != 0) {
            cn.jiguang.as.d.h("ConnectingHelper", "Register failed - send reg info failed");
            return -1;
        } else {
            try {
                Pair<cn.jiguang.bb.c, ByteBuffer> a11 = cn.jiguang.bb.a.a(context, aVar.a(20000).array(), "");
                if (a11 == null || (obj = a11.first) == null || (obj2 = a11.second) == null || ((cn.jiguang.bb.c) obj).f2406c != 0) {
                    cn.jiguang.as.d.h("ConnectingHelper", "Register failed - can't parse a Register Response");
                    return -1;
                }
                cn.jiguang.bb.e eVar = new cn.jiguang.bb.e((cn.jiguang.bb.c) obj, (ByteBuffer) obj2);
                cn.jiguang.as.d.c("ConnectingHelper", "register response:" + eVar);
                int i9 = eVar.f2421a;
                cn.jiguang.g.b.a(context, cn.jiguang.g.a.B().a((cn.jiguang.g.a<Integer>) Integer.valueOf(i9)));
                if (i9 == 0) {
                    long j10 = eVar.f2422b;
                    String str2 = eVar.f2423c;
                    String str3 = eVar.f2424d;
                    String str4 = eVar.f2425e;
                    cn.jiguang.as.d.f("ConnectingHelper", "Register succeed - juid:" + j10 + ", registrationId:" + str3 + ", deviceId:" + str4);
                    if (cn.jiguang.f.g.a(str3) || 0 == j10) {
                        cn.jiguang.as.d.j("ConnectingHelper", "Unexpected: registrationId/juid should not be empty. ");
                        return -1;
                    }
                    cn.jiguang.b.a.d(context);
                    cn.jiguang.av.b.a(context, str4);
                    cn.jiguang.av.b.a(context, j10, str2, str3);
                }
                return i9;
            } catch (cn.jiguang.az.f e11) {
                cn.jiguang.as.d.h("ConnectingHelper", "Register failed - recv msg failed with error:" + e11);
                return -1;
            }
        }
    }

    private static String b(String str, String str2) {
        return !cn.jiguang.f.g.a(str) ? str : str2;
    }

    public static void b(Context context) {
        cn.jiguang.g.b.a(context, cn.jiguang.g.a.c(true).a((cn.jiguang.g.a<String>) null), cn.jiguang.g.a.c(false).a((cn.jiguang.g.a<String>) null));
    }

    public static synchronized long c(Context context) {
        long j10;
        synchronized (c.class) {
            long longValue = ((Long) cn.jiguang.g.b.a(context, cn.jiguang.g.a.H())).longValue();
            if (longValue == -1) {
                longValue = Math.abs(new Random().nextInt(10000));
            }
            j10 = (longValue + (longValue % 2 == 0 ? 1L : 2L)) % 10000;
            cn.jiguang.g.b.a(context, cn.jiguang.g.a.H().a((cn.jiguang.g.a<Long>) Long.valueOf(j10)));
        }
        return j10;
    }

    private static String d(Context context) {
        String a10 = cn.jiguang.be.d.a(context);
        String str = cn.jiguang.be.a.a(context).f2465o;
        return b(a10, " ") + "$$" + b(str, " ") + "$$" + context.getPackageName() + "$$" + cn.jiguang.d.a.e(context);
    }

    private static String e(Context context) {
        String e10 = cn.jiguang.az.b.a().e();
        cn.jiguang.as.d.c("ConnectingHelper", "regVersion:" + e10);
        cn.jiguang.be.a a10 = cn.jiguang.be.a.a(context);
        return b(a10.f2452b, " ") + "$$" + b(a10.f2453c, " ") + "$$" + b(a10.f2454d, " ") + "$$" + b(a10.f2455e, " ") + "$$" + b(cn.jiguang.d.a.g(context), " ") + "$$" + e10 + "$$" + a10.f2457g + "$$" + a10.f2458h + "$$" + a10.f2462l + "$$" + a10.f2467q + ContainerUtils.FIELD_DELIMITER + a10.f2468r;
    }

    private static String f(final Context context) {
        String str;
        String str2;
        String str3;
        String str4;
        String str5;
        try {
            String str6 = cn.jiguang.be.a.a(context).f2460j;
            if ("unknown".equalsIgnoreCase(str6)) {
                str6 = " ";
            }
            final String a10 = cn.jiguang.bh.b.a(context);
            cn.jiguang.bg.d.a("FUTURE_TASK", new cn.jiguang.bg.b() { // from class: cn.jiguang.ax.c.2
                @Override // cn.jiguang.bg.b
                public void a() {
                    Bundle bundle = new Bundle();
                    bundle.putString("jg_device_id", a10);
                    cn.jiguang.az.e.a(context, "device_id_map", bundle);
                }
            });
            int i9 = cn.jiguang.bh.b.f2507a;
            String str7 = cn.jiguang.be.a.a(context).f2466p;
            String str8 = cn.jiguang.be.a.a(context).f2459i;
            String g10 = cn.jiguang.d.a.l(context) ? cn.jiguang.f.a.g(context, "") : "";
            Object a11 = cn.jiguang.az.e.a(context, "get_all_ids", null);
            if (a11 == null || !(a11 instanceof JSONObject)) {
                str = "";
                str2 = str;
                str3 = str2;
                str4 = str3;
                str5 = str4;
            } else {
                cn.jiguang.as.d.c("ConnectingHelper", "parse ids:" + a11.toString());
                str2 = ((JSONObject) a11).optString("udid", "");
                str3 = ((JSONObject) a11).optString("joad", "");
                str4 = ((JSONObject) a11).optString("jvad", "");
                str5 = ((JSONObject) a11).optString("jaad", "");
                str = ((JSONObject) a11).optString("jgad", "");
            }
            return i9 + "$$" + b(a10, " ") + "$$" + b(str7, " ") + "$$" + b(str8, " ") + "$$" + b(g10, " ") + "$$" + b(str6, " ") + "$$" + b(str2, " ") + "$$" + b(str3, " ") + "$$" + b(str4, " ") + "$$" + b(str5, " ") + "$$" + b(str, " ");
        } catch (Exception unused) {
            return "";
        }
    }

    private static String g(Context context) {
        String str = JConstants.testCountry;
        return !TextUtils.isEmpty(str) ? str : cn.jiguang.f.a.n(context);
    }
}
