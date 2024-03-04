package org.light.listener;

import java.util.HashMap;
/* loaded from: classes7.dex */
public interface OnLoadAssetListener {
    void OnAssetDurationChange(long j10);

    void OnAssetProcessing(HashMap<String, String> hashMap);

    void OnLoadAssetError(int i9);
}
