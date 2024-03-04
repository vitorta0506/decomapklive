package com.tencent.liteav.txcplayer.common;

import com.tencent.liteav.base.util.LiteavLog;
import com.tencent.liteav.sdk.common.LicenseChecker;
/* loaded from: classes4.dex */
public final class c {
    public static LicenseChecker.d a() {
        LicenseChecker.d valid = LicenseChecker.getInstance().valid(LicenseChecker.a.PLAYER_STANDARD);
        LiteavLog.i("VodLicenseCheck", "checkValidForPlayerStandard = ".concat(String.valueOf(valid)));
        return valid;
    }
}
