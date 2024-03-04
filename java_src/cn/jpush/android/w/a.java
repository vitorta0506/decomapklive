package cn.jpush.android.w;

import android.content.Context;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import cn.jpush.android.af.j;
import cn.jpush.android.helper.Logger;
import cn.jpush.android.x.a;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONObject;
/* loaded from: classes.dex */
public class a {

    /* renamed from: a  reason: collision with root package name */
    private static int f3419a = -1;

    /* renamed from: b  reason: collision with root package name */
    private static int f3420b = -1;

    /* renamed from: c  reason: collision with root package name */
    private static cn.jpush.android.x.a f3421c;

    private static float a(List<List<a.b.C0051a>> list) {
        float f10 = 0.0f;
        if (list != null && list.size() > 0) {
            for (int i9 = 0; i9 < list.size(); i9++) {
                for (a.b.C0051a c0051a : list.get(i9)) {
                    if ("translationY".equals(c0051a.f3472a)) {
                        for (Float f11 : c0051a.f3473b) {
                            if (f11.floatValue() > f10) {
                                f10 = f11.floatValue();
                            }
                        }
                    }
                }
            }
        }
        return f10;
    }

    private static int a(Context context, float f10) {
        d(context);
        int i9 = (int) ((f3419a * f10) / 100.0f);
        Logger.d("InAppAniConfigUtils", "getW proportion:" + f10 + ",w:" + i9);
        return i9;
    }

    private static cn.jpush.android.x.a a(String str) {
        try {
            if (TextUtils.isEmpty(str)) {
                return null;
            }
            JSONObject jSONObject = new JSONObject(str);
            Logger.d("InAppAniConfigUtils", "dataJson: " + jSONObject);
            JSONObject optJSONObject = jSONObject.optJSONObject("in_app_banner");
            if (optJSONObject != null) {
                return cn.jpush.android.x.a.a().a(optJSONObject.optString("shake")).b(optJSONObject.optString("animator")).c(optJSONObject.optString("container")).d(optJSONObject.optString("h5_extras")).a();
            }
            return null;
        } catch (Throwable th2) {
            Logger.w("InAppAniConfigUtils", "build animator config failed, " + th2.getMessage());
            return null;
        }
    }

    public static List<Long> a(Context context) {
        cn.jpush.android.x.a e10 = e(context);
        return e10 == null ? new ArrayList() : e10.f3465b;
    }

    public static List<List<a.b.C0051a>> a(Context context, boolean z10) {
        a.b bVar;
        List<List<a.b.C0051a>> arrayList = new ArrayList<>();
        cn.jpush.android.x.a e10 = e(context);
        if (e10 != null && (bVar = e10.f3466c) != null) {
            if (z10) {
                a.b.C0052b c0052b = bVar.f3470a;
                if (c0052b != null) {
                    arrayList = c0052b.f3475a;
                }
            } else {
                a.b.C0052b c0052b2 = bVar.f3471b;
                if (c0052b2 != null) {
                    arrayList = c0052b2.f3475a;
                }
            }
        }
        Logger.d("InAppAniConfigUtils", "landscape:" + z10);
        Logger.d("InAppAniConfigUtils", "getAnimatorShow:" + arrayList);
        return arrayList == null ? new ArrayList() : arrayList;
    }

    private static float b(List<List<a.b.C0051a>> list) {
        List<Float> list2;
        float f10 = 0.0f;
        if (list != null && list.size() > 0) {
            for (int i9 = 0; i9 < list.size(); i9++) {
                for (a.b.C0051a c0051a : list.get(i9)) {
                    if ("translationY".equals(c0051a.f3472a) && (list2 = c0051a.f3473b) != null && list2.size() > 0) {
                        f10 = list2.get(list2.size() - 1).floatValue();
                    }
                }
            }
        }
        return f10;
    }

    public static List<List<a.b.C0051a>> b(Context context, boolean z10) {
        a.b bVar;
        List<List<a.b.C0051a>> arrayList = new ArrayList<>();
        cn.jpush.android.x.a e10 = e(context);
        if (e10 != null && (bVar = e10.f3466c) != null) {
            if (z10) {
                a.b.C0052b c0052b = bVar.f3470a;
                if (c0052b != null) {
                    arrayList = c0052b.f3476b;
                }
            } else {
                a.b.C0052b c0052b2 = bVar.f3471b;
                if (c0052b2 != null) {
                    arrayList = c0052b2.f3476b;
                }
            }
        }
        Logger.d("InAppAniConfigUtils", "landscape:" + z10);
        Logger.d("InAppAniConfigUtils", "getAnimatorHide:" + arrayList);
        return arrayList == null ? new ArrayList() : arrayList;
    }

    public static JSONObject b(Context context) {
        JSONObject jSONObject = new JSONObject();
        try {
            if (e(context) != null) {
                JSONObject jSONObject2 = new JSONObject();
                jSONObject2.put("w", g(context, true));
                jSONObject2.put("h", h(context, true));
                JSONObject jSONObject3 = new JSONObject();
                jSONObject3.put("w", g(context, false));
                jSONObject3.put("h", h(context, false));
                jSONObject.put("landscape", jSONObject2);
                jSONObject.put("portrait", jSONObject3);
            }
            Logger.d("InAppAniConfigUtils", "containerJSON:" + jSONObject.toString());
        } catch (Throwable unused) {
        }
        return jSONObject;
    }

    public static int c(Context context, boolean z10) {
        return h(context, z10) + a(context, a(a(context, z10)));
    }

    public static String c(Context context) {
        cn.jpush.android.x.a e10 = e(context);
        return e10 == null ? "" : e10.f3468e;
    }

    public static int d(Context context, boolean z10) {
        return h(context, z10) + a(context, a(b(context, z10)));
    }

    private static void d(Context context) {
        DisplayMetrics a10 = j.a(context);
        f3419a = a10.widthPixels;
        f3420b = a10.heightPixels;
        Logger.d("InAppAniConfigUtils", "initScreen screenW:" + f3419a + ",screenH:" + f3420b);
        StringBuilder sb2 = new StringBuilder();
        sb2.append("initScreen metrics:");
        sb2.append(a10);
        Logger.d("InAppAniConfigUtils", sb2.toString());
    }

    public static int e(Context context, boolean z10) {
        return h(context, z10) + a(context, b(a(context, z10)));
    }

    private static cn.jpush.android.x.a e(Context context) {
        if (f3421c == null) {
            cn.jpush.android.x.a a10 = a(cn.jpush.android.v.a.a().a(context));
            if (a10 == null) {
                a10 = a(cn.jpush.android.x.a.f3464a);
            }
            f3421c = a10;
        }
        return f3421c;
    }

    public static int f(Context context, boolean z10) {
        return h(context, z10) + a(context, b(b(context, z10)));
    }

    public static int g(Context context, boolean z10) {
        a.c cVar;
        cn.jpush.android.x.a e10 = e(context);
        float f10 = 0.0f;
        if (e10 != null && (cVar = e10.f3467d) != null) {
            if (z10) {
                a.c.C0053a c0053a = cVar.f3477a;
                if (c0053a != null) {
                    f10 = c0053a.f3479a;
                }
            } else {
                a.c.C0053a c0053a2 = cVar.f3478b;
                if (c0053a2 != null) {
                    f10 = c0053a2.f3479a;
                }
            }
        }
        return a(context, f10);
    }

    public static int h(Context context, boolean z10) {
        a.c cVar;
        cn.jpush.android.x.a e10 = e(context);
        float f10 = 0.0f;
        if (e10 != null && (cVar = e10.f3467d) != null) {
            if (z10) {
                a.c.C0053a c0053a = cVar.f3477a;
                if (c0053a != null) {
                    f10 = c0053a.f3480b;
                }
            } else {
                a.c.C0053a c0053a2 = cVar.f3478b;
                if (c0053a2 != null) {
                    f10 = c0053a2.f3480b;
                }
            }
        }
        Logger.e("InAppAniConfigUtils", "getContainerHeight proportionH:" + f10);
        return a(context, f10);
    }
}
