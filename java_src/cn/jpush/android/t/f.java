package cn.jpush.android.t;

import android.content.Context;
import android.text.TextUtils;
import cn.jpush.android.af.j;
import cn.jpush.android.helper.Logger;
import java.io.Closeable;
import java.io.File;
import java.io.FileInputStream;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import org.json.JSONObject;
/* loaded from: classes.dex */
public class f {
    public static ArrayList<String> a(ArrayList<String> arrayList, Context context, String str, String str2) {
        return a(arrayList, context, str, str2, true);
    }

    public static ArrayList<String> a(ArrayList<String> arrayList, Context context, String str, String str2, boolean z10) {
        String str3;
        ArrayList<String> arrayList2 = new ArrayList<>();
        Logger.v("InAppTemplateHelper", "action:loadH5TemplateImageResources - urlPrefix:" + str);
        boolean z11 = false;
        try {
            boolean z12 = true;
            if (!cn.jpush.android.af.a.c(str) || context == null || arrayList.size() <= 0 || TextUtils.isEmpty(str2)) {
                z11 = true;
            } else {
                Iterator<String> it = arrayList.iterator();
                while (it.hasNext()) {
                    String next = it.next();
                    if (TextUtils.isEmpty(next) || next.startsWith("http://") || next.startsWith("https://")) {
                        str3 = next;
                    } else {
                        str3 = str + next;
                    }
                    byte[] a10 = cn.jpush.android.z.a.a(str3, 3, 1048576);
                    if (a10 != null) {
                        Logger.d("InAppTemplateHelper", "download image resource success, path: " + next);
                        if (next.startsWith("http://") || next.startsWith("https://")) {
                            next = cn.jpush.android.af.c.b(next);
                        }
                        String str4 = cn.jpush.android.af.c.a(context, "h5_tpl_imgs", 0, z10) + next;
                        boolean a11 = cn.jpush.android.af.c.a(str4, a10);
                        if (a11) {
                            arrayList2.add(str4);
                            Logger.d("InAppTemplateHelper", "download image resource cache to local success, path: " + str4);
                        }
                        Logger.v("InAppTemplateHelper", "Succeed to load image - " + str4 + ", cache local status: " + a11);
                    } else {
                        Logger.w("InAppTemplateHelper", "download image resource failed, path: " + str3);
                        z12 = false;
                    }
                }
                Logger.i("InAppTemplateHelper", "template image resource download completed. local image list: " + arrayList2.toString());
                z11 = z12;
            }
        } catch (Throwable th2) {
            Logger.w("InAppTemplateHelper", "load h5 template image resource failed, " + th2.getMessage());
        }
        if (z11) {
            return arrayList2;
        }
        return null;
    }

    public static LinkedHashMap<String, cn.jpush.android.x.f> a(Context context) {
        LinkedHashMap<String, cn.jpush.android.x.f> linkedHashMap = new LinkedHashMap<>();
        if (context == null) {
            Logger.w("InAppTemplateHelper", "unexcepted , context is null");
            return linkedHashMap;
        }
        FileInputStream fileInputStream = null;
        try {
            File a10 = cn.jpush.android.af.c.a(context, "tpl.cfg.cache");
            if (a10 != null && a10.exists()) {
                FileInputStream fileInputStream2 = new FileInputStream(a10);
                try {
                    JSONObject jSONObject = new JSONObject(new String(j.a((InputStream) fileInputStream2)));
                    Iterator<String> keys = jSONObject.keys();
                    while (keys.hasNext()) {
                        cn.jpush.android.x.f a11 = cn.jpush.android.x.f.a(jSONObject.getJSONObject(keys.next()));
                        if (a11 != null) {
                            linkedHashMap.put(a11.f3535a, a11);
                        }
                    }
                    fileInputStream = fileInputStream2;
                } catch (Throwable th2) {
                    th = th2;
                    fileInputStream = fileInputStream2;
                    try {
                        Logger.w("InAppTemplateHelper", "load objects error:" + th.getMessage());
                        return linkedHashMap;
                    } finally {
                        j.a((Closeable) fileInputStream);
                    }
                }
            }
        } catch (Throwable th3) {
            th = th3;
        }
        return linkedHashMap;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static LinkedHashMap<String, cn.jpush.android.x.f> a(LinkedHashMap<String, cn.jpush.android.x.f> linkedHashMap) {
        LinkedHashMap<String, cn.jpush.android.x.f> linkedHashMap2 = new LinkedHashMap<>();
        try {
            ArrayList<Map.Entry> arrayList = new ArrayList(linkedHashMap.entrySet());
            Collections.sort(arrayList, new Comparator<Map.Entry<String, cn.jpush.android.x.f>>() { // from class: cn.jpush.android.t.f.1
                @Override // java.util.Comparator
                /* renamed from: a */
                public int compare(Map.Entry<String, cn.jpush.android.x.f> entry, Map.Entry<String, cn.jpush.android.x.f> entry2) {
                    if (entry2.getValue().f3537c > entry.getValue().f3537c) {
                        return 1;
                    }
                    return entry2.getValue().f3537c < entry.getValue().f3537c ? -1 : 0;
                }
            });
            for (Map.Entry entry : arrayList) {
                linkedHashMap2.put(entry.getKey(), entry.getValue());
            }
        } catch (Throwable th2) {
            Logger.w("InAppTemplateHelper", "sort template file map filed. error: " + th2.getMessage());
        }
        return linkedHashMap2;
    }

    public static void a(Context context, LinkedHashMap<String, cn.jpush.android.x.f> linkedHashMap) {
        try {
            File a10 = cn.jpush.android.af.c.a(context, "tpl.cfg.cache");
            if (a10 != null) {
                JSONObject jSONObject = new JSONObject();
                if (linkedHashMap.size() > 20) {
                    linkedHashMap = a(linkedHashMap);
                }
                int i9 = 0;
                for (Map.Entry<String, cn.jpush.android.x.f> entry : linkedHashMap.entrySet()) {
                    cn.jpush.android.x.f value = entry.getValue();
                    if (i9 < 20) {
                        jSONObject.put(entry.getKey(), value.a());
                    } else {
                        String str = value.f3536b;
                        File file = new File(str);
                        if (file.exists() && file.isFile()) {
                            file.delete();
                            Logger.d("InAppTemplateHelper", "exceed max template cache count, delete old template file: " + str + ", maxCacheCount: 20");
                        }
                    }
                    i9++;
                }
                Logger.d("InAppTemplateHelper", "[saveTemplateConfig] template config info: " + jSONObject.toString() + ", templateSize: " + linkedHashMap.values().size());
                cn.jpush.android.af.c.a(a10.getAbsolutePath(), jSONObject.toString());
            }
        } catch (Throwable th2) {
            Logger.w("InAppTemplateHelper", "save template config to file failed. error: " + th2.getMessage());
        }
    }
}
