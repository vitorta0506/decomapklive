package com.guochao.faceshow.component.f2fmatch.datasource;

import com.guochao.faceshow.aaspring.base.http.v2.GCRequest;
import com.guochao.faceshow.aaspring.base.http.v2.Requester;
import com.guochao.faceshow.aaspring.base.http.v2.Response;
import com.guochao.faceshow.component.f2fmatch.model.F2fGoogleTokenModel;
import com.guochao.faceshow.component.f2fmatch.model.F2fMatchModel;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
@Metadata(d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u0016\u0010\u0003\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u00042\u0006\u0010\u0005\u001a\u00020\u0006J\u0016\u0010\u0007\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u00042\u0006\u0010\b\u001a\u00020\u0006J\u0016\u0010\t\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u00042\u0006\u0010\u0005\u001a\u00020\u0006J\u000e\u0010\n\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u000b0\u0004J\u000e\u0010\f\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\r0\u0004J\u000e\u0010\u000e\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u000f0\u0004J\u0016\u0010\u0010\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u00042\u0006\u0010\u0005\u001a\u00020\u0006J\u0016\u0010\u0011\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00120\u00042\u0006\u0010\u0013\u001a\u00020\u0014¨\u0006\u0015"}, d2 = {"Lcom/guochao/faceshow/component/f2fmatch/datasource/F2fMatchApi;", "", "()V", "agreeMatch", "Lcom/guochao/faceshow/aaspring/base/http/v2/Response;", "roomId", "", "cancelMatch", "requestId", "confirmMatchSuccess", "getGoogleToken", "Lcom/guochao/faceshow/component/f2fmatch/model/F2fGoogleTokenModel;", "getPrepareMatchInfo", "Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fTrtcSignatureModel;", "heartBeat", "Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fHeartBeatModel;", "quitRoom", "startMatch", "Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fStartMatchResultModel;", "gender", "", "component_f2f_match_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes2.dex */
public final class F2fMatchApi {
    @NotNull
    public final Response<Object> agreeMatch(@NotNull String roomId) {
        Intrinsics.checkNotNullParameter(roomId, "roomId");
        GCRequest putBody = new GCRequest("api/token/live/o2o/confirm").putBody("roomId", roomId).putBody("agree", 1);
        try {
            return Requester.INSTANCE.execute(putBody, putBody.buildRequestParams(), Object.class);
        } catch (Exception e10) {
            e10.printStackTrace();
            Response<Object> fail = Response.Companion.fail(-1, null, e10.getMessage());
            fail.setError(e10);
            return fail;
        }
    }

    @NotNull
    public final Response<Object> cancelMatch(@NotNull String requestId) {
        Intrinsics.checkNotNullParameter(requestId, "requestId");
        GCRequest putBody = new GCRequest("api/token/live/o2o/cancel").putBody("requestId", requestId);
        try {
            return Requester.INSTANCE.execute(putBody, putBody.buildRequestParams(), Object.class);
        } catch (Exception e10) {
            e10.printStackTrace();
            Response<Object> fail = Response.Companion.fail(-1, null, e10.getMessage());
            fail.setError(e10);
            return fail;
        }
    }

    @NotNull
    public final Response<Object> confirmMatchSuccess(@NotNull String roomId) {
        Intrinsics.checkNotNullParameter(roomId, "roomId");
        GCRequest putBody = new GCRequest("api/token/live/o2o/confirm/success").putBody("roomId", roomId);
        try {
            return Requester.INSTANCE.execute(putBody, putBody.buildRequestParams(), Object.class);
        } catch (Exception e10) {
            e10.printStackTrace();
            Response<Object> fail = Response.Companion.fail(-1, null, e10.getMessage());
            fail.setError(e10);
            return fail;
        }
    }

    @NotNull
    public final Response<F2fGoogleTokenModel> getGoogleToken() {
        GCRequest gCRequest = new GCRequest("api/token/foundation/translate/getGoogleToken");
        try {
            return Requester.INSTANCE.execute(gCRequest, gCRequest.buildRequestParams(), F2fGoogleTokenModel.class);
        } catch (Exception e10) {
            e10.printStackTrace();
            Response<F2fGoogleTokenModel> fail = Response.Companion.fail(-1, null, e10.getMessage());
            fail.setError(e10);
            return fail;
        }
    }

    @NotNull
    public final Response<F2fMatchModel.F2fTrtcSignatureModel> getPrepareMatchInfo() {
        GCRequest gCRequest = new GCRequest("api/token/live/o2o/stream/info");
        try {
            return Requester.INSTANCE.execute(gCRequest, gCRequest.buildRequestParams(), F2fMatchModel.F2fTrtcSignatureModel.class);
        } catch (Exception e10) {
            e10.printStackTrace();
            Response<F2fMatchModel.F2fTrtcSignatureModel> fail = Response.Companion.fail(-1, null, e10.getMessage());
            fail.setError(e10);
            return fail;
        }
    }

    @NotNull
    public final Response<F2fMatchModel.F2fHeartBeatModel> heartBeat() {
        GCRequest gCRequest = new GCRequest("api/token/live/o2o/heartbeat");
        try {
            return Requester.INSTANCE.execute(gCRequest, gCRequest.buildRequestParams(), F2fMatchModel.F2fHeartBeatModel.class);
        } catch (Exception e10) {
            e10.printStackTrace();
            Response<F2fMatchModel.F2fHeartBeatModel> fail = Response.Companion.fail(-1, null, e10.getMessage());
            fail.setError(e10);
            return fail;
        }
    }

    @NotNull
    public final Response<Object> quitRoom(@NotNull String roomId) {
        Intrinsics.checkNotNullParameter(roomId, "roomId");
        GCRequest putBody = new GCRequest("api/token/live/o2o/quit").putBody("roomId", roomId);
        try {
            return Requester.INSTANCE.execute(putBody, putBody.buildRequestParams(), Object.class);
        } catch (Exception e10) {
            e10.printStackTrace();
            Response<Object> fail = Response.Companion.fail(-1, null, e10.getMessage());
            fail.setError(e10);
            return fail;
        }
    }

    @NotNull
    public final Response<F2fMatchModel.F2fStartMatchResultModel> startMatch(int i9) {
        GCRequest putBody = new GCRequest("api/token/live/o2o/match/start").putBody("sex", Integer.valueOf(i9));
        try {
            return Requester.INSTANCE.execute(putBody, putBody.buildRequestParams(), F2fMatchModel.F2fStartMatchResultModel.class);
        } catch (Exception e10) {
            e10.printStackTrace();
            Response<F2fMatchModel.F2fStartMatchResultModel> fail = Response.Companion.fail(-1, null, e10.getMessage());
            fail.setError(e10);
            return fail;
        }
    }
}
