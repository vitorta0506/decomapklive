package cn.jiguang.aq;

import android.text.TextUtils;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes.dex */
public class d {
    public static List<cn.jiguang.ap.c> a(String str, String str2, String str3, int i9) {
        List<cn.jiguang.ap.c> list;
        cn.jiguang.ap.c cVar = new cn.jiguang.ap.c();
        cVar.f2013a = str2;
        cVar.f2014b = str3;
        if (str == null || TextUtils.isEmpty(str)) {
            list = null;
        } else {
            list = c.a(str);
            cn.jiguang.al.a.a("JWakePackageHelper", "cache cmd wakeTargets:" + list);
        }
        if (list != null && !list.isEmpty()) {
            int size = list.size() - 1;
            while (true) {
                if (size >= 0) {
                    if (list.get(size).f2013a.equals(str2) && list.get(size).f2014b.equals(str3)) {
                        list.remove(size);
                        break;
                    }
                    size--;
                } else {
                    break;
                }
            }
        }
        if (list == null) {
            list = new ArrayList<>();
        }
        if (i9 == 1) {
            list.add(cVar);
        }
        return list;
    }
}
