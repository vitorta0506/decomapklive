package com.meizu.cloud.pushsdk.handler.a.b;

import android.content.Context;
import android.content.Intent;
import android.os.Build;
import android.os.Environment;
import android.text.TextUtils;
import com.meizu.cloud.pushinternal.DebugLogger;
import com.meizu.cloud.pushsdk.constants.PushConstants;
import com.meizu.cloud.pushsdk.handler.a.c.g;
import com.meizu.cloud.pushsdk.notification.c;
import com.meizu.cloud.pushsdk.util.MzSystemUtils;
import com.meizu.cloud.pushsdk.util.d;
import java.io.File;
/* loaded from: classes4.dex */
public class a extends com.meizu.cloud.pushsdk.handler.a.a<g> {
    public a(Context context, com.meizu.cloud.pushsdk.handler.a aVar) {
        super(context, aVar);
    }

    @Override // com.meizu.cloud.pushsdk.handler.c
    public int a() {
        return 65536;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.meizu.cloud.pushsdk.handler.a.a
    /* renamed from: a */
    public void b(g gVar) {
        d.b(d(), d().getPackageName(), gVar.d().b().d(), gVar.d().b().a(), gVar.d().b().e(), gVar.d().b().b());
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.meizu.cloud.pushsdk.handler.a.a
    public void a(g gVar, c cVar) {
        String str;
        String message;
        String str2;
        DebugLogger.flush();
        String a10 = gVar.d().b().a();
        String d10 = gVar.d().b().d();
        if (Build.VERSION.SDK_INT >= 29) {
            str = MzSystemUtils.getDocumentsPath(d()) + "/pushSdktmp/" + a10 + "_" + d10 + ".zip";
        } else {
            str = Environment.getExternalStorageDirectory().getAbsolutePath() + "/Android/data/pushSdktmp/" + a10 + "_" + d10 + ".zip";
        }
        File file = null;
        try {
            new b(str).a(gVar.c());
            File file2 = new File(str);
            message = null;
            file = file2;
        } catch (Exception e10) {
            message = e10.getMessage();
            DebugLogger.e("AbstractMessageHandler", "zip error message " + message);
        }
        if (file != null && file.length() / 1024 > gVar.a()) {
            message = "the upload file exceeds the max size";
        } else if (gVar.b() && !com.meizu.cloud.pushsdk.util.a.b(d())) {
            message = "current network not allowed upload log file";
        }
        com.meizu.cloud.pushsdk.c.a.c<String> a11 = com.meizu.cloud.pushsdk.platform.a.b.a(d()).a(gVar.d().b().a(), gVar.d().b().d(), message, file);
        if (a11 != null && a11.b()) {
            if (file != null) {
                file.delete();
            }
            DebugLogger.e("AbstractMessageHandler", "upload success " + a11.a());
            return;
        }
        if (a11 != null) {
            str2 = "upload error code " + a11.c() + a11.a();
        } else {
            str2 = "upload error";
        }
        DebugLogger.i("AbstractMessageHandler", str2);
    }

    @Override // com.meizu.cloud.pushsdk.handler.c
    public boolean a(Intent intent) {
        int i9;
        DebugLogger.i("AbstractMessageHandler", "start LogUploadMessageHandler match");
        String stringExtra = intent.getStringExtra(PushConstants.MZ_PUSH_CONTROL_MESSAGE);
        if (!TextUtils.isEmpty(stringExtra)) {
            com.meizu.cloud.pushsdk.handler.a.c.b a10 = com.meizu.cloud.pushsdk.handler.a.c.b.a(stringExtra);
            if (a10.a() != null) {
                i9 = a10.a().a();
                return PushConstants.MZ_PUSH_ON_MESSAGE_ACTION.equals(intent.getAction()) && "2".equals(String.valueOf(i9));
            }
        }
        i9 = 0;
        if (PushConstants.MZ_PUSH_ON_MESSAGE_ACTION.equals(intent.getAction())) {
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.meizu.cloud.pushsdk.handler.a.a
    /* renamed from: l */
    public g c(Intent intent) {
        String stringExtra = intent.getStringExtra(PushConstants.MZ_PUSH_CONTROL_MESSAGE);
        String stringExtra2 = intent.getStringExtra(PushConstants.EXTRA_APP_PUSH_SEQ_ID);
        return new g(intent.getStringExtra(PushConstants.MZ_PUSH_PRIVATE_MESSAGE), stringExtra, intent.getStringExtra(PushConstants.MZ_PUSH_MESSAGE_STATISTICS_IMEI_KEY), stringExtra2);
    }
}
