package com.tencent.liteav.txcplayer;

import android.content.Context;
import com.tencent.liteav.base.util.LiteavLog;
import com.tencent.liteav.thumbplayer.ThumbMediaPlayer;
import java.lang.reflect.Constructor;
/* loaded from: classes4.dex */
public class f {

    /* renamed from: a  reason: collision with root package name */
    private static final String f31385a = "com.tencent.liteav.txcplayer.f";

    public static ITXVCubePlayer a(Context context) {
        return b(context);
    }

    private static ITXVCubePlayer b(Context context) {
        try {
            int i9 = ThumbMediaPlayer.f31296a;
            Constructor declaredConstructor = ThumbMediaPlayer.class.getDeclaredConstructor(Context.class);
            declaredConstructor.setAccessible(true);
            return (ITXVCubePlayer) declaredConstructor.newInstance(context);
        } catch (Exception e10) {
            String str = f31385a;
            LiteavLog.e(str, "create thumbplayer exception: " + e10.getMessage());
            return null;
        }
    }
}
