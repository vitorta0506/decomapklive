package com.google.android.play.core.internal;

import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.Signature;
import android.content.res.AssetManager;
import android.os.Build;
import android.util.Log;
import androidx.annotation.Nullable;
import java.io.ByteArrayInputStream;
import java.io.File;
import java.io.IOException;
import java.security.cert.CertificateException;
import java.security.cert.CertificateFactory;
import java.security.cert.X509Certificate;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.xmlpull.v1.XmlPullParserException;
/* loaded from: classes2.dex */
public final class x {

    /* renamed from: a  reason: collision with root package name */
    private final a5.f f10626a;

    /* renamed from: b  reason: collision with root package name */
    private final t f10627b;

    /* renamed from: c  reason: collision with root package name */
    private final Context f10628c;

    /* renamed from: d  reason: collision with root package name */
    private final w f10629d;
    @Nullable

    /* renamed from: e  reason: collision with root package name */
    private PackageInfo f10630e;

    public x(Context context, a5.f fVar, t tVar) {
        w wVar = new w(new a5.b(fVar));
        this.f10626a = fVar;
        this.f10627b = tVar;
        this.f10628c = context;
        this.f10629d = wVar;
    }

    @Nullable
    private final PackageInfo d() {
        if (this.f10630e == null) {
            try {
                this.f10630e = this.f10628c.getPackageManager().getPackageInfo(this.f10628c.getPackageName(), 64);
            } catch (PackageManager.NameNotFoundException unused) {
                return null;
            }
        }
        return this.f10630e;
    }

    @Nullable
    private static X509Certificate e(Signature signature) {
        try {
            return (X509Certificate) CertificateFactory.getInstance("X509").generateCertificate(new ByteArrayInputStream(signature.toByteArray()));
        } catch (CertificateException e10) {
            Log.e("SplitCompat", "Cannot decode certificate.", e10);
            return null;
        }
    }

    public final boolean a(File[] fileArr) throws IOException, XmlPullParserException {
        long j10;
        PackageInfo d10 = d();
        if (Build.VERSION.SDK_INT >= 28) {
            j10 = d10.getLongVersionCode();
        } else {
            j10 = d10.versionCode;
        }
        AssetManager assetManager = (AssetManager) v0.c(AssetManager.class);
        int length = fileArr.length;
        do {
            length--;
            if (length < 0) {
                return true;
            }
            this.f10629d.b(assetManager, fileArr[length]);
        } while (j10 == this.f10629d.a());
        return false;
    }

    public final boolean b(List list) throws IOException {
        Iterator it = list.iterator();
        while (it.hasNext()) {
            if (!this.f10626a.g(((Intent) it.next()).getStringExtra("split_id")).exists()) {
                return false;
            }
        }
        return true;
    }

    public final boolean c(File[] fileArr) {
        int i9;
        PackageInfo d10 = d();
        ArrayList<X509Certificate> arrayList = null;
        if (d10 != null && d10.signatures != null) {
            arrayList = new ArrayList();
            for (Signature signature : d10.signatures) {
                X509Certificate e10 = e(signature);
                if (e10 != null) {
                    arrayList.add(e10);
                }
            }
        }
        if (arrayList != null && !arrayList.isEmpty()) {
            int length = fileArr.length;
            loop1: while (true) {
                length--;
                if (length < 0) {
                    return true;
                }
                try {
                    String absolutePath = fileArr[length].getAbsolutePath();
                    try {
                        X509Certificate[][] a10 = p1.a(absolutePath);
                        if (a10 == null || a10.length == 0 || a10[0].length == 0) {
                            break;
                        } else if (arrayList.isEmpty()) {
                            Log.e("SplitCompat", "No certificates found for app.");
                            break;
                        } else {
                            for (X509Certificate x509Certificate : arrayList) {
                                int length2 = a10.length;
                                while (i9 < length2) {
                                    i9 = a10[i9][0].equals(x509Certificate) ? 0 : i9 + 1;
                                }
                                Log.i("SplitCompat", "There's an app certificate that doesn't sign the split.");
                            }
                        }
                    } catch (Exception e11) {
                        StringBuilder sb2 = new StringBuilder(String.valueOf(absolutePath).length() + 32);
                        sb2.append("Downloaded split ");
                        sb2.append(absolutePath);
                        sb2.append(" is not signed.");
                        Log.e("SplitCompat", sb2.toString(), e11);
                    }
                } catch (Exception e12) {
                    Log.e("SplitCompat", "Split verification error.", e12);
                    return false;
                }
            }
        } else {
            Log.e("SplitCompat", "No app certificates found.");
            return false;
        }
        Log.e("SplitCompat", "Split verification failure.");
        return false;
    }
}
