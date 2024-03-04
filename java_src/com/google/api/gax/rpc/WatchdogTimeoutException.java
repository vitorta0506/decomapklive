package com.google.api.gax.rpc;

import com.google.api.gax.rpc.StatusCode;
/* loaded from: classes2.dex */
public class WatchdogTimeoutException extends ApiException {
    public static final StatusCode LOCAL_ABORTED_STATUS_CODE = new a();
    private static final long serialVersionUID = -777463630112442086L;

    /* loaded from: classes2.dex */
    static class a implements StatusCode {
        a() {
        }

        @Override // com.google.api.gax.rpc.StatusCode
        public StatusCode.Code getCode() {
            return StatusCode.Code.ABORTED;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public WatchdogTimeoutException(String str, boolean z10) {
        super(str, null, LOCAL_ABORTED_STATUS_CODE, z10);
    }
}
