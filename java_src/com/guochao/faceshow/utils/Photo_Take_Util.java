package com.guochao.faceshow.utils;

import android.app.Activity;
import android.content.Context;
import android.net.Uri;
import androidx.fragment.app.Fragment;
import com.guochao.faceshow.aaspring.utils.LogUtils;
import com.yalantis.ucrop.a;
import java.io.File;
/* loaded from: classes4.dex */
public class Photo_Take_Util {
    public static final int crop = 121;

    public static void startPhotoZoom(Context context, String str, String str2, Uri uri, Fragment fragment) {
        com.yalantis.ucrop.a c10;
        if (str == null || str2 == null) {
            return;
        }
        if (uri == null) {
            LogUtils.i("photo:::", "null");
            c10 = com.yalantis.ucrop.a.c(Uri.fromFile(new File(str)), Uri.fromFile(new File(str2)));
        } else {
            LogUtils.i("photo:::", uri.toString());
            c10 = com.yalantis.ucrop.a.c(uri, Uri.fromFile(new File(str2)));
        }
        c10.h(1.0f, 1.0f);
        a.C0372a c0372a = new a.C0372a();
        c0372a.b(90);
        c0372a.d(true);
        c0372a.c(true);
        c10.i(c0372a);
        c10.f(context, fragment);
    }

    public static void startPhotoZoom(Context context, String str, String str2, Uri uri, Activity activity) {
        com.yalantis.ucrop.a c10;
        if (str == null || str2 == null) {
            return;
        }
        if (uri == null) {
            LogUtils.i("photo:::", "null");
            c10 = com.yalantis.ucrop.a.c(Uri.fromFile(new File(str)), Uri.fromFile(new File(str2)));
        } else {
            LogUtils.i("photo:::", uri.toString());
            c10 = com.yalantis.ucrop.a.c(uri, Uri.fromFile(new File(str2)));
        }
        c10.h(1.0f, 1.0f);
        a.C0372a c0372a = new a.C0372a();
        c0372a.b(90);
        c0372a.d(true);
        c0372a.c(true);
        c10.i(c0372a);
        c10.d(activity);
    }
}
