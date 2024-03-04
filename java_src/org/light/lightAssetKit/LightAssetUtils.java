package org.light.lightAssetKit;

import org.light.LightAsset;
/* loaded from: classes7.dex */
public class LightAssetUtils {
    public static String getAssetJsonString(LightAsset lightAsset) {
        if (lightAsset == null) {
            return null;
        }
        return lightAsset.getJsonString();
    }
}
