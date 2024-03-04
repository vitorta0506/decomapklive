package com.guochao.faceshow.component.f2fmatch.viewmodel;

import com.guochao.faceshow.component.f2fmatch.model.F2fMatchModel;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
import org.json.JSONObject;
@Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0004\bf\u0018\u00002\u00020\u0001J\b\u0010\u0002\u001a\u00020\u0003H&J\u0010\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0005\u001a\u00020\u0006H&J\u0010\u0010\u0007\u001a\u00020\u00032\u0006\u0010\u0005\u001a\u00020\u0006H&J\u0010\u0010\b\u001a\u00020\u00032\u0006\u0010\u0005\u001a\u00020\u0006H&J\u0018\u0010\t\u001a\u00020\u00032\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\n\u001a\u00020\u000bH&J\u0018\u0010\f\u001a\u00020\u00032\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\r\u001a\u00020\u000eH&J\u0010\u0010\u000f\u001a\u00020\u00032\u0006\u0010\u0005\u001a\u00020\u0006H&J\u0010\u0010\u0010\u001a\u00020\u00032\u0006\u0010\r\u001a\u00020\u000eH&J\u0010\u0010\u0011\u001a\u00020\u00032\u0006\u0010\u0005\u001a\u00020\u0006H&¨\u0006\u0012"}, d2 = {"Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fMatchCallback;", "", "detectNoFaceOnScreen", "", "onAgreed", "f2fHeartBeatModel", "Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fHeartBeatModel;", "onMatchTimeout", "onPlayFirstFrame", "onReceiveSeiMessage", "json", "Lorg/json/JSONObject;", "onReject", "code", "", "onRemoteUserLeave", "onStartMatchError", "onUserMatched", "component_f2f_match_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes2.dex */
public interface F2fMatchCallback {
    void detectNoFaceOnScreen();

    void onAgreed(@NotNull F2fMatchModel.F2fHeartBeatModel f2fHeartBeatModel);

    void onMatchTimeout(@NotNull F2fMatchModel.F2fHeartBeatModel f2fHeartBeatModel);

    void onPlayFirstFrame(@NotNull F2fMatchModel.F2fHeartBeatModel f2fHeartBeatModel);

    void onReceiveSeiMessage(@NotNull F2fMatchModel.F2fHeartBeatModel f2fHeartBeatModel, @NotNull JSONObject jSONObject);

    void onReject(@NotNull F2fMatchModel.F2fHeartBeatModel f2fHeartBeatModel, int i9);

    void onRemoteUserLeave(@NotNull F2fMatchModel.F2fHeartBeatModel f2fHeartBeatModel);

    void onStartMatchError(int i9);

    void onUserMatched(@NotNull F2fMatchModel.F2fHeartBeatModel f2fHeartBeatModel);
}
