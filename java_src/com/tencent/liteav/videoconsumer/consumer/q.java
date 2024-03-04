package com.tencent.liteav.videoconsumer.consumer;

import com.tencent.liteav.base.util.LiteavLog;
import com.tencent.liteav.videoconsumer.decoder.VideoDecodeController;
import org.json.JSONArray;
import org.json.JSONException;
/* loaded from: classes4.dex */
final /* synthetic */ class q implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final j f32123a;

    /* renamed from: b  reason: collision with root package name */
    private final String f32124b;

    private q(j jVar, String str) {
        this.f32123a = jVar;
        this.f32124b = str;
    }

    public static Runnable a(j jVar, String str) {
        return new q(jVar, str);
    }

    @Override // java.lang.Runnable
    public final void run() {
        j jVar = this.f32123a;
        String str = this.f32124b;
        try {
            LiteavLog.i(jVar.f32076a, "setHWDecoderDeviceRelatedParams: ".concat(String.valueOf(str)));
            final JSONArray jSONArray = new JSONArray(str);
            final VideoDecodeController videoDecodeController = jVar.f32081f;
            if (videoDecodeController != null) {
                videoDecodeController.a(new Runnable(videoDecodeController, jSONArray) { // from class: com.tencent.liteav.videoconsumer.decoder.af

                    /* renamed from: a  reason: collision with root package name */
                    private final VideoDecodeController f32189a;

                    /* renamed from: b  reason: collision with root package name */
                    private final JSONArray f32190b;

                    {
                        this.f32189a = videoDecodeController;
                        this.f32190b = jSONArray;
                    }

                    @Override // java.lang.Runnable
                    public final void run() {
                        VideoDecodeController videoDecodeController2 = this.f32189a;
                        JSONArray jSONArray2 = this.f32190b;
                        videoDecodeController2.f32154m = jSONArray2;
                        LiteavLog.i(videoDecodeController2.f32142a, "set MediaCodec device related params to %s", jSONArray2);
                    }
                });
            }
        } catch (JSONException e10) {
            LiteavLog.e(jVar.f32076a, "setHWDecoderDeviceRelatedParams error ".concat(String.valueOf(e10)));
        }
    }
}
