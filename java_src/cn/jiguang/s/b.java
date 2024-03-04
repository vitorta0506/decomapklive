package cn.jiguang.s;

import android.content.Context;
import android.os.Bundle;
import android.text.TextUtils;
import com.google.android.gms.recaptcha.RecaptchaActionType;
import com.meizu.cloud.pushsdk.constants.PushConstants;
import java.nio.ByteBuffer;
import org.json.JSONObject;
/* loaded from: classes.dex */
public class b {

    /* renamed from: a  reason: collision with root package name */
    private static long f2763a;

    static {
        cn.jiguang.o.d.a("JCommon");
        cn.jiguang.o.d.a("JLocation");
        cn.jiguang.o.d.a("JArp");
    }

    /* JADX WARN: Removed duplicated region for block: B:162:0x02ea A[Catch: all -> 0x0301, TryCatch #0 {all -> 0x0301, blocks: (B:4:0x000b, B:6:0x0011, B:8:0x0017, B:10:0x001d, B:12:0x0025, B:13:0x0029, B:14:0x0036, B:56:0x00c5, B:58:0x00d4, B:59:0x00d9, B:61:0x00de, B:63:0x00ef, B:64:0x0102, B:66:0x010e, B:69:0x0114, B:71:0x011e, B:72:0x012d, B:73:0x0142, B:75:0x014c, B:78:0x0156, B:80:0x015b, B:82:0x0160, B:84:0x016a, B:86:0x0176, B:89:0x0180, B:90:0x0194, B:92:0x0198, B:95:0x019f, B:96:0x01a3, B:135:0x0223, B:137:0x022b, B:139:0x0231, B:140:0x0236, B:142:0x0242, B:143:0x0247, B:144:0x0250, B:146:0x025c, B:147:0x0267, B:148:0x0271, B:151:0x0285, B:154:0x028e, B:155:0x0292, B:156:0x0296, B:157:0x02bf, B:159:0x02c9, B:98:0x01a8, B:101:0x01b3, B:104:0x01be, B:107:0x01c8, B:110:0x01d3, B:113:0x01dd, B:116:0x01e8, B:119:0x01f2, B:122:0x01fc, B:125:0x0206, B:128:0x0211, B:160:0x02e6, B:162:0x02ea, B:165:0x02f1, B:168:0x02fb, B:16:0x003b, B:19:0x0047, B:22:0x0053, B:25:0x005d, B:28:0x0067, B:31:0x0071, B:34:0x007c, B:37:0x0086, B:40:0x0090, B:43:0x009a, B:46:0x00a4, B:49:0x00ae), top: B:173:0x0009 }] */
    /* JADX WARN: Removed duplicated region for block: B:163:0x02ee  */
    /* JADX WARN: Removed duplicated region for block: B:165:0x02f1 A[Catch: all -> 0x0301, TryCatch #0 {all -> 0x0301, blocks: (B:4:0x000b, B:6:0x0011, B:8:0x0017, B:10:0x001d, B:12:0x0025, B:13:0x0029, B:14:0x0036, B:56:0x00c5, B:58:0x00d4, B:59:0x00d9, B:61:0x00de, B:63:0x00ef, B:64:0x0102, B:66:0x010e, B:69:0x0114, B:71:0x011e, B:72:0x012d, B:73:0x0142, B:75:0x014c, B:78:0x0156, B:80:0x015b, B:82:0x0160, B:84:0x016a, B:86:0x0176, B:89:0x0180, B:90:0x0194, B:92:0x0198, B:95:0x019f, B:96:0x01a3, B:135:0x0223, B:137:0x022b, B:139:0x0231, B:140:0x0236, B:142:0x0242, B:143:0x0247, B:144:0x0250, B:146:0x025c, B:147:0x0267, B:148:0x0271, B:151:0x0285, B:154:0x028e, B:155:0x0292, B:156:0x0296, B:157:0x02bf, B:159:0x02c9, B:98:0x01a8, B:101:0x01b3, B:104:0x01be, B:107:0x01c8, B:110:0x01d3, B:113:0x01dd, B:116:0x01e8, B:119:0x01f2, B:122:0x01fc, B:125:0x0206, B:128:0x0211, B:160:0x02e6, B:162:0x02ea, B:165:0x02f1, B:168:0x02fb, B:16:0x003b, B:19:0x0047, B:22:0x0053, B:25:0x005d, B:28:0x0067, B:31:0x0071, B:34:0x007c, B:37:0x0086, B:40:0x0090, B:43:0x009a, B:46:0x00a4, B:49:0x00ae), top: B:173:0x0009 }] */
    /* JADX WARN: Removed duplicated region for block: B:92:0x0198 A[Catch: all -> 0x0301, TryCatch #0 {all -> 0x0301, blocks: (B:4:0x000b, B:6:0x0011, B:8:0x0017, B:10:0x001d, B:12:0x0025, B:13:0x0029, B:14:0x0036, B:56:0x00c5, B:58:0x00d4, B:59:0x00d9, B:61:0x00de, B:63:0x00ef, B:64:0x0102, B:66:0x010e, B:69:0x0114, B:71:0x011e, B:72:0x012d, B:73:0x0142, B:75:0x014c, B:78:0x0156, B:80:0x015b, B:82:0x0160, B:84:0x016a, B:86:0x0176, B:89:0x0180, B:90:0x0194, B:92:0x0198, B:95:0x019f, B:96:0x01a3, B:135:0x0223, B:137:0x022b, B:139:0x0231, B:140:0x0236, B:142:0x0242, B:143:0x0247, B:144:0x0250, B:146:0x025c, B:147:0x0267, B:148:0x0271, B:151:0x0285, B:154:0x028e, B:155:0x0292, B:156:0x0296, B:157:0x02bf, B:159:0x02c9, B:98:0x01a8, B:101:0x01b3, B:104:0x01be, B:107:0x01c8, B:110:0x01d3, B:113:0x01dd, B:116:0x01e8, B:119:0x01f2, B:122:0x01fc, B:125:0x0206, B:128:0x0211, B:160:0x02e6, B:162:0x02ea, B:165:0x02f1, B:168:0x02fb, B:16:0x003b, B:19:0x0047, B:22:0x0053, B:25:0x005d, B:28:0x0067, B:31:0x0071, B:34:0x007c, B:37:0x0086, B:40:0x0090, B:43:0x009a, B:46:0x00a4, B:49:0x00ae), top: B:173:0x0009 }] */
    /* JADX WARN: Removed duplicated region for block: B:93:0x019c  */
    /* JADX WARN: Removed duplicated region for block: B:95:0x019f A[Catch: all -> 0x0301, TryCatch #0 {all -> 0x0301, blocks: (B:4:0x000b, B:6:0x0011, B:8:0x0017, B:10:0x001d, B:12:0x0025, B:13:0x0029, B:14:0x0036, B:56:0x00c5, B:58:0x00d4, B:59:0x00d9, B:61:0x00de, B:63:0x00ef, B:64:0x0102, B:66:0x010e, B:69:0x0114, B:71:0x011e, B:72:0x012d, B:73:0x0142, B:75:0x014c, B:78:0x0156, B:80:0x015b, B:82:0x0160, B:84:0x016a, B:86:0x0176, B:89:0x0180, B:90:0x0194, B:92:0x0198, B:95:0x019f, B:96:0x01a3, B:135:0x0223, B:137:0x022b, B:139:0x0231, B:140:0x0236, B:142:0x0242, B:143:0x0247, B:144:0x0250, B:146:0x025c, B:147:0x0267, B:148:0x0271, B:151:0x0285, B:154:0x028e, B:155:0x0292, B:156:0x0296, B:157:0x02bf, B:159:0x02c9, B:98:0x01a8, B:101:0x01b3, B:104:0x01be, B:107:0x01c8, B:110:0x01d3, B:113:0x01dd, B:116:0x01e8, B:119:0x01f2, B:122:0x01fc, B:125:0x0206, B:128:0x0211, B:160:0x02e6, B:162:0x02ea, B:165:0x02f1, B:168:0x02fb, B:16:0x003b, B:19:0x0047, B:22:0x0053, B:25:0x005d, B:28:0x0067, B:31:0x0071, B:34:0x007c, B:37:0x0086, B:40:0x0090, B:43:0x009a, B:46:0x00a4, B:49:0x00ae), top: B:173:0x0009 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.Object a(final android.content.Context r17, java.lang.String r18, final java.lang.Object r19) {
        /*
            Method dump skipped, instructions count: 944
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: cn.jiguang.s.b.a(android.content.Context, java.lang.String, java.lang.Object):java.lang.Object");
    }

    private static JSONObject a(Bundle bundle) {
        try {
            ByteBuffer wrap = ByteBuffer.wrap(bundle.getByteArray("RESPONSE_BODY"));
            f2763a = wrap.getLong();
            byte[] bArr = new byte[wrap.getShort()];
            wrap.get(bArr);
            String str = new String(bArr, "UTF-8");
            cn.jiguang.al.a.a("JCommonActionHelper", "parseBundle2Json content: " + str);
            return new JSONObject(str);
        } catch (Exception e10) {
            cn.jiguang.al.a.d("JCommonActionHelper", "parseBundle2Json exception:" + e10.getMessage());
            return null;
        }
    }

    private static void a(Context context, int i9) {
        long a10 = d.a();
        String a11 = cn.jiguang.r.b.a(context, i9);
        byte[] a12 = d.a(f2763a, a11);
        Bundle bundle = new Bundle();
        bundle.putInt("cmd", 25);
        bundle.putInt("ver", 1);
        bundle.putLong("rid", a10);
        bundle.putLong("timeout", 0L);
        bundle.putByteArray("body", a12);
        if (!TextUtils.isEmpty(a11)) {
            cn.jiguang.al.a.a("JCommonActionHelper", "tcp report deviceInfo:" + a11);
        }
        cn.jiguang.o.d.a(context, bundle);
    }

    private static void a(Context context, Bundle bundle) {
        cn.jiguang.o.a a10;
        JSONObject a11 = a(bundle);
        if (a11 == null) {
            return;
        }
        int optInt = a11.optInt("cmd");
        a(context, optInt);
        if (optInt == 4) {
            cn.jiguang.j.a.a().c(context);
            return;
        }
        if (optInt == 5 || optInt == 45) {
            if (!cn.jiguang.i.a.a().a(1500) || !cn.jiguang.d.a.l(context)) {
                return;
            }
            a10 = cn.jiguang.ai.a.a();
        } else if (optInt == 50) {
            cn.jiguang.ao.b.a(context, a11);
            return;
        } else if (optInt != 52) {
            if (optInt == 55) {
                if (cn.jiguang.i.a.a().d(PushConstants.EXPIRE_NOTIFICATION)) {
                    cn.jiguang.o.d.a(context, a11);
                    return;
                }
                return;
            } else if (optInt == 70) {
                cn.jiguang.ao.a.a(context);
                return;
            } else if (optInt == 79) {
                cn.jiguang.ak.e.a().b(context, 0);
                return;
            } else {
                if (optInt == 82) {
                    try {
                        JSONObject optJSONObject = a11.optJSONObject("content");
                        if (optJSONObject != null) {
                            int optInt2 = optJSONObject.optInt("log_enable");
                            cn.jiguang.g.b.a(context, cn.jiguang.g.a.U().a((cn.jiguang.g.a<Integer>) Integer.valueOf(optInt2)));
                            if (optInt2 == 1) {
                                cn.jiguang.a.a.f1813g = true;
                                int optInt3 = optJSONObject.optInt("expire");
                                if (optInt3 <= 0) {
                                    optInt3 = 7;
                                }
                                cn.jiguang.g.b.a(context, cn.jiguang.g.a.V().a((cn.jiguang.g.a<Long>) Long.valueOf(cn.jiguang.f.b.a(optInt3))));
                                int optInt4 = optJSONObject.optInt("delay_upload");
                                if (optInt4 <= 10) {
                                    optInt4 = 10;
                                }
                                cn.jiguang.g.b.a(context, cn.jiguang.g.a.W().a((cn.jiguang.g.a<Integer>) Integer.valueOf(optInt4)));
                            } else {
                                cn.jiguang.a.a.f1813g = false;
                                cn.jiguang.o.d.a("FUTURE_TASK", new cn.jiguang.o.e() { // from class: cn.jiguang.s.b.3
                                    @Override // cn.jiguang.o.e
                                    public void a() {
                                        cn.jiguang.as.c.a();
                                    }
                                });
                            }
                        }
                    } catch (Throwable unused) {
                        return;
                    }
                }
                return;
            }
        } else if (!cn.jiguang.i.a.a().a(1600)) {
            return;
        } else {
            a10 = cn.jiguang.l.b.a();
        }
        a10.a(context, a11);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static int b(Object obj) {
        return ((obj instanceof Bundle) && ((Bundle) obj).getBoolean(RecaptchaActionType.LOGIN)) ? 2 : 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void b(final Context context, final Object obj) {
        cn.jiguang.i.a a10 = cn.jiguang.i.a.a();
        if (a10.a(1600)) {
            cn.jiguang.l.b.a().a(context, a10.b(1600));
        }
        if (a10.a(1500) && cn.jiguang.d.a.l(context)) {
            int b10 = a10.b(1500);
            cn.jiguang.ai.a.a().a(context, b10);
            cn.jiguang.ak.e.a().a(context, b10);
        }
        if (a10.a(1800)) {
            cn.jiguang.o.d.a(new cn.jiguang.o.e() { // from class: cn.jiguang.s.b.2
                @Override // cn.jiguang.o.e
                public void a() {
                    cn.jiguang.am.a.a(context, b.b(obj));
                }
            }, a10.b(1800));
        }
        if (a10.a(1000)) {
            cn.jiguang.q.b.a().a(context, a10.b(1000));
        }
        if (a10.d(1200)) {
            cn.jiguang.q.c.a().a(context, a10.b(1200));
        }
        if (a10.d(1900)) {
            cn.jiguang.q.d.a().a(context, a10.b(1900));
        }
        cn.jiguang.ao.a.a(context, "heartbeat");
        cn.jiguang.ao.b.a(context, null);
        cn.jiguang.ao.d.a().b(context);
        cn.jiguang.q.e.a().b(context);
    }
}
