package com.tencent.bugly.proguard;

import android.content.Context;
import android.text.TextUtils;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.tencent.bugly.crashreport.biz.UserInfoBean;
import com.tencent.bugly.crashreport.common.strategy.StrategyBean;
import java.lang.reflect.Array;
import java.net.InetAddress;
import java.net.InetSocketAddress;
import java.net.Proxy;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
/* loaded from: classes4.dex */
public class a {

    /* renamed from: e  reason: collision with root package name */
    private static Proxy f30432e;

    /* renamed from: a  reason: collision with root package name */
    protected HashMap<String, HashMap<String, byte[]>> f30433a = new HashMap<>();

    /* renamed from: b  reason: collision with root package name */
    protected String f30434b;

    /* renamed from: c  reason: collision with root package name */
    i f30435c;

    /* renamed from: d  reason: collision with root package name */
    private HashMap<String, Object> f30436d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public a() {
        new HashMap();
        this.f30436d = new HashMap<>();
        this.f30434b = "GBK";
        this.f30435c = new i();
    }

    public static void a(String str, int i9) {
        if (TextUtils.isEmpty(str)) {
            f30432e = null;
        } else {
            f30432e = new Proxy(Proxy.Type.HTTP, new InetSocketAddress(str, i9));
        }
    }

    public static Proxy b() {
        return f30432e;
    }

    public static an b(byte[] bArr) {
        if (bArr != null) {
            try {
                d dVar = new d();
                dVar.c();
                dVar.a("utf-8");
                dVar.a(bArr);
                Object b10 = dVar.b("detail", new an());
                if (an.class.isInstance(b10)) {
                    return (an) an.class.cast(b10);
                }
                return null;
            } catch (Throwable th2) {
                if (!x.b(th2)) {
                    th2.printStackTrace();
                }
            }
        }
        return null;
    }

    public static void a(InetAddress inetAddress, int i9) {
        if (inetAddress == null) {
            f30432e = null;
        } else {
            f30432e = new Proxy(Proxy.Type.HTTP, new InetSocketAddress(inetAddress, i9));
        }
    }

    public void a(String str) {
        this.f30434b = str;
    }

    public static aq a(UserInfoBean userInfoBean) {
        if (userInfoBean == null) {
            return null;
        }
        aq aqVar = new aq();
        aqVar.f30542a = userInfoBean.f30133e;
        aqVar.f30546e = userInfoBean.f30138j;
        aqVar.f30545d = userInfoBean.f30131c;
        aqVar.f30544c = userInfoBean.f30132d;
        aqVar.f30548g = userInfoBean.f30143o == 1;
        int i9 = userInfoBean.f30130b;
        if (i9 == 1) {
            aqVar.f30543b = (byte) 1;
        } else if (i9 == 2) {
            aqVar.f30543b = (byte) 4;
        } else if (i9 == 3) {
            aqVar.f30543b = (byte) 2;
        } else if (i9 == 4) {
            aqVar.f30543b = (byte) 3;
        } else if (i9 < 10 || i9 >= 20) {
            x.e("unknown uinfo type %d ", Integer.valueOf(i9));
            return null;
        } else {
            aqVar.f30543b = (byte) i9;
        }
        HashMap hashMap = new HashMap();
        aqVar.f30547f = hashMap;
        if (userInfoBean.f30144p >= 0) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append(userInfoBean.f30144p);
            hashMap.put("C01", sb2.toString());
        }
        if (userInfoBean.f30145q >= 0) {
            Map<String, String> map = aqVar.f30547f;
            StringBuilder sb3 = new StringBuilder();
            sb3.append(userInfoBean.f30145q);
            map.put("C02", sb3.toString());
        }
        Map<String, String> map2 = userInfoBean.f30146r;
        if (map2 != null && map2.size() > 0) {
            for (Map.Entry<String, String> entry : userInfoBean.f30146r.entrySet()) {
                Map<String, String> map3 = aqVar.f30547f;
                map3.put("C03_" + entry.getKey(), entry.getValue());
            }
        }
        Map<String, String> map4 = userInfoBean.f30147s;
        if (map4 != null && map4.size() > 0) {
            for (Map.Entry<String, String> entry2 : userInfoBean.f30147s.entrySet()) {
                Map<String, String> map5 = aqVar.f30547f;
                map5.put("C04_" + entry2.getKey(), entry2.getValue());
            }
        }
        Map<String, String> map6 = aqVar.f30547f;
        StringBuilder sb4 = new StringBuilder();
        sb4.append(!userInfoBean.f30140l);
        map6.put("A36", sb4.toString());
        Map<String, String> map7 = aqVar.f30547f;
        StringBuilder sb5 = new StringBuilder();
        sb5.append(userInfoBean.f30135g);
        map7.put("F02", sb5.toString());
        Map<String, String> map8 = aqVar.f30547f;
        StringBuilder sb6 = new StringBuilder();
        sb6.append(userInfoBean.f30136h);
        map8.put("F03", sb6.toString());
        Map<String, String> map9 = aqVar.f30547f;
        map9.put("F04", userInfoBean.f30138j);
        Map<String, String> map10 = aqVar.f30547f;
        StringBuilder sb7 = new StringBuilder();
        sb7.append(userInfoBean.f30137i);
        map10.put("F05", sb7.toString());
        Map<String, String> map11 = aqVar.f30547f;
        map11.put("F06", userInfoBean.f30141m);
        Map<String, String> map12 = aqVar.f30547f;
        StringBuilder sb8 = new StringBuilder();
        sb8.append(userInfoBean.f30139k);
        map12.put("F10", sb8.toString());
        x.c("summary type %d vm:%d", Byte.valueOf(aqVar.f30543b), Integer.valueOf(aqVar.f30547f.size()));
        return aqVar;
    }

    public static String a(ArrayList<String> arrayList) {
        int i9;
        int i10;
        int i11;
        StringBuffer stringBuffer = new StringBuffer();
        int i12 = 0;
        while (true) {
            String str = "map";
            if (i12 < arrayList.size()) {
                String str2 = arrayList.get(i12);
                if (str2.equals("java.lang.Integer") || str2.equals("int")) {
                    str = "int32";
                } else if (str2.equals("java.lang.Boolean") || str2.equals(TypedValues.Custom.S_BOOLEAN)) {
                    str = "bool";
                } else if (str2.equals("java.lang.Byte") || str2.equals("byte")) {
                    str = "char";
                } else if (str2.equals("java.lang.Double") || str2.equals("double")) {
                    str = "double";
                } else if (str2.equals("java.lang.Float") || str2.equals(TypedValues.Custom.S_FLOAT)) {
                    str = TypedValues.Custom.S_FLOAT;
                } else if (str2.equals("java.lang.Long") || str2.equals("long")) {
                    str = "int64";
                } else if (str2.equals("java.lang.Short") || str2.equals("short")) {
                    str = "short";
                } else if (str2.equals("java.lang.Character")) {
                    throw new IllegalArgumentException("can not support java.lang.Character");
                } else {
                    if (str2.equals("java.lang.String")) {
                        str = TypedValues.Custom.S_STRING;
                    } else if (str2.equals("java.util.List")) {
                        str = "list";
                    } else if (!str2.equals("java.util.Map")) {
                        str = str2;
                    }
                }
                arrayList.set(i12, str);
                i12++;
            } else {
                Collections.reverse(arrayList);
                for (int i13 = 0; i13 < arrayList.size(); i13++) {
                    String str3 = arrayList.get(i13);
                    if (str3.equals("list")) {
                        arrayList.set(i13 - 1, "<" + arrayList.get(i11));
                        arrayList.set(0, arrayList.get(0) + ">");
                    } else if (str3.equals("map")) {
                        arrayList.set(i13 - 1, "<" + arrayList.get(i10) + ",");
                        arrayList.set(0, arrayList.get(0) + ">");
                    } else if (str3.equals("Array")) {
                        arrayList.set(i13 - 1, "<" + arrayList.get(i9));
                        arrayList.set(0, arrayList.get(0) + ">");
                    }
                }
                Collections.reverse(arrayList);
                Iterator<String> it = arrayList.iterator();
                while (it.hasNext()) {
                    stringBuffer.append(it.next());
                }
                return stringBuffer.toString();
            }
        }
    }

    public <T> void a(String str, T t10) {
        if (str == null) {
            throw new IllegalArgumentException("put key can not is null");
        }
        if (t10 != null) {
            if (!(t10 instanceof Set)) {
                j jVar = new j();
                jVar.a(this.f30434b);
                jVar.a(t10, 0);
                byte[] a10 = l.a(jVar.a());
                HashMap<String, byte[]> hashMap = new HashMap<>(1);
                ArrayList<String> arrayList = new ArrayList<>(1);
                a(arrayList, t10);
                hashMap.put(a(arrayList), a10);
                this.f30436d.remove(str);
                this.f30433a.put(str, hashMap);
                return;
            }
            throw new IllegalArgumentException("can not support Set");
        }
        throw new IllegalArgumentException("put value can not is null");
    }

    public static ar a(List<UserInfoBean> list, int i9) {
        com.tencent.bugly.crashreport.common.info.a b10;
        if (list == null || list.size() == 0 || (b10 = com.tencent.bugly.crashreport.common.info.a.b()) == null) {
            return null;
        }
        b10.p();
        ar arVar = new ar();
        arVar.f30553b = b10.f30195d;
        arVar.f30554c = b10.h();
        ArrayList<aq> arrayList = new ArrayList<>();
        for (UserInfoBean userInfoBean : list) {
            aq a10 = a(userInfoBean);
            if (a10 != null) {
                arrayList.add(a10);
            }
        }
        arVar.f30555d = arrayList;
        HashMap hashMap = new HashMap();
        arVar.f30556e = hashMap;
        hashMap.put("A7", b10.f30198g);
        Map<String, String> map = arVar.f30556e;
        map.put("A6", b10.o());
        Map<String, String> map2 = arVar.f30556e;
        map2.put("A5", b10.n());
        Map<String, String> map3 = arVar.f30556e;
        StringBuilder sb2 = new StringBuilder();
        sb2.append(b10.l());
        map3.put("A2", sb2.toString());
        Map<String, String> map4 = arVar.f30556e;
        StringBuilder sb3 = new StringBuilder();
        sb3.append(b10.l());
        map4.put("A1", sb3.toString());
        Map<String, String> map5 = arVar.f30556e;
        map5.put("A24", b10.f30199h);
        Map<String, String> map6 = arVar.f30556e;
        StringBuilder sb4 = new StringBuilder();
        sb4.append(b10.m());
        map6.put("A17", sb4.toString());
        Map<String, String> map7 = arVar.f30556e;
        map7.put("A15", b10.r());
        Map<String, String> map8 = arVar.f30556e;
        StringBuilder sb5 = new StringBuilder();
        sb5.append(b10.s());
        map8.put("A13", sb5.toString());
        Map<String, String> map9 = arVar.f30556e;
        map9.put("F08", b10.f30213v);
        Map<String, String> map10 = arVar.f30556e;
        map10.put("F09", b10.f30214w);
        Map<String, String> z10 = b10.z();
        if (z10 != null && z10.size() > 0) {
            for (Map.Entry<String, String> entry : z10.entrySet()) {
                Map<String, String> map11 = arVar.f30556e;
                map11.put("C04_" + entry.getKey(), entry.getValue());
            }
        }
        if (i9 == 1) {
            arVar.f30552a = (byte) 1;
        } else if (i9 != 2) {
            x.e("unknown up type %d ", Integer.valueOf(i9));
            return null;
        } else {
            arVar.f30552a = (byte) 2;
        }
        return arVar;
    }

    public static <T extends k> T a(byte[] bArr, Class<T> cls) {
        if (bArr != null && bArr.length > 0) {
            try {
                T newInstance = cls.newInstance();
                i iVar = new i(bArr);
                iVar.a("utf-8");
                newInstance.a(iVar);
                return newInstance;
            } catch (Throwable th2) {
                if (!x.b(th2)) {
                    th2.printStackTrace();
                }
            }
        }
        return null;
    }

    public static am a(Context context, int i9, byte[] bArr) {
        String str;
        com.tencent.bugly.crashreport.common.info.a b10 = com.tencent.bugly.crashreport.common.info.a.b();
        StrategyBean c10 = com.tencent.bugly.crashreport.common.strategy.a.a().c();
        if (b10 != null && c10 != null) {
            try {
                am amVar = new am();
                synchronized (b10) {
                    amVar.f30490a = 1;
                    amVar.f30491b = b10.f();
                    amVar.f30492c = b10.f30194c;
                    amVar.f30493d = b10.f30201j;
                    amVar.f30494e = b10.f30203l;
                    amVar.f30495f = b10.f30197f;
                    amVar.f30496g = i9;
                    if (bArr == null) {
                        bArr = "".getBytes();
                    }
                    amVar.f30497h = bArr;
                    amVar.f30498i = b10.i();
                    amVar.f30499j = b10.f30199h;
                    amVar.f30500k = new HashMap();
                    amVar.f30501l = b10.e();
                    amVar.f30502m = c10.f30234n;
                    amVar.f30504o = b10.h();
                    amVar.f30505p = com.tencent.bugly.crashreport.common.info.b.b(context);
                    amVar.f30506q = System.currentTimeMillis();
                    amVar.f30507r = b10.j();
                    amVar.f30508s = b10.h();
                    amVar.f30509t = amVar.f30505p;
                    amVar.f30503n = "com.tencent.bugly";
                    Map<String, String> map = amVar.f30500k;
                    map.put("A26", b10.t());
                    Map<String, String> map2 = amVar.f30500k;
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append(b10.E());
                    map2.put("A62", sb2.toString());
                    Map<String, String> map3 = amVar.f30500k;
                    StringBuilder sb3 = new StringBuilder();
                    sb3.append(b10.F());
                    map3.put("A63", sb3.toString());
                    Map<String, String> map4 = amVar.f30500k;
                    StringBuilder sb4 = new StringBuilder();
                    sb4.append(b10.A);
                    map4.put("F11", sb4.toString());
                    Map<String, String> map5 = amVar.f30500k;
                    StringBuilder sb5 = new StringBuilder();
                    sb5.append(b10.f30217z);
                    map5.put("F12", sb5.toString());
                    Map<String, String> map6 = amVar.f30500k;
                    map6.put("D3", b10.f30202k);
                    List<com.tencent.bugly.a> list = com.tencent.bugly.b.f30122b;
                    if (list != null) {
                        for (com.tencent.bugly.a aVar : list) {
                            String str2 = aVar.versionKey;
                            if (str2 != null && (str = aVar.version) != null) {
                                amVar.f30500k.put(str2, str);
                            }
                        }
                    }
                    amVar.f30500k.put("G15", z.c("G15", ""));
                    amVar.f30500k.put("G10", z.c("G10", ""));
                    amVar.f30500k.put("D4", z.c("D4", "0"));
                }
                Map<String, String> y10 = b10.y();
                if (y10 != null) {
                    for (Map.Entry<String, String> entry : y10.entrySet()) {
                        amVar.f30500k.put(entry.getKey(), entry.getValue());
                    }
                }
                return amVar;
            } catch (Throwable th2) {
                if (!x.b(th2)) {
                    th2.printStackTrace();
                }
                return null;
            }
        }
        x.e("Can not create request pkg for parameters is invalid.", new Object[0]);
        return null;
    }

    private void a(ArrayList<String> arrayList, Object obj) {
        if (obj.getClass().isArray()) {
            if (obj.getClass().getComponentType().toString().equals("byte")) {
                if (Array.getLength(obj) > 0) {
                    arrayList.add("java.util.List");
                    a(arrayList, Array.get(obj, 0));
                    return;
                }
                arrayList.add("Array");
                arrayList.add("?");
                return;
            }
            throw new IllegalArgumentException("only byte[] is supported");
        } else if (!(obj instanceof Array)) {
            if (obj instanceof List) {
                arrayList.add("java.util.List");
                List list = (List) obj;
                if (list.size() > 0) {
                    a(arrayList, list.get(0));
                } else {
                    arrayList.add("?");
                }
            } else if (obj instanceof Map) {
                arrayList.add("java.util.Map");
                Map map = (Map) obj;
                if (map.size() > 0) {
                    Object next = map.keySet().iterator().next();
                    Object obj2 = map.get(next);
                    arrayList.add(next.getClass().getName());
                    a(arrayList, obj2);
                    return;
                }
                arrayList.add("?");
                arrayList.add("?");
            } else {
                arrayList.add(obj.getClass().getName());
            }
        } else {
            throw new IllegalArgumentException("can not support Array, please use List");
        }
    }

    public byte[] a() {
        j jVar = new j(0);
        jVar.a(this.f30434b);
        jVar.a((Map) this.f30433a, 0);
        return l.a(jVar.a());
    }

    public static byte[] a(Object obj) {
        try {
            d dVar = new d();
            dVar.c();
            dVar.a("utf-8");
            dVar.a(1);
            dVar.b("RqdServer");
            dVar.c("sync");
            dVar.a("detail", (String) obj);
            return dVar.a();
        } catch (Throwable th2) {
            if (x.b(th2)) {
                return null;
            }
            th2.printStackTrace();
            return null;
        }
    }

    public void a(byte[] bArr) {
        this.f30435c.a(bArr);
        this.f30435c.a(this.f30434b);
        HashMap hashMap = new HashMap(1);
        HashMap hashMap2 = new HashMap(1);
        hashMap2.put("", new byte[0]);
        hashMap.put("", hashMap2);
        this.f30433a = this.f30435c.a((Map) hashMap, 0, false);
    }

    public static byte[] a(k kVar) {
        try {
            j jVar = new j();
            jVar.a("utf-8");
            kVar.a(jVar);
            return jVar.b();
        } catch (Throwable th2) {
            if (x.b(th2)) {
                return null;
            }
            th2.printStackTrace();
            return null;
        }
    }
}
