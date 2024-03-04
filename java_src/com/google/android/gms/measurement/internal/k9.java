package com.google.android.gms.measurement.internal;

import android.content.ComponentName;
import android.content.Context;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.ServiceInfo;
import android.content.pm.Signature;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.RemoteException;
import android.text.TextUtils;
import androidx.annotation.WorkerThread;
import com.facebook.share.internal.ShareConstants;
import java.io.ByteArrayInputStream;
import java.math.BigInteger;
import java.net.MalformedURLException;
import java.net.URL;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.security.SecureRandom;
import java.security.cert.CertificateException;
import java.security.cert.CertificateFactory;
import java.security.cert.X509Certificate;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Random;
import java.util.TreeSet;
import java.util.concurrent.atomic.AtomicLong;
import javax.security.auth.x500.X500Principal;
/* loaded from: classes2.dex */
public final class k9 extends h5 {

    /* renamed from: g  reason: collision with root package name */
    private static final String[] f9582g = {"firebase_", "google_", "ga_"};

    /* renamed from: h  reason: collision with root package name */
    private static final String[] f9583h = {"_err"};

    /* renamed from: c  reason: collision with root package name */
    private SecureRandom f9584c;

    /* renamed from: d  reason: collision with root package name */
    private final AtomicLong f9585d;

    /* renamed from: e  reason: collision with root package name */
    private int f9586e;

    /* renamed from: f  reason: collision with root package name */
    private Integer f9587f;

    /* JADX INFO: Access modifiers changed from: package-private */
    public k9(n4 n4Var) {
        super(n4Var);
        this.f9587f = null;
        this.f9585d = new AtomicLong(0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean W(String str) {
        return !TextUtils.isEmpty(str) && str.startsWith("_");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean X(String str) {
        com.google.android.gms.common.internal.p.f(str);
        return str.charAt(0) != '_' || str.equals("_ep");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean Y(Context context) {
        ActivityInfo receiverInfo;
        com.google.android.gms.common.internal.p.j(context);
        try {
            PackageManager packageManager = context.getPackageManager();
            if (packageManager != null && (receiverInfo = packageManager.getReceiverInfo(new ComponentName(context, "com.google.android.gms.measurement.AppMeasurementReceiver"), 0)) != null) {
                if (receiverInfo.enabled) {
                    return true;
                }
            }
        } catch (PackageManager.NameNotFoundException unused) {
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean Z(Context context, boolean z10) {
        com.google.android.gms.common.internal.p.j(context);
        if (Build.VERSION.SDK_INT >= 24) {
            return i0(context, "com.google.android.gms.measurement.AppMeasurementJobService");
        }
        return i0(context, "com.google.android.gms.measurement.AppMeasurementService");
    }

    public static boolean a0(String str) {
        return !f9583h[0].equals(str);
    }

    static final boolean d0(Bundle bundle, int i9) {
        if (bundle.getLong("_err") == 0) {
            bundle.putLong("_err", i9);
            return true;
        }
        return false;
    }

    static final boolean e0(String str) {
        com.google.android.gms.common.internal.p.j(str);
        return str.matches("^(1:\\d+:android:[a-f0-9]+|ca-app-pub-.*)$");
    }

    private final int f0(String str) {
        if ("_ldl".equals(str)) {
            this.f9432a.z();
            return 2048;
        } else if ("_id".equals(str)) {
            this.f9432a.z();
            return 256;
        } else if ("_lgclid".equals(str)) {
            this.f9432a.z();
            return 100;
        } else {
            this.f9432a.z();
            return 36;
        }
    }

    private final Object g0(int i9, Object obj, boolean z10, boolean z11) {
        Parcelable[] parcelableArr;
        if (obj == null) {
            return null;
        }
        if ((obj instanceof Long) || (obj instanceof Double)) {
            return obj;
        }
        if (obj instanceof Integer) {
            return Long.valueOf(((Integer) obj).intValue());
        }
        if (obj instanceof Byte) {
            return Long.valueOf(((Byte) obj).byteValue());
        }
        if (obj instanceof Short) {
            return Long.valueOf(((Short) obj).shortValue());
        }
        if (obj instanceof Boolean) {
            return Long.valueOf(true != ((Boolean) obj).booleanValue() ? 0L : 1L);
        } else if (obj instanceof Float) {
            return Double.valueOf(((Float) obj).doubleValue());
        } else {
            if (!(obj instanceof String) && !(obj instanceof Character) && !(obj instanceof CharSequence)) {
                if (z11 && ((obj instanceof Bundle[]) || (obj instanceof Parcelable[]))) {
                    ArrayList arrayList = new ArrayList();
                    for (Parcelable parcelable : (Parcelable[]) obj) {
                        if (parcelable instanceof Bundle) {
                            Bundle u02 = u0((Bundle) parcelable);
                            if (!u02.isEmpty()) {
                                arrayList.add(u02);
                            }
                        }
                    }
                    return arrayList.toArray(new Bundle[arrayList.size()]);
                }
                return null;
            }
            return r(obj.toString(), i9, z10);
        }
    }

    private static boolean h0(String str, String[] strArr) {
        com.google.android.gms.common.internal.p.j(strArr);
        for (String str2 : strArr) {
            if (p4.b0.a(str, str2)) {
                return true;
            }
        }
        return false;
    }

    private static boolean i0(Context context, String str) {
        ServiceInfo serviceInfo;
        try {
            PackageManager packageManager = context.getPackageManager();
            if (packageManager != null && (serviceInfo = packageManager.getServiceInfo(new ComponentName(context, str), 0)) != null) {
                if (serviceInfo.enabled) {
                    return true;
                }
            }
        } catch (PackageManager.NameNotFoundException unused) {
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static long q0(byte[] bArr) {
        com.google.android.gms.common.internal.p.j(bArr);
        int length = bArr.length;
        int i9 = 0;
        com.google.android.gms.common.internal.p.n(length > 0);
        long j10 = 0;
        for (int i10 = length - 1; i10 >= 0 && i10 >= bArr.length - 8; i10--) {
            j10 += (bArr[i10] & 255) << i9;
            i9 += 8;
        }
        return j10;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static MessageDigest t() {
        MessageDigest messageDigest;
        for (int i9 = 0; i9 < 2; i9++) {
            try {
                messageDigest = MessageDigest.getInstance("MD5");
            } catch (NoSuchAlgorithmException unused) {
            }
            if (messageDigest != null) {
                return messageDigest;
            }
        }
        return null;
    }

    public static ArrayList v(List list) {
        if (list == null) {
            return new ArrayList(0);
        }
        ArrayList arrayList = new ArrayList(list.size());
        Iterator it = list.iterator();
        while (it.hasNext()) {
            zzac zzacVar = (zzac) it.next();
            Bundle bundle = new Bundle();
            bundle.putString("app_id", zzacVar.zza);
            bundle.putString("origin", zzacVar.zzb);
            bundle.putLong("creation_timestamp", zzacVar.zzd);
            bundle.putString("name", zzacVar.zzc.zzb);
            p4.o.b(bundle, com.google.android.gms.common.internal.p.j(zzacVar.zzc.I()));
            bundle.putBoolean("active", zzacVar.zze);
            String str = zzacVar.zzf;
            if (str != null) {
                bundle.putString("trigger_event_name", str);
            }
            zzaw zzawVar = zzacVar.zzg;
            if (zzawVar != null) {
                bundle.putString("timed_out_event_name", zzawVar.zza);
                zzau zzauVar = zzawVar.zzb;
                if (zzauVar != null) {
                    bundle.putBundle("timed_out_event_params", zzauVar.L());
                }
            }
            bundle.putLong("trigger_timeout", zzacVar.zzh);
            zzaw zzawVar2 = zzacVar.zzi;
            if (zzawVar2 != null) {
                bundle.putString("triggered_event_name", zzawVar2.zza);
                zzau zzauVar2 = zzawVar2.zzb;
                if (zzauVar2 != null) {
                    bundle.putBundle("triggered_event_params", zzauVar2.L());
                }
            }
            bundle.putLong("triggered_timestamp", zzacVar.zzc.zzc);
            bundle.putLong("time_to_live", zzacVar.zzj);
            zzaw zzawVar3 = zzacVar.zzk;
            if (zzawVar3 != null) {
                bundle.putString("expired_event_name", zzawVar3.zza);
                zzau zzauVar3 = zzawVar3.zzb;
                if (zzauVar3 != null) {
                    bundle.putBundle("expired_event_params", zzauVar3.L());
                }
            }
            arrayList.add(bundle);
        }
        return arrayList;
    }

    @WorkerThread
    public static void y(r6 r6Var, Bundle bundle, boolean z10) {
        if (bundle != null && r6Var != null) {
            if (!bundle.containsKey("_sc") || z10) {
                String str = r6Var.f9805a;
                if (str != null) {
                    bundle.putString("_sn", str);
                } else {
                    bundle.remove("_sn");
                }
                String str2 = r6Var.f9806b;
                if (str2 != null) {
                    bundle.putString("_sc", str2);
                } else {
                    bundle.remove("_sc");
                }
                bundle.putLong("_si", r6Var.f9807c);
                return;
            }
            z10 = false;
        }
        if (bundle != null && r6Var == null && z10) {
            bundle.remove("_sn");
            bundle.remove("_sc");
            bundle.remove("_si");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void A(k3 k3Var, int i9) {
        int i10 = 0;
        for (String str : new TreeSet(k3Var.f9568d.keySet())) {
            if (X(str) && (i10 = i10 + 1) > i9) {
                this.f9432a.b().s().c("Event can't contain more than " + i9 + " params", this.f9432a.D().d(k3Var.f9565a), this.f9432a.D().b(k3Var.f9568d));
                d0(k3Var.f9568d, 5);
                k3Var.f9568d.remove(str);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void B(j9 j9Var, String str, int i9, String str2, String str3, int i10) {
        Bundle bundle = new Bundle();
        d0(bundle, i9);
        if (!TextUtils.isEmpty(str2) && !TextUtils.isEmpty(str3)) {
            bundle.putString(str2, str3);
        }
        if (i9 == 6 || i9 == 7 || i9 == 2) {
            bundle.putLong("_el", i10);
        }
        j9Var.a(str, "_err", bundle);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void C(Bundle bundle, String str, Object obj) {
        if (bundle == null) {
            return;
        }
        if (obj instanceof Long) {
            bundle.putLong(str, ((Long) obj).longValue());
        } else if (obj instanceof String) {
            bundle.putString(str, String.valueOf(obj));
        } else if (obj instanceof Double) {
            bundle.putDouble(str, ((Double) obj).doubleValue());
        } else if (obj instanceof Bundle[]) {
            bundle.putParcelableArray(str, (Bundle[]) obj);
        } else if (str != null) {
            this.f9432a.b().x().c("Not putting event parameter. Invalid value type. name, type", this.f9432a.D().e(str), obj != null ? obj.getClass().getSimpleName() : null);
        }
    }

    public final void D(com.google.android.gms.internal.measurement.h1 h1Var, boolean z10) {
        Bundle bundle = new Bundle();
        bundle.putBoolean("r", z10);
        try {
            h1Var.a(bundle);
        } catch (RemoteException e10) {
            this.f9432a.b().w().b("Error returning boolean value to wrapper", e10);
        }
    }

    public final void E(com.google.android.gms.internal.measurement.h1 h1Var, ArrayList arrayList) {
        Bundle bundle = new Bundle();
        bundle.putParcelableArrayList("r", arrayList);
        try {
            h1Var.a(bundle);
        } catch (RemoteException e10) {
            this.f9432a.b().w().b("Error returning bundle list to wrapper", e10);
        }
    }

    public final void F(com.google.android.gms.internal.measurement.h1 h1Var, Bundle bundle) {
        try {
            h1Var.a(bundle);
        } catch (RemoteException e10) {
            this.f9432a.b().w().b("Error returning bundle value to wrapper", e10);
        }
    }

    public final void G(com.google.android.gms.internal.measurement.h1 h1Var, byte[] bArr) {
        Bundle bundle = new Bundle();
        bundle.putByteArray("r", bArr);
        try {
            h1Var.a(bundle);
        } catch (RemoteException e10) {
            this.f9432a.b().w().b("Error returning byte array to wrapper", e10);
        }
    }

    public final void H(com.google.android.gms.internal.measurement.h1 h1Var, int i9) {
        Bundle bundle = new Bundle();
        bundle.putInt("r", i9);
        try {
            h1Var.a(bundle);
        } catch (RemoteException e10) {
            this.f9432a.b().w().b("Error returning int value to wrapper", e10);
        }
    }

    public final void I(com.google.android.gms.internal.measurement.h1 h1Var, long j10) {
        Bundle bundle = new Bundle();
        bundle.putLong("r", j10);
        try {
            h1Var.a(bundle);
        } catch (RemoteException e10) {
            this.f9432a.b().w().b("Error returning long value to wrapper", e10);
        }
    }

    public final void J(com.google.android.gms.internal.measurement.h1 h1Var, String str) {
        Bundle bundle = new Bundle();
        bundle.putString("r", str);
        try {
            h1Var.a(bundle);
        } catch (RemoteException e10) {
            this.f9432a.b().w().b("Error returning string value to wrapper", e10);
        }
    }

    final void K(String str, String str2, String str3, Bundle bundle, List list, boolean z10) {
        int i9;
        String str4;
        int O;
        if (bundle == null) {
            return;
        }
        this.f9432a.z();
        int i10 = 0;
        for (String str5 : new TreeSet(bundle.keySet())) {
            if (list == null || !list.contains(str5)) {
                int m02 = !z10 ? m0(str5) : 0;
                if (m02 == 0) {
                    m02 = l0(str5);
                }
                i9 = m02;
            } else {
                i9 = 0;
            }
            if (i9 != 0) {
                x(bundle, i9, str5, str5, i9 == 3 ? str5 : null);
                bundle.remove(str5);
            } else {
                if (U(bundle.get(str5))) {
                    this.f9432a.b().x().d("Nested Bundle parameters are not allowed; discarded. event name, param name, child param name", str2, str3, str5);
                    str4 = str5;
                    O = 22;
                } else {
                    str4 = str5;
                    O = O(str, str2, str5, bundle.get(str5), bundle, list, z10, false);
                }
                if (O != 0 && !"_ev".equals(str4)) {
                    x(bundle, O, str4, str4, bundle.get(str4));
                    bundle.remove(str4);
                } else if (X(str4) && !h0(str4, p4.q.f56739d) && (i10 = i10 + 1) > 0) {
                    this.f9432a.b().s().c("Item cannot contain custom parameters", this.f9432a.D().d(str2), this.f9432a.D().b(bundle));
                    d0(bundle, 23);
                    bundle.remove(str4);
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final boolean L(String str, String str2) {
        if (!TextUtils.isEmpty(str)) {
            if (e0(str)) {
                return true;
            }
            if (this.f9432a.q()) {
                this.f9432a.b().s().b("Invalid google_app_id. Firebase Analytics disabled. See https://goo.gl/NAOOOI. provided id", j3.z(str));
            }
            return false;
        } else if (!TextUtils.isEmpty(str2)) {
            if (e0(str2)) {
                return true;
            }
            this.f9432a.b().s().b("Invalid admob_app_id. Analytics disabled.", j3.z(str2));
            return false;
        } else {
            if (this.f9432a.q()) {
                this.f9432a.b().s().a("Missing google_app_id. Firebase Analytics disabled. See https://goo.gl/NAOOOI");
            }
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final boolean M(String str, int i9, String str2) {
        if (str2 == null) {
            this.f9432a.b().s().b("Name is required and can't be null. Type", str);
            return false;
        } else if (str2.codePointCount(0, str2.length()) > i9) {
            this.f9432a.b().s().d("Name is too long. Type, maximum supported length, name", str, Integer.valueOf(i9), str2);
            return false;
        } else {
            return true;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final boolean N(String str, String[] strArr, String[] strArr2, String str2) {
        if (str2 == null) {
            this.f9432a.b().s().b("Name is required and can't be null. Type", str);
            return false;
        }
        com.google.android.gms.common.internal.p.j(str2);
        String[] strArr3 = f9582g;
        for (int i9 = 0; i9 < 3; i9++) {
            if (str2.startsWith(strArr3[i9])) {
                this.f9432a.b().s().c("Name starts with reserved prefix. Type, name", str, str2);
                return false;
            }
        }
        if (strArr == null || !h0(str2, strArr)) {
            return true;
        }
        if (strArr2 == null || !h0(str2, strArr2)) {
            this.f9432a.b().s().c("Name is reserved. Type, name", str, str2);
            return false;
        }
        return true;
    }

    /* JADX WARN: Removed duplicated region for block: B:47:0x00d0 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:48:0x00d1  */
    @androidx.annotation.WorkerThread
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    final int O(java.lang.String r14, java.lang.String r15, java.lang.String r16, java.lang.Object r17, android.os.Bundle r18, java.util.List r19, boolean r20, boolean r21) {
        /*
            Method dump skipped, instructions count: 355
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.k9.O(java.lang.String, java.lang.String, java.lang.String, java.lang.Object, android.os.Bundle, java.util.List, boolean, boolean):int");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final boolean P(String str, String str2, int i9, Object obj) {
        if (obj != null && !(obj instanceof Long) && !(obj instanceof Float) && !(obj instanceof Integer) && !(obj instanceof Byte) && !(obj instanceof Short) && !(obj instanceof Boolean) && !(obj instanceof Double)) {
            if (!(obj instanceof String) && !(obj instanceof Character) && !(obj instanceof CharSequence)) {
                return false;
            }
            String obj2 = obj.toString();
            if (obj2.codePointCount(0, obj2.length()) > i9) {
                this.f9432a.b().x().d("Value is too long; discarded. Value kind, name, value length", str, str2, Integer.valueOf(obj2.length()));
                return false;
            }
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final boolean Q(String str, String str2) {
        if (str2 == null) {
            this.f9432a.b().s().b("Name is required and can't be null. Type", str);
            return false;
        } else if (str2.length() == 0) {
            this.f9432a.b().s().b("Name is required and can't be empty. Type", str);
            return false;
        } else {
            int codePointAt = str2.codePointAt(0);
            if (!Character.isLetter(codePointAt)) {
                if (codePointAt != 95) {
                    this.f9432a.b().s().c("Name must start with a letter or _ (underscore). Type, name", str, str2);
                    return false;
                }
                codePointAt = 95;
            }
            int length = str2.length();
            int charCount = Character.charCount(codePointAt);
            while (charCount < length) {
                int codePointAt2 = str2.codePointAt(charCount);
                if (codePointAt2 != 95 && !Character.isLetterOrDigit(codePointAt2)) {
                    this.f9432a.b().s().c("Name must consist of letters, digits or _ (underscores). Type, name", str, str2);
                    return false;
                }
                charCount += Character.charCount(codePointAt2);
            }
            return true;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final boolean R(String str, String str2) {
        if (str2 == null) {
            this.f9432a.b().s().b("Name is required and can't be null. Type", str);
            return false;
        } else if (str2.length() == 0) {
            this.f9432a.b().s().b("Name is required and can't be empty. Type", str);
            return false;
        } else {
            int codePointAt = str2.codePointAt(0);
            if (!Character.isLetter(codePointAt)) {
                this.f9432a.b().s().c("Name must start with a letter. Type, name", str, str2);
                return false;
            }
            int length = str2.length();
            int charCount = Character.charCount(codePointAt);
            while (charCount < length) {
                int codePointAt2 = str2.codePointAt(charCount);
                if (codePointAt2 != 95 && !Character.isLetterOrDigit(codePointAt2)) {
                    this.f9432a.b().s().c("Name must consist of letters, digits or _ (underscores). Type, name", str, str2);
                    return false;
                }
                charCount += Character.charCount(codePointAt2);
            }
            return true;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @WorkerThread
    public final boolean S(String str) {
        h();
        if (g4.c.a(this.f9432a.f()).a(str) == 0) {
            return true;
        }
        this.f9432a.b().q().b("Permission not granted", str);
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final boolean T(String str) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        String u10 = this.f9432a.z().u();
        this.f9432a.d();
        return u10.equals(str);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final boolean U(Object obj) {
        return (obj instanceof Parcelable[]) || (obj instanceof ArrayList) || (obj instanceof Bundle);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final boolean V(Context context, String str) {
        Signature[] signatureArr;
        X500Principal x500Principal = new X500Principal("CN=Android Debug,O=Android,C=US");
        try {
            PackageInfo e10 = g4.c.a(context).e(str, 64);
            if (e10 == null || (signatureArr = e10.signatures) == null || signatureArr.length <= 0) {
                return true;
            }
            return ((X509Certificate) CertificateFactory.getInstance("X.509").generateCertificate(new ByteArrayInputStream(signatureArr[0].toByteArray()))).getSubjectX500Principal().equals(x500Principal);
        } catch (PackageManager.NameNotFoundException e11) {
            this.f9432a.b().r().b("Package name not found", e11);
            return true;
        } catch (CertificateException e12) {
            this.f9432a.b().r().b("Error obtaining certificate", e12);
            return true;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final boolean b0(String str, String str2, String str3, String str4) {
        boolean isEmpty = TextUtils.isEmpty(str);
        boolean isEmpty2 = TextUtils.isEmpty(str2);
        if (!isEmpty && !isEmpty2) {
            com.google.android.gms.common.internal.p.j(str);
            return !str.equals(str2);
        } else if (isEmpty && isEmpty2) {
            return (TextUtils.isEmpty(str3) || TextUtils.isEmpty(str4)) ? !TextUtils.isEmpty(str4) : !str3.equals(str4);
        } else if (isEmpty) {
            return TextUtils.isEmpty(str3) || !str3.equals(str4);
        } else if (TextUtils.isEmpty(str4)) {
            return false;
        } else {
            return TextUtils.isEmpty(str3) || !str3.equals(str4);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final byte[] c0(Parcelable parcelable) {
        if (parcelable == null) {
            return null;
        }
        Parcel obtain = Parcel.obtain();
        try {
            parcelable.writeToParcel(obtain, 0);
            return obtain.marshall();
        } finally {
            obtain.recycle();
        }
    }

    @Override // com.google.android.gms.measurement.internal.h5
    @WorkerThread
    protected final void i() {
        h();
        SecureRandom secureRandom = new SecureRandom();
        long nextLong = secureRandom.nextLong();
        if (nextLong == 0) {
            nextLong = secureRandom.nextLong();
            if (nextLong == 0) {
                this.f9432a.b().w().a("Utils falling back to Random for random id");
            }
        }
        this.f9585d.set(nextLong);
    }

    @Override // com.google.android.gms.measurement.internal.h5
    protected final boolean j() {
        return true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final int j0(String str, Object obj) {
        boolean P;
        if ("_ldl".equals(str)) {
            P = P("user property referrer", str, f0(str), obj);
        } else {
            P = P("user property", str, f0(str), obj);
        }
        return P ? 0 : 7;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final int k0(String str) {
        if (Q("event", str)) {
            if (N("event", p4.p.f56732a, p4.p.f56733b, str)) {
                this.f9432a.z();
                return !M("event", 40, str) ? 2 : 0;
            }
            return 13;
        }
        return 2;
    }

    final int l0(String str) {
        if (Q("event param", str)) {
            if (N("event param", null, null, str)) {
                this.f9432a.z();
                return !M("event param", 40, str) ? 3 : 0;
            }
            return 14;
        }
        return 3;
    }

    final int m0(String str) {
        if (R("event param", str)) {
            if (N("event param", null, null, str)) {
                this.f9432a.z();
                return !M("event param", 40, str) ? 3 : 0;
            }
            return 14;
        }
        return 3;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final int n0(String str) {
        if (Q("user property", str)) {
            if (N("user property", p4.r.f56740a, null, str)) {
                this.f9432a.z();
                return !M("user property", 24, str) ? 6 : 0;
            }
            return 15;
        }
        return 6;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final Object o(String str, Object obj) {
        int i9 = 256;
        if ("_ev".equals(str)) {
            this.f9432a.z();
            return g0(256, obj, true, true);
        }
        if (W(str)) {
            this.f9432a.z();
        } else {
            this.f9432a.z();
            i9 = 100;
        }
        return g0(i9, obj, false, true);
    }

    public final int o0() {
        if (this.f9587f == null) {
            this.f9587f = Integer.valueOf(com.google.android.gms.common.b.f().a(this.f9432a.f()) / 1000);
        }
        return this.f9587f.intValue();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final Object p(String str, Object obj) {
        if ("_ldl".equals(str)) {
            return g0(f0(str), obj, true, false);
        }
        return g0(f0(str), obj, false, false);
    }

    public final int p0(int i9) {
        return com.google.android.gms.common.b.f().h(this.f9432a.f(), com.google.android.gms.common.d.f7626a);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final String q() {
        byte[] bArr = new byte[16];
        u().nextBytes(bArr);
        return String.format(Locale.US, "%032x", new BigInteger(1, bArr));
    }

    public final String r(String str, int i9, boolean z10) {
        if (str == null) {
            return null;
        }
        if (str.codePointCount(0, str.length()) > i9) {
            if (z10) {
                return String.valueOf(str.substring(0, str.offsetByCodePoints(0, i9))).concat("...");
            }
            return null;
        }
        return str;
    }

    public final long r0() {
        long andIncrement;
        long j10;
        if (this.f9585d.get() == 0) {
            synchronized (this.f9585d) {
                long nextLong = new Random(System.nanoTime() ^ this.f9432a.c().a()).nextLong();
                int i9 = this.f9586e + 1;
                this.f9586e = i9;
                j10 = nextLong + i9;
            }
            return j10;
        }
        synchronized (this.f9585d) {
            this.f9585d.compareAndSet(-1L, 1L);
            andIncrement = this.f9585d.getAndIncrement();
        }
        return andIncrement;
    }

    public final URL s(long j10, String str, String str2, long j11) {
        try {
            com.google.android.gms.common.internal.p.f(str2);
            com.google.android.gms.common.internal.p.f(str);
            String format = String.format("https://www.googleadservices.com/pagead/conversion/app/deeplink?id_type=adid&sdk_version=%s&rdid=%s&bundleid=%s&retry=%s", String.format("v%s.%s", 73000L, Integer.valueOf(o0())), str2, str, Long.valueOf(j11));
            if (str.equals(this.f9432a.z().v())) {
                format = format.concat("&ddl_test=1");
            }
            return new URL(format);
        } catch (IllegalArgumentException | MalformedURLException e10) {
            this.f9432a.b().r().b("Failed to create BOW URL for Deferred Deep Link. exception", e10.getMessage());
            return null;
        }
    }

    public final long s0(long j10, long j11) {
        return (j10 + (j11 * 60000)) / 86400000;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final Bundle t0(Uri uri) {
        String str;
        String str2;
        String str3;
        String str4;
        String str5;
        String str6;
        String str7;
        if (uri != null) {
            try {
                if (uri.isHierarchical()) {
                    str = uri.getQueryParameter("utm_campaign");
                    str2 = uri.getQueryParameter("utm_source");
                    str3 = uri.getQueryParameter("utm_medium");
                    str4 = uri.getQueryParameter("gclid");
                    str5 = uri.getQueryParameter("utm_id");
                    str6 = uri.getQueryParameter("dclid");
                    str7 = uri.getQueryParameter("srsltid");
                } else {
                    str = null;
                    str2 = null;
                    str3 = null;
                    str4 = null;
                    str5 = null;
                    str6 = null;
                    str7 = null;
                }
                if (TextUtils.isEmpty(str) && TextUtils.isEmpty(str2) && TextUtils.isEmpty(str3) && TextUtils.isEmpty(str4) && TextUtils.isEmpty(str5) && TextUtils.isEmpty(str6) && TextUtils.isEmpty(str7)) {
                    return null;
                }
                Bundle bundle = new Bundle();
                if (!TextUtils.isEmpty(str)) {
                    bundle.putString("campaign", str);
                }
                if (!TextUtils.isEmpty(str2)) {
                    bundle.putString(ShareConstants.FEED_SOURCE_PARAM, str2);
                }
                if (!TextUtils.isEmpty(str3)) {
                    bundle.putString("medium", str3);
                }
                if (!TextUtils.isEmpty(str4)) {
                    bundle.putString("gclid", str4);
                }
                String queryParameter = uri.getQueryParameter("utm_term");
                if (!TextUtils.isEmpty(queryParameter)) {
                    bundle.putString("term", queryParameter);
                }
                String queryParameter2 = uri.getQueryParameter("utm_content");
                if (!TextUtils.isEmpty(queryParameter2)) {
                    bundle.putString("content", queryParameter2);
                }
                String queryParameter3 = uri.getQueryParameter("aclid");
                if (!TextUtils.isEmpty(queryParameter3)) {
                    bundle.putString("aclid", queryParameter3);
                }
                String queryParameter4 = uri.getQueryParameter("cp1");
                if (!TextUtils.isEmpty(queryParameter4)) {
                    bundle.putString("cp1", queryParameter4);
                }
                String queryParameter5 = uri.getQueryParameter("anid");
                if (!TextUtils.isEmpty(queryParameter5)) {
                    bundle.putString("anid", queryParameter5);
                }
                if (!TextUtils.isEmpty(str5)) {
                    bundle.putString("campaign_id", str5);
                }
                if (!TextUtils.isEmpty(str6)) {
                    bundle.putString("dclid", str6);
                }
                String queryParameter6 = uri.getQueryParameter("utm_source_platform");
                if (!TextUtils.isEmpty(queryParameter6)) {
                    bundle.putString("source_platform", queryParameter6);
                }
                String queryParameter7 = uri.getQueryParameter("utm_creative_format");
                if (!TextUtils.isEmpty(queryParameter7)) {
                    bundle.putString("creative_format", queryParameter7);
                }
                String queryParameter8 = uri.getQueryParameter("utm_marketing_tactic");
                if (!TextUtils.isEmpty(queryParameter8)) {
                    bundle.putString("marketing_tactic", queryParameter8);
                }
                if (!TextUtils.isEmpty(str7)) {
                    bundle.putString("srsltid", str7);
                }
                return bundle;
            } catch (UnsupportedOperationException e10) {
                this.f9432a.b().w().b("Install referrer url isn't a hierarchical URI", e10);
            }
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @WorkerThread
    public final SecureRandom u() {
        h();
        if (this.f9584c == null) {
            this.f9584c = new SecureRandom();
        }
        return this.f9584c;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final Bundle u0(Bundle bundle) {
        Bundle bundle2 = new Bundle();
        if (bundle != null) {
            for (String str : bundle.keySet()) {
                Object o10 = o(str, bundle.get(str));
                if (o10 == null) {
                    this.f9432a.b().x().b("Param value can't be null", this.f9432a.D().e(str));
                } else {
                    C(bundle2, str, o10);
                }
            }
        }
        return bundle2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Removed duplicated region for block: B:39:0x00c2  */
    /* JADX WARN: Removed duplicated region for block: B:51:0x0106 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final android.os.Bundle v0(java.lang.String r21, java.lang.String r22, android.os.Bundle r23, java.util.List r24, boolean r25) {
        /*
            Method dump skipped, instructions count: 269
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.k9.v0(java.lang.String, java.lang.String, android.os.Bundle, java.util.List, boolean):android.os.Bundle");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @WorkerThread
    public final void w(Bundle bundle, long j10) {
        long j11 = bundle.getLong("_et");
        if (j11 != 0) {
            this.f9432a.b().w().b("Params already contained engagement", Long.valueOf(j11));
        } else {
            j11 = 0;
        }
        bundle.putLong("_et", j10 + j11);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final zzaw w0(String str, String str2, Bundle bundle, String str3, long j10, boolean z10, boolean z11) {
        Bundle bundle2;
        if (TextUtils.isEmpty(str2)) {
            return null;
        }
        if (k0(str2) == 0) {
            if (bundle != null) {
                bundle2 = new Bundle(bundle);
            } else {
                bundle2 = new Bundle();
            }
            Bundle bundle3 = bundle2;
            bundle3.putString("_o", str3);
            Bundle v02 = v0(str, str2, bundle3, e4.e.b("_o"), true);
            if (z10) {
                v02 = u0(v02);
            }
            com.google.android.gms.common.internal.p.j(v02);
            return new zzaw(str2, new zzau(v02), str3, j10);
        }
        this.f9432a.b().r().b("Invalid conditional property event name", this.f9432a.D().f(str2));
        throw new IllegalArgumentException();
    }

    final void x(Bundle bundle, int i9, String str, String str2, Object obj) {
        if (d0(bundle, i9)) {
            this.f9432a.z();
            bundle.putString("_ev", r(str, 40, true));
            if (obj != null) {
                com.google.android.gms.common.internal.p.j(bundle);
                if ((obj instanceof String) || (obj instanceof CharSequence)) {
                    bundle.putLong("_el", obj.toString().length());
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void z(Bundle bundle, Bundle bundle2) {
        if (bundle2 == null) {
            return;
        }
        for (String str : bundle2.keySet()) {
            if (!bundle.containsKey(str)) {
                this.f9432a.N().C(bundle, str, bundle2.get(str));
            }
        }
    }
}
