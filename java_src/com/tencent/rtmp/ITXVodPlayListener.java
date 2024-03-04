package com.tencent.rtmp;

import android.os.Bundle;
/* loaded from: classes4.dex */
public interface ITXVodPlayListener {
    void onNetStatus(TXVodPlayer tXVodPlayer, Bundle bundle);

    void onPlayEvent(TXVodPlayer tXVodPlayer, int i9, Bundle bundle);
}
