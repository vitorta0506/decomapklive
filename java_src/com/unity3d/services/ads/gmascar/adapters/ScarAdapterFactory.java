package com.unity3d.services.ads.gmascar.adapters;

import com.unity3d.scar.adapter.common.GMAAdsError;
import com.unity3d.scar.adapter.common.IAdsErrorHandler;
import com.unity3d.scar.adapter.common.IScarAdapter;
import com.unity3d.scar.adapter.v2000.ScarAdapter;
import com.unity3d.services.core.log.DeviceLog;
/* loaded from: classes4.dex */
public class ScarAdapterFactory {
    public static final int CODE_19_2 = 201604000;
    public static final int CODE_19_5 = 203404000;
    public static final int CODE_19_8 = 204890000;
    public static final int CODE_20_0 = 210402000;

    public IScarAdapter createScarAdapter(long j10, IAdsErrorHandler iAdsErrorHandler) {
        if (j10 >= 210402000) {
            return new ScarAdapter(iAdsErrorHandler);
        }
        if (j10 < 203404000 || j10 > 204890000) {
            if (j10 >= 201604000) {
                return new com.unity3d.scar.adapter.v1920.ScarAdapter(iAdsErrorHandler);
            }
            String format = String.format("SCAR version %s is not supported.", Long.valueOf(j10));
            iAdsErrorHandler.handleError(GMAAdsError.AdapterCreationError(format));
            DeviceLog.debug(format);
            return null;
        }
        return new com.unity3d.scar.adapter.v1950.ScarAdapter(iAdsErrorHandler);
    }
}
