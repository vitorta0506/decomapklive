package com.google.android.gms.measurement.internal;

import android.os.Bundle;
import com.huawei.hms.framework.common.ContainerUtils;
import java.util.ArrayList;
import java.util.concurrent.atomic.AtomicReference;
import okhttp3.HttpUrl;
/* loaded from: classes2.dex */
public final class e3 {

    /* renamed from: b  reason: collision with root package name */
    protected static final AtomicReference f9382b = new AtomicReference();

    /* renamed from: c  reason: collision with root package name */
    protected static final AtomicReference f9383c = new AtomicReference();

    /* renamed from: d  reason: collision with root package name */
    protected static final AtomicReference f9384d = new AtomicReference();

    /* renamed from: a  reason: collision with root package name */
    private final p4.f f9385a;

    public e3(p4.f fVar) {
        this.f9385a = fVar;
    }

    private static final String g(String str, String[] strArr, String[] strArr2, AtomicReference atomicReference) {
        String str2;
        com.google.android.gms.common.internal.p.j(strArr);
        com.google.android.gms.common.internal.p.j(strArr2);
        com.google.android.gms.common.internal.p.j(atomicReference);
        com.google.android.gms.common.internal.p.a(strArr.length == strArr2.length);
        for (int i9 = 0; i9 < strArr.length; i9++) {
            String str3 = strArr[i9];
            if (str == str3 || str.equals(str3)) {
                synchronized (atomicReference) {
                    String[] strArr3 = (String[]) atomicReference.get();
                    if (strArr3 == null) {
                        strArr3 = new String[strArr2.length];
                        atomicReference.set(strArr3);
                    }
                    str2 = strArr3[i9];
                    if (str2 == null) {
                        str2 = strArr2[i9] + "(" + strArr[i9] + ")";
                        strArr3[i9] = str2;
                    }
                }
                return str2;
            }
        }
        return str;
    }

    protected final String a(Object[] objArr) {
        String valueOf;
        if (objArr == null) {
            return HttpUrl.PATH_SEGMENT_ENCODE_SET_URI;
        }
        StringBuilder sb2 = new StringBuilder();
        sb2.append("[");
        for (Object obj : objArr) {
            if (obj instanceof Bundle) {
                valueOf = b((Bundle) obj);
            } else {
                valueOf = String.valueOf(obj);
            }
            if (valueOf != null) {
                if (sb2.length() != 1) {
                    sb2.append(", ");
                }
                sb2.append(valueOf);
            }
        }
        sb2.append("]");
        return sb2.toString();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final String b(Bundle bundle) {
        String valueOf;
        if (bundle == null) {
            return null;
        }
        if (!this.f9385a.zza()) {
            return bundle.toString();
        }
        StringBuilder sb2 = new StringBuilder();
        sb2.append("Bundle[{");
        for (String str : bundle.keySet()) {
            if (sb2.length() != 8) {
                sb2.append(", ");
            }
            sb2.append(e(str));
            sb2.append(ContainerUtils.KEY_VALUE_DELIMITER);
            Object obj = bundle.get(str);
            if (obj instanceof Bundle) {
                valueOf = a(new Object[]{obj});
            } else if (obj instanceof Object[]) {
                valueOf = a((Object[]) obj);
            } else if (obj instanceof ArrayList) {
                valueOf = a(((ArrayList) obj).toArray());
            } else {
                valueOf = String.valueOf(obj);
            }
            sb2.append(valueOf);
        }
        sb2.append("}]");
        return sb2.toString();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final String c(zzaw zzawVar) {
        String b10;
        if (!this.f9385a.zza()) {
            return zzawVar.toString();
        }
        StringBuilder sb2 = new StringBuilder();
        sb2.append("origin=");
        sb2.append(zzawVar.zzc);
        sb2.append(",name=");
        sb2.append(d(zzawVar.zza));
        sb2.append(",params=");
        zzau zzauVar = zzawVar.zzb;
        if (zzauVar == null) {
            b10 = null;
        } else if (!this.f9385a.zza()) {
            b10 = zzauVar.toString();
        } else {
            b10 = b(zzauVar.L());
        }
        sb2.append(b10);
        return sb2.toString();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final String d(String str) {
        if (str == null) {
            return null;
        }
        return !this.f9385a.zza() ? str : g(str, p4.p.f56734c, p4.p.f56732a, f9382b);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final String e(String str) {
        if (str == null) {
            return null;
        }
        return !this.f9385a.zza() ? str : g(str, p4.q.f56737b, p4.q.f56736a, f9383c);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final String f(String str) {
        if (str == null) {
            return null;
        }
        if (this.f9385a.zza()) {
            if (str.startsWith("_exp_")) {
                return "experiment_id(" + str + ")";
            }
            return g(str, p4.r.f56741b, p4.r.f56740a, f9384d);
        }
        return str;
    }
}
