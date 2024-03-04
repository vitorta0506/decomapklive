package com.tencent.thumbplayer.api.proxy;

import android.content.Context;
import com.tencent.thumbplayer.c.g;
/* loaded from: classes4.dex */
public class TPP2PProxyFactory {
    public static ITPPreloadProxy createPreloadManager(Context context, int i9) {
        return new g(context, i9);
    }
}
