package com.guochao.faceshow.aaspring.modulars.live.model;

import com.google.gson.annotations.SerializedName;
import com.guochao.faceshow.aaspring.beans.PkRound;
import com.meizu.cloud.pushsdk.constants.PushConstants;
/* loaded from: classes3.dex */
public class PkChangeUiMessage extends BaseLiveMessage {
    @SerializedName(PushConstants.URI_PACKAGE_NAME)
    private PkRound mPkRound;

    public PkRound getPkRound() {
        return this.mPkRound;
    }

    public void setPkRound(PkRound pkRound) {
        this.mPkRound = pkRound;
    }
}
