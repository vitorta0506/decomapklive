package com.huawei.hms.framework.network.grs.h.g;

import android.content.Context;
import android.content.res.AssetManager;
import cc.c;
import cc.e;
import com.huawei.hms.framework.network.grs.GrsApp;
import java.io.IOException;
import java.security.KeyManagementException;
import java.security.NoSuchAlgorithmException;
import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.SSLSocketFactory;
import org.light.utils.FileUtils;
/* loaded from: classes4.dex */
public class a {

    /* renamed from: a  reason: collision with root package name */
    private static final HostnameVerifier f27428a = new dc.a();

    public static HostnameVerifier a() {
        return f27428a;
    }

    public static SSLSocketFactory a(Context context) {
        try {
            AssetManager assets = context.getAssets();
            return new c(new e(assets.open(GrsApp.getInstance().getBrand(FileUtils.RES_PREFIX_STORAGE) + "grs_sp.bks"), ""));
        } catch (IOException | KeyManagementException | NoSuchAlgorithmException e10) {
            throw new AssertionError(e10);
        }
    }
}
