package com.tencent.rtmp;

import android.os.Bundle;
/* loaded from: classes4.dex */
public interface ITXLivePushListener {
    void onNetStatus(Bundle bundle);

    void onPushEvent(int i9, Bundle bundle);
}
