package com.twitter.sdk.android.tweetui.internal;

import com.tencent.thumbplayer.core.thirdparties.LocalCache;
import java.util.Locale;
/* loaded from: classes4.dex */
final class d {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static String a(long j10) {
        int i9 = (int) (j10 / 1000);
        int i10 = i9 % 60;
        int i11 = (i9 / 60) % 60;
        int i12 = i9 / LocalCache.TIME_HOUR;
        return i12 > 0 ? String.format(Locale.getDefault(), "%1$d:%2$02d:%3$02d", Integer.valueOf(i12), Integer.valueOf(i11), Integer.valueOf(i10)) : String.format(Locale.getDefault(), "%1$d:%2$02d", Integer.valueOf(i11), Integer.valueOf(i10));
    }
}
