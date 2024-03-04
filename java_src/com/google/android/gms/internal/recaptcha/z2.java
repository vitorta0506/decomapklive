package com.google.android.gms.internal.recaptcha;

import android.net.Uri;
import com.facebook.share.internal.ShareInternalUtility;
import java.io.File;
import org.light.utils.FileUtils;
/* loaded from: classes2.dex */
public final class z2 {

    /* renamed from: a  reason: collision with root package name */
    private final Uri.Builder f9212a = new Uri.Builder().scheme(ShareInternalUtility.STAGING_PARAM).authority("").path(FileUtils.RES_PREFIX_STORAGE);

    /* renamed from: b  reason: collision with root package name */
    private final q8<String> f9213b = zzkj.zzj();

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ z2(y2 y2Var) {
    }

    public final Uri a() {
        return this.f9212a.encodedFragment(l3.a(this.f9213b.f())).build();
    }

    public final z2 b(File file) {
        this.f9212a.path(file.getAbsolutePath());
        return this;
    }
}
