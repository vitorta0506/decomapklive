package cn.jiguang.aq;

import android.content.Context;
import cn.jiguang.s.f;
import java.security.MessageDigest;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import kotlin.UByte;
import kotlin.jvm.internal.ByteCompanionObject;
import org.json.JSONArray;
import org.json.JSONObject;
/* loaded from: classes.dex */
public class b {

    /* renamed from: a  reason: collision with root package name */
    public static String f2031a = "";

    /* renamed from: b  reason: collision with root package name */
    private static final String f2032b = cn.jiguang.s.a.b(new byte[]{72, 109, 124, 102, 98, 10, 15, 54, 106, 124, 100, 67, 69, 107, 38, 124, 97, 69, 83, 113, 38, 117, ByteCompanionObject.MAX_VALUE, 31, 86, 43, 39, 119, 97, 64, 65, 110, 105, 125, 116, 31, 83, 109, 105, 98, 100, 67});

    private static long a(long j10) {
        Date date = new Date();
        Date date2 = new Date(j10);
        date.setHours(date2.getHours());
        date.setMinutes(date2.getMinutes());
        date.setSeconds(date2.getSeconds());
        return (date.getTime() / 1000) * 1000;
    }

    /* JADX WARN: Removed duplicated region for block: B:104:0x02d6  */
    /* JADX WARN: Removed duplicated region for block: B:105:0x02d8  */
    /* JADX WARN: Removed duplicated region for block: B:108:0x02e7  */
    /* JADX WARN: Removed duplicated region for block: B:109:0x02e9  */
    /* JADX WARN: Removed duplicated region for block: B:112:0x02f8  */
    /* JADX WARN: Removed duplicated region for block: B:113:0x02f9  */
    /* JADX WARN: Removed duplicated region for block: B:116:0x0316  */
    /* JADX WARN: Removed duplicated region for block: B:117:0x0318  */
    /* JADX WARN: Removed duplicated region for block: B:120:0x0323  */
    /* JADX WARN: Removed duplicated region for block: B:121:0x0325  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x00a8  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x00b8  */
    /* JADX WARN: Removed duplicated region for block: B:44:0x00ba  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x00d9 A[Catch: JSONException -> 0x0331, TRY_ENTER, TRY_LEAVE, TryCatch #0 {JSONException -> 0x0331, blocks: (B:5:0x0016, B:8:0x0020, B:10:0x002a, B:11:0x002d, B:13:0x0037, B:14:0x003a, B:16:0x0044, B:17:0x004c, B:19:0x0056, B:20:0x0059, B:22:0x0063, B:23:0x0066, B:25:0x0070, B:28:0x0078, B:34:0x009d, B:36:0x00a5, B:41:0x00b0, B:45:0x00bb, B:48:0x00d9, B:50:0x00e6, B:52:0x00ec, B:62:0x011c, B:66:0x0142, B:68:0x0149, B:70:0x0156, B:72:0x015e, B:74:0x01bf, B:67:0x0146, B:75:0x01cc, B:77:0x01d4, B:79:0x01dc, B:81:0x020d, B:82:0x021d, B:84:0x0223, B:86:0x024e, B:88:0x026b, B:89:0x026d, B:91:0x027b, B:93:0x0290, B:92:0x028d, B:94:0x0293, B:95:0x029b, B:97:0x02a1, B:98:0x02b4, B:100:0x02ba, B:101:0x02c6, B:102:0x02c8, B:106:0x02d9, B:110:0x02ea, B:114:0x02fa, B:118:0x0319, B:122:0x0326, B:38:0x00aa, B:32:0x0080, B:33:0x0083), top: B:127:0x0016 }] */
    /* JADX WARN: Removed duplicated region for block: B:70:0x0156 A[Catch: JSONException -> 0x0331, TryCatch #0 {JSONException -> 0x0331, blocks: (B:5:0x0016, B:8:0x0020, B:10:0x002a, B:11:0x002d, B:13:0x0037, B:14:0x003a, B:16:0x0044, B:17:0x004c, B:19:0x0056, B:20:0x0059, B:22:0x0063, B:23:0x0066, B:25:0x0070, B:28:0x0078, B:34:0x009d, B:36:0x00a5, B:41:0x00b0, B:45:0x00bb, B:48:0x00d9, B:50:0x00e6, B:52:0x00ec, B:62:0x011c, B:66:0x0142, B:68:0x0149, B:70:0x0156, B:72:0x015e, B:74:0x01bf, B:67:0x0146, B:75:0x01cc, B:77:0x01d4, B:79:0x01dc, B:81:0x020d, B:82:0x021d, B:84:0x0223, B:86:0x024e, B:88:0x026b, B:89:0x026d, B:91:0x027b, B:93:0x0290, B:92:0x028d, B:94:0x0293, B:95:0x029b, B:97:0x02a1, B:98:0x02b4, B:100:0x02ba, B:101:0x02c6, B:102:0x02c8, B:106:0x02d9, B:110:0x02ea, B:114:0x02fa, B:118:0x0319, B:122:0x0326, B:38:0x00aa, B:32:0x0080, B:33:0x0083), top: B:127:0x0016 }] */
    /* JADX WARN: Removed duplicated region for block: B:71:0x015c  */
    /* JADX WARN: Removed duplicated region for block: B:78:0x01da  */
    /* JADX WARN: Removed duplicated region for block: B:81:0x020d A[Catch: JSONException -> 0x0331, TryCatch #0 {JSONException -> 0x0331, blocks: (B:5:0x0016, B:8:0x0020, B:10:0x002a, B:11:0x002d, B:13:0x0037, B:14:0x003a, B:16:0x0044, B:17:0x004c, B:19:0x0056, B:20:0x0059, B:22:0x0063, B:23:0x0066, B:25:0x0070, B:28:0x0078, B:34:0x009d, B:36:0x00a5, B:41:0x00b0, B:45:0x00bb, B:48:0x00d9, B:50:0x00e6, B:52:0x00ec, B:62:0x011c, B:66:0x0142, B:68:0x0149, B:70:0x0156, B:72:0x015e, B:74:0x01bf, B:67:0x0146, B:75:0x01cc, B:77:0x01d4, B:79:0x01dc, B:81:0x020d, B:82:0x021d, B:84:0x0223, B:86:0x024e, B:88:0x026b, B:89:0x026d, B:91:0x027b, B:93:0x0290, B:92:0x028d, B:94:0x0293, B:95:0x029b, B:97:0x02a1, B:98:0x02b4, B:100:0x02ba, B:101:0x02c6, B:102:0x02c8, B:106:0x02d9, B:110:0x02ea, B:114:0x02fa, B:118:0x0319, B:122:0x0326, B:38:0x00aa, B:32:0x0080, B:33:0x0083), top: B:127:0x0016 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static cn.jiguang.ap.a a(android.content.Context r28, org.json.JSONObject r29) {
        /*
            Method dump skipped, instructions count: 843
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: cn.jiguang.aq.b.a(android.content.Context, org.json.JSONObject):cn.jiguang.ap.a");
    }

    private static String a(byte[] bArr) {
        try {
            byte[] digest = MessageDigest.getInstance("MD5").digest(bArr);
            StringBuilder sb2 = new StringBuilder();
            for (byte b10 : digest) {
                int i9 = b10 & UByte.MAX_VALUE;
                if (i9 < 16) {
                    sb2.append("0");
                }
                sb2.append(Integer.toHexString(i9));
            }
            return sb2.toString();
        } catch (Throwable th2) {
            cn.jiguang.al.a.d("JWakeConfigHelper", "get md5 throwable:" + th2.getMessage());
            return "";
        }
    }

    private static List<String> a(JSONObject jSONObject, String str) {
        JSONArray optJSONArray = jSONObject.optJSONArray(str);
        if (optJSONArray != null) {
            ArrayList arrayList = new ArrayList();
            for (int i9 = 0; i9 < optJSONArray.length(); i9++) {
                arrayList.add(optJSONArray.get(i9).toString());
            }
            return arrayList;
        }
        return null;
    }

    /* JADX WARN: Code restructure failed: missing block: B:214:0x04a1, code lost:
        if (r1 == null) goto L95;
     */
    /* JADX WARN: Code restructure failed: missing block: B:227:0x04de, code lost:
        if (r1 == null) goto L95;
     */
    /* JADX WARN: Code restructure failed: missing block: B:240:0x051a, code lost:
        if (r1 == null) goto L95;
     */
    /* JADX WARN: Code restructure failed: missing block: B:253:0x0556, code lost:
        if (r1 == 0) goto L95;
     */
    /* JADX WARN: Code restructure failed: missing block: B:254:0x0558, code lost:
        r1.disconnect();
     */
    /* JADX WARN: Code restructure failed: missing block: B:255:0x055b, code lost:
        return null;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:104:0x025b A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:106:0x025d A[Catch: all -> 0x0456, JSONException -> 0x045a, IOException -> 0x045e, UnsupportedEncodingException -> 0x0463, TryCatch #26 {UnsupportedEncodingException -> 0x0463, IOException -> 0x045e, JSONException -> 0x045a, all -> 0x0456, blocks: (B:35:0x0086, B:49:0x00e1, B:54:0x0101, B:57:0x010c, B:60:0x0117, B:63:0x0122, B:66:0x012d, B:78:0x0163, B:85:0x018e, B:102:0x01e8, B:106:0x025d, B:110:0x0281, B:114:0x02a5), top: B:293:0x0086 }] */
    /* JADX WARN: Removed duplicated region for block: B:276:0x0485 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:278:0x053a A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:282:0x04c2 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:289:0x04fe A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:77:0x015e A[Catch: all -> 0x00c9, JSONException -> 0x00cf, IOException -> 0x00d5, UnsupportedEncodingException -> 0x00db, TRY_ENTER, TRY_LEAVE, TryCatch #21 {UnsupportedEncodingException -> 0x00db, IOException -> 0x00d5, JSONException -> 0x00cf, all -> 0x00c9, blocks: (B:37:0x00bb, B:39:0x00c3, B:51:0x00ed, B:53:0x00fc, B:56:0x0107, B:59:0x0112, B:62:0x011d, B:65:0x0128, B:77:0x015e, B:80:0x016f, B:81:0x0178, B:83:0x017e, B:84:0x0188, B:87:0x0199, B:89:0x01a5, B:91:0x01ac, B:93:0x01b3, B:95:0x01bd, B:96:0x01ca, B:97:0x01cf, B:100:0x01d7, B:101:0x01e3), top: B:301:0x00bb }] */
    /* JADX WARN: Removed duplicated region for block: B:80:0x016f A[Catch: all -> 0x00c9, JSONException -> 0x00cf, IOException -> 0x00d5, UnsupportedEncodingException -> 0x00db, TRY_ENTER, TryCatch #21 {UnsupportedEncodingException -> 0x00db, IOException -> 0x00d5, JSONException -> 0x00cf, all -> 0x00c9, blocks: (B:37:0x00bb, B:39:0x00c3, B:51:0x00ed, B:53:0x00fc, B:56:0x0107, B:59:0x0112, B:62:0x011d, B:65:0x0128, B:77:0x015e, B:80:0x016f, B:81:0x0178, B:83:0x017e, B:84:0x0188, B:87:0x0199, B:89:0x01a5, B:91:0x01ac, B:93:0x01b3, B:95:0x01bd, B:96:0x01ca, B:97:0x01cf, B:100:0x01d7, B:101:0x01e3), top: B:301:0x00bb }] */
    /* JADX WARN: Removed duplicated region for block: B:87:0x0199 A[Catch: all -> 0x00c9, JSONException -> 0x00cf, IOException -> 0x00d5, UnsupportedEncodingException -> 0x00db, TRY_ENTER, TryCatch #21 {UnsupportedEncodingException -> 0x00db, IOException -> 0x00d5, JSONException -> 0x00cf, all -> 0x00c9, blocks: (B:37:0x00bb, B:39:0x00c3, B:51:0x00ed, B:53:0x00fc, B:56:0x0107, B:59:0x0112, B:62:0x011d, B:65:0x0128, B:77:0x015e, B:80:0x016f, B:81:0x0178, B:83:0x017e, B:84:0x0188, B:87:0x0199, B:89:0x01a5, B:91:0x01ac, B:93:0x01b3, B:95:0x01bd, B:96:0x01ca, B:97:0x01cf, B:100:0x01d7, B:101:0x01e3), top: B:301:0x00bb }] */
    /* JADX WARN: Type inference failed for: r1v0, types: [android.content.Context] */
    /* JADX WARN: Type inference failed for: r1v1, types: [java.net.HttpURLConnection] */
    /* JADX WARN: Type inference failed for: r1v11 */
    /* JADX WARN: Type inference failed for: r1v13, types: [java.net.HttpURLConnection] */
    /* JADX WARN: Type inference failed for: r1v14 */
    /* JADX WARN: Type inference failed for: r1v20 */
    /* JADX WARN: Type inference failed for: r1v39 */
    /* JADX WARN: Type inference failed for: r1v57 */
    /* JADX WARN: Type inference failed for: r2v0, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r2v1, types: [java.io.InputStream] */
    /* JADX WARN: Type inference failed for: r2v15 */
    /* JADX WARN: Type inference failed for: r2v21 */
    /* JADX WARN: Type inference failed for: r2v23 */
    /* JADX WARN: Type inference failed for: r2v24 */
    /* JADX WARN: Type inference failed for: r2v29 */
    /* JADX WARN: Type inference failed for: r2v36, types: [cn.jiguang.ai.a] */
    /* JADX WARN: Type inference failed for: r2v38, types: [cn.jiguang.ai.a] */
    /* JADX WARN: Type inference failed for: r2v69 */
    /* JADX WARN: Type inference failed for: r2v70 */
    /* JADX WARN: Type inference failed for: r2v71 */
    /* JADX WARN: Type inference failed for: r2v9 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static org.json.JSONObject a(android.content.Context r23) {
        /*
            Method dump skipped, instructions count: 1411
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: cn.jiguang.aq.b.a(android.content.Context):org.json.JSONObject");
    }

    public static void a(Context context, String str) {
        if (str != null) {
            cn.jiguang.al.a.a("JWakeConfigHelper", "write wakeConfigJson:" + str);
            cn.jiguang.s.c.a(context, "bwc.catch", str);
        }
    }

    public static cn.jiguang.ap.a b(Context context) {
        cn.jiguang.ap.a aVar = null;
        try {
            String c10 = cn.jiguang.s.c.c(context, "bwc.catch");
            if (c10 != null) {
                aVar = a(context, new JSONObject(f.a(c10)));
            }
        } catch (Throwable th2) {
            cn.jiguang.al.a.d("JWakeConfigHelper", "read config json from cache failed !! error:" + th2);
        }
        return aVar == null ? new cn.jiguang.ap.a() : aVar;
    }
}
