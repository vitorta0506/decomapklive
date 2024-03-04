package com.huawei.hms.utils;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.ProviderInfo;
import android.content.pm.Signature;
import android.text.TextUtils;
import android.util.AndroidException;
import com.huawei.hms.support.log.HMSLog;
import java.io.IOException;
import java.io.InputStream;
import java.security.cert.CertificateException;
import java.security.cert.CertificateFactory;
/* loaded from: classes4.dex */
public class PackageManagerHelper {

    /* renamed from: a  reason: collision with root package name */
    public final PackageManager f27884a;

    /* loaded from: classes4.dex */
    public enum PackageStates {
        ENABLED,
        DISABLED,
        NOT_INSTALLED,
        SPOOF
    }

    public PackageManagerHelper(Context context) {
        this.f27884a = context.getPackageManager();
    }

    public final byte[] a(String str) {
        Signature[] signatureArr;
        try {
            PackageInfo packageInfo = this.f27884a.getPackageInfo(str, 64);
            if (packageInfo != null && (signatureArr = packageInfo.signatures) != null && signatureArr.length > 0) {
                return signatureArr[0].toByteArray();
            }
        } catch (AndroidException e10) {
            HMSLog.e("PackageManagerHelper", "Failed to get application signature certificate fingerprint." + e10.getMessage());
        } catch (RuntimeException e11) {
            HMSLog.e("PackageManagerHelper", "Failed to get application signature certificate fingerprint.", e11);
        }
        HMSLog.e("PackageManagerHelper", "Failed to get application signature certificate fingerprint.");
        return new byte[0];
    }

    public String getApplicationName(String str) {
        try {
            return this.f27884a.getApplicationLabel(this.f27884a.getApplicationInfo(str, 128)).toString();
        } catch (AndroidException unused) {
            HMSLog.e("PackageManagerHelper", "Failed to get application name for " + str);
            return null;
        }
    }

    public long getPackageFirstInstallTime(String str) {
        try {
            PackageInfo packageInfo = this.f27884a.getPackageInfo(str, 128);
            if (packageInfo != null) {
                return packageInfo.firstInstallTime;
            }
            return 0L;
        } catch (AndroidException | RuntimeException unused) {
            return 0L;
        }
    }

    public String getPackageSignature(String str) {
        byte[] a10 = a(str);
        if (a10 == null || a10.length == 0) {
            return null;
        }
        return HEX.encodeHexString(SHA256.digest(a10), true);
    }

    public PackageStates getPackageStates(String str) {
        if (TextUtils.isEmpty(str)) {
            return PackageStates.NOT_INSTALLED;
        }
        try {
            if (this.f27884a.getApplicationInfo(str, 128).enabled) {
                return PackageStates.ENABLED;
            }
            return PackageStates.DISABLED;
        } catch (AndroidException unused) {
            return PackageStates.NOT_INSTALLED;
        }
    }

    public int getPackageVersionCode(String str) {
        try {
            PackageInfo packageInfo = this.f27884a.getPackageInfo(str, 16);
            if (packageInfo != null) {
                return packageInfo.versionCode;
            }
            return 0;
        } catch (AndroidException e10) {
            HMSLog.e("PackageManagerHelper", "get PackageVersionCode failed " + e10);
            return 0;
        } catch (RuntimeException e11) {
            HMSLog.e("PackageManagerHelper", "get PackageVersionCode failed", e11);
            return 0;
        }
    }

    public String getPackageVersionName(String str) {
        try {
            PackageInfo packageInfo = this.f27884a.getPackageInfo(str, 16);
            if (packageInfo != null) {
                String str2 = packageInfo.versionName;
                if (str2 != null) {
                    return str2;
                }
            }
            return "";
        } catch (AndroidException unused) {
            return "";
        } catch (RuntimeException e10) {
            HMSLog.e("PackageManagerHelper", "get getPackageVersionName failed", e10);
            return "";
        }
    }

    public boolean hasProvider(String str, String str2) {
        ProviderInfo[] providerInfoArr;
        try {
            PackageInfo packageInfo = this.f27884a.getPackageInfo(str, 8);
            if (packageInfo != null && (providerInfoArr = packageInfo.providers) != null) {
                for (ProviderInfo providerInfo : providerInfoArr) {
                    if (str2.equals(providerInfo.authority)) {
                        return true;
                    }
                }
            }
        } catch (AndroidException | RuntimeException unused) {
        }
        return false;
    }

    public boolean isPackageFreshInstall(String str) {
        try {
            PackageInfo packageInfo = this.f27884a.getPackageInfo(str, 128);
            if (packageInfo != null) {
                return packageInfo.firstInstallTime == packageInfo.lastUpdateTime;
            }
            return false;
        } catch (AndroidException | RuntimeException unused) {
            return false;
        }
    }

    public boolean verifyPackageArchive(String str, String str2, String str3) {
        PackageInfo packageArchiveInfo = this.f27884a.getPackageArchiveInfo(str, 64);
        if (packageArchiveInfo == null || packageArchiveInfo.signatures.length <= 0 || !str2.equals(packageArchiveInfo.packageName)) {
            return false;
        }
        InputStream inputStream = null;
        try {
            try {
                inputStream = IOUtils.toInputStream(packageArchiveInfo.signatures[0].toByteArray());
                return str3.equalsIgnoreCase(HEX.encodeHexString(SHA256.digest(CertificateFactory.getInstance("X.509").generateCertificate(inputStream).getEncoded()), true));
            } finally {
                IOUtils.closeQuietly((InputStream) null);
            }
        } catch (IOException | CertificateException e10) {
            HMSLog.e("PackageManagerHelper", "Failed to get application signature certificate fingerprint." + e10.getMessage());
            return false;
        }
    }
}
