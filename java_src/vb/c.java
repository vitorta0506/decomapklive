package vb;

import android.content.ComponentName;
import android.content.Context;
import android.content.pm.PackageManager;
import android.content.pm.ServiceInfo;
import android.os.Bundle;
import android.util.Log;
import com.facebook.internal.security.CertificateUtil;
import com.huawei.agconnect.core.ServiceDiscovery;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
/* loaded from: classes4.dex */
public class c {

    /* renamed from: a  reason: collision with root package name */
    private final Context f59084a;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes4.dex */
    public static class b implements Serializable, Comparator<Map.Entry<String, Integer>> {
        private b() {
        }

        @Override // java.util.Comparator
        /* renamed from: a */
        public int compare(Map.Entry<String, Integer> entry, Map.Entry<String, Integer> entry2) {
            return entry.getValue().intValue() - entry2.getValue().intValue();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public c(Context context) {
        this.f59084a = context;
    }

    private <T extends ub.b> T b(String str) {
        StringBuilder sb2;
        String localizedMessage;
        String sb3;
        try {
            Class<?> cls = Class.forName(str);
            if (ub.b.class.isAssignableFrom(cls)) {
                return (T) Class.forName(str).newInstance();
            }
            Log.e("ServiceRegistrarParser", cls + " must extends from ServiceRegistrar.");
            return null;
        } catch (ClassNotFoundException e10) {
            sb3 = "Can not found service class, " + e10.getMessage();
            Log.e("ServiceRegistrarParser", sb3);
            return null;
        } catch (IllegalAccessException e11) {
            sb2 = new StringBuilder();
            sb2.append("instantiate service class exception ");
            localizedMessage = e11.getLocalizedMessage();
            sb2.append(localizedMessage);
            sb3 = sb2.toString();
            Log.e("ServiceRegistrarParser", sb3);
            return null;
        } catch (InstantiationException e12) {
            sb2 = new StringBuilder();
            sb2.append("instantiate service class exception ");
            localizedMessage = e12.getLocalizedMessage();
            sb2.append(localizedMessage);
            sb3 = sb2.toString();
            Log.e("ServiceRegistrarParser", sb3);
            return null;
        }
    }

    private List<String> c() {
        StringBuilder sb2;
        ArrayList arrayList = new ArrayList();
        Bundle d10 = d();
        if (d10 == null) {
            return arrayList;
        }
        HashMap hashMap = new HashMap(10);
        for (String str : d10.keySet()) {
            if ("com.huawei.agconnect.core.ServiceRegistrar".equals(d10.getString(str))) {
                String[] split = str.split(CertificateUtil.DELIMITER);
                if (split.length == 2) {
                    try {
                        hashMap.put(split[0], Integer.valueOf(split[1]));
                    } catch (NumberFormatException e10) {
                        sb2 = new StringBuilder();
                        sb2.append("registrar configuration format error:");
                        str = e10.getMessage();
                    }
                } else if (split.length == 1) {
                    hashMap.put(split[0], 1000);
                } else {
                    sb2 = new StringBuilder();
                    sb2.append("registrar configuration error, ");
                    sb2.append(str);
                    Log.e("ServiceRegistrarParser", sb2.toString());
                }
            }
        }
        ArrayList<Map.Entry> arrayList2 = new ArrayList(hashMap.entrySet());
        Collections.sort(arrayList2, new b());
        for (Map.Entry entry : arrayList2) {
            arrayList.add(entry.getKey());
        }
        return arrayList;
    }

    private Bundle d() {
        ServiceInfo serviceInfo;
        PackageManager packageManager = this.f59084a.getPackageManager();
        if (packageManager == null) {
            return null;
        }
        try {
            serviceInfo = packageManager.getServiceInfo(new ComponentName(this.f59084a, ServiceDiscovery.class), 128);
        } catch (PackageManager.NameNotFoundException e10) {
            Log.e("ServiceRegistrarParser", "get ServiceDiscovery exception." + e10.getLocalizedMessage());
        }
        if (serviceInfo == null) {
            Log.e("ServiceRegistrarParser", "Can not found ServiceDiscovery service.");
            return null;
        }
        return serviceInfo.metaData;
    }

    public List<ub.a> a() {
        Log.i("ServiceRegistrarParser", "getServices");
        List<String> c10 = c();
        ArrayList arrayList = new ArrayList();
        for (String str : c10) {
            ub.b b10 = b(str);
            if (b10 != null) {
                b10.b(this.f59084a);
                List<ub.a> a10 = b10.a(this.f59084a);
                if (a10 != null) {
                    arrayList.addAll(a10);
                }
            }
        }
        Log.i("ServiceRegistrarParser", "services:" + Integer.valueOf(arrayList.size()));
        return arrayList;
    }
}
