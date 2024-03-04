package com.google.android.play.core.assetpacks;

import android.os.Bundle;
import androidx.annotation.NonNull;
import com.tencent.thumbplayer.core.downloadproxy.api.TPDownloadProxyEnum;
/* loaded from: classes2.dex */
public abstract class AssetPackState {
    public static AssetPackState h(@NonNull String str, int i9, int i10, long j10, long j11, double d10, int i11, String str2, String str3) {
        return new j0(str, i9, i10, j10, j11, (int) Math.rint(100.0d * d10), i11, str2, str3);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static AssetPackState i(Bundle bundle, String str, j1 j1Var, t2 t2Var, b0 b0Var) {
        int a10 = b0Var.a(bundle.getInt(u4.b.a("status", str)), str);
        int i9 = bundle.getInt(u4.b.a("error_code", str));
        long j10 = bundle.getLong(u4.b.a("bytes_downloaded", str));
        long j11 = bundle.getLong(u4.b.a("total_bytes_to_download", str));
        double a11 = j1Var.a(str);
        long j12 = bundle.getLong(u4.b.a("pack_version", str));
        long j13 = bundle.getLong(u4.b.a("pack_base_version", str));
        int i10 = 1;
        int i11 = 4;
        if (a10 != 4) {
            i11 = a10;
        } else if (j13 != 0 && j13 != j12) {
            i10 = 2;
        }
        return h(str, i11, i9, j10, j11, a11, i10, bundle.getString(u4.b.a("pack_version_tag", str), String.valueOf(bundle.getInt(TPDownloadProxyEnum.USER_APP_VERSION_CODE))), t2Var.a(str));
    }

    public abstract long a();

    public abstract int b();

    public abstract String c();

    public abstract int d();

    public abstract long e();

    public abstract int f();

    public abstract int g();

    public abstract String j();

    public abstract String k();
}
