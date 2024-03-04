package com.tencent.liteav.txcplayer.a;

import android.text.TextUtils;
import com.tencent.liteav.base.util.LiteavLog;
import java.io.File;
import java.util.Map;
/* loaded from: classes4.dex */
public abstract class a {
    public static final String TAG = "com.tencent.liteav.txcplayer.a.a";
    public InterfaceC0321a mDownloadListener;
    protected String mDownloadPath;
    protected Map<String, String> mHeaders;

    /* renamed from: com.tencent.liteav.txcplayer.a.a$a  reason: collision with other inner class name */
    /* loaded from: classes4.dex */
    public interface InterfaceC0321a {
        void a(b bVar);

        void a(b bVar, int i9, String str);

        void b(b bVar);

        void c(b bVar);

        void d(b bVar);
    }

    public abstract boolean deleteDownloadFile(String str);

    public abstract int downloadHls(String str, String str2);

    public abstract String makePlayPath(String str);

    protected String makePlayPathDir(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        String str2 = this.mDownloadPath + "/txcache";
        File file = new File(str2);
        if ((file.exists() && file.isDirectory()) || file.mkdir()) {
            return str2;
        }
        LiteavLog.e(TAG, "Failed to create download path".concat(String.valueOf(str2)));
        return null;
    }

    public void setDownloadPath(String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        String a10 = com.tencent.liteav.txcplayer.common.b.a();
        this.mDownloadPath = a10;
        if (TextUtils.isEmpty(a10)) {
            String str2 = str + "/txcache";
            this.mDownloadPath = str2;
            com.tencent.liteav.txcplayer.common.b.a(str2);
        }
        try {
            new File(this.mDownloadPath).mkdirs();
        } catch (Exception e10) {
            LiteavLog.e(TAG, "setDownloadPath exception: " + e10.getLocalizedMessage());
        }
    }

    public void setHeaders(Map<String, String> map) {
        this.mHeaders = map;
    }

    public void setListener(InterfaceC0321a interfaceC0321a) {
        this.mDownloadListener = interfaceC0321a;
    }

    public abstract void stop(int i9);
}
