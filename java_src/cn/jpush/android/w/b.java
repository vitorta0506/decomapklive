package cn.jpush.android.w;

import android.os.Build;
import android.text.TextUtils;
import cn.jpush.android.helper.Logger;
import cn.jpush.android.x.d;
import com.facebook.devicerequests.internal.DeviceRequestsHelper;
import java.util.ArrayList;
import java.util.List;
import java.util.regex.Pattern;
import org.json.JSONArray;
import org.json.JSONObject;
/* loaded from: classes.dex */
public class b {
    private static int a(d.a aVar) {
        int d10 = aVar.d();
        int e10 = aVar.e();
        if (-1 == e10 && -1 == d10) {
            return 3;
        }
        if (-1 == e10) {
            return Build.VERSION.SDK_INT >= d10 ? 1 : 2;
        }
        int i9 = Build.VERSION.SDK_INT;
        return (d10 > i9 || i9 > e10) ? 2 : 1;
    }

    private static int a(String str, d.a aVar) {
        String c10 = aVar.c();
        if (TextUtils.isEmpty(c10)) {
            return 3;
        }
        return Pattern.matches(c10, str) ? 1 : 2;
    }

    /* JADX WARN: Code restructure failed: missing block: B:27:0x00aa, code lost:
        if (r9.size() == 1) goto L30;
     */
    /* JADX WARN: Code restructure failed: missing block: B:52:0x010e, code lost:
        if (r4.size() > 0) goto L43;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static cn.jpush.android.x.d.a a(java.lang.String r9) {
        /*
            Method dump skipped, instructions count: 274
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: cn.jpush.android.w.b.a(java.lang.String):cn.jpush.android.x.d$a");
    }

    private static void a(int i9, String str, List<d.a> list, List<d.a> list2, List<d.a> list3) {
        Logger.d("InAppMatchesConfigUtils", "matches type:" + i9 + ",value:" + str);
        for (int i10 = 0; i10 < list.size(); i10++) {
            d.a aVar = list.get(i10);
            if (!TextUtils.isEmpty(aVar.f())) {
                int i11 = 4;
                if (i9 == 1) {
                    i11 = a(str, aVar);
                } else if (i9 == 2) {
                    i11 = a(aVar);
                } else if (i9 == 3) {
                    i11 = b(str, aVar);
                }
                if (i11 == 1) {
                    list2.add(aVar);
                } else if (i11 == 3) {
                    list3.add(aVar);
                }
            }
        }
    }

    private static int b(String str, d.a aVar) {
        String b10 = aVar.b();
        if (TextUtils.isEmpty(b10)) {
            return 3;
        }
        return Pattern.matches(b10, str) ? 1 : 2;
    }

    private static cn.jpush.android.x.d b(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        try {
            cn.jpush.android.x.d dVar = new cn.jpush.android.x.d();
            ArrayList arrayList = new ArrayList();
            JSONArray jSONArray = new JSONArray(str);
            for (int i9 = 0; i9 < jSONArray.length(); i9++) {
                JSONObject jSONObject = jSONArray.getJSONObject(i9);
                d.a aVar = new d.a();
                int optInt = jSONObject.optInt("version", -1);
                String optString = jSONObject.optString("manufacturer", null);
                String optString2 = jSONObject.optString(DeviceRequestsHelper.DEVICE_INFO_MODEL, null);
                String optString3 = jSONObject.optString("rom", null);
                int optInt2 = jSONObject.optInt("android_min", -1);
                int optInt3 = jSONObject.optInt("android_max", -1);
                String optString4 = jSONObject.optString("file_path", null);
                aVar.a(optInt);
                aVar.a(optString);
                aVar.b(optString2);
                aVar.c(optString3);
                aVar.b(optInt2);
                aVar.c(optInt3);
                aVar.d(optString4);
                arrayList.add(aVar);
            }
            dVar.a(arrayList);
            return dVar;
        } catch (Throwable unused) {
            return null;
        }
    }
}
