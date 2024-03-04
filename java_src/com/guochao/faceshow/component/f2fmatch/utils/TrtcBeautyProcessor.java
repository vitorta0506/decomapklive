package com.guochao.faceshow.component.f2fmatch.utils;

import com.gl.gaussblur.GaussBlurNativeAPI;
import com.guochao.faceshow.aaspring.base.navigator.RouterPath;
import com.guochao.faceshow.component.f2fmatch.proxy.F2fProxy;
import com.guochao.faceshow.component.f2fmatch.viewmodel.F2fMatchCallback;
import com.guochao.faceshow.component.f2fmatch.viewmodel.F2fMatchViewModel;
import com.guochao.faceshow.context.GCApplication;
import com.guochao.faceshow.utils.HandlerGetter;
import com.guochao.pusher.base.ILivePusher;
import com.guochao.pusher.beauty.XMagicBeautyManager;
import com.tencent.trtc.TRTCCloud;
import com.tencent.trtc.TRTCCloudDef;
import com.tencent.trtc.TRTCCloudListener;
import java.nio.charset.Charset;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.json.JSONObject;
@Metadata(d1 = {"\u0000^\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0012\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0016\u0018\u0000 -2\u00020\u00012\u00020\u0002:\u0001-B\u0015\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006¢\u0006\u0002\u0010\u0007J(\u0010\u001a\u001a\u00020\u001b2\u0006\u0010\u001c\u001a\u00020\u001d2\u0006\u0010\u001e\u001a\u00020\u001d2\u0006\u0010\u001f\u001a\u00020\u001d2\u0006\u0010 \u001a\u00020!H\u0002J\u0010\u0010\"\u001a\u00020#2\u0006\u0010$\u001a\u00020!H\u0002J\u0010\u0010%\u001a\u00020\u001b2\u0006\u0010&\u001a\u00020\tH\u0016J\b\u0010'\u001a\u00020\u001bH\u0016J\b\u0010(\u001a\u00020\u001bH\u0016J\u0018\u0010)\u001a\u00020\u001d2\u0006\u0010*\u001a\u00020+2\u0006\u0010,\u001a\u00020+H\u0016R$\u0010\n\u001a\u00020\t2\u0006\u0010\b\u001a\u00020\t@FX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000b\u0010\f\"\u0004\b\r\u0010\u000eR\u000e\u0010\u000f\u001a\u00020\u0010X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\tX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\tX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0013\u001a\u00020\u0014X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0015\u001a\u00020\u0016X\u0082\u0004¢\u0006\u0002\n\u0000R\u001a\u0010\u0017\u001a\u00020\tX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0018\u0010\f\"\u0004\b\u0019\u0010\u000eR\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006."}, d2 = {"Lcom/guochao/faceshow/component/f2fmatch/utils/TrtcBeautyProcessor;", "Lcom/tencent/trtc/TRTCCloudListener$TRTCVideoFrameListener;", "Lcom/guochao/pusher/base/ILivePusher$FaceDetectListener;", "trtcCloud", "Lcom/tencent/trtc/TRTCCloud;", "viewModel", "Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fMatchViewModel;", "(Lcom/tencent/trtc/TRTCCloud;Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fMatchViewModel;)V", "value", "", "chatting", "getChatting", "()Z", "setChatting", "(Z)V", "f2fProxy", "Lcom/guochao/faceshow/component/f2fmatch/proxy/F2fProxy;", "faceOnScreen", "lastFace", "lastSend", "", "manager", "Lcom/guochao/pusher/beauty/XMagicBeautyManager;", "removeGuass", "getRemoveGuass", "setRemoveGuass", "debug", "", "textureId", "", "width", "height", "tag", "", "guassByte", "", "guass", "hasFace", "has", "onGLContextCreated", "onGLContextDestory", "onProcessVideoFrame", "p0", "Lcom/tencent/trtc/TRTCCloudDef$TRTCVideoFrame;", "p1", "Companion", "component_f2f_match_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes2.dex */
public class TrtcBeautyProcessor implements TRTCCloudListener.TRTCVideoFrameListener, ILivePusher.FaceDetectListener {
    @NotNull
    public static final Companion Companion = new Companion(null);
    @NotNull
    private static final String TAG = "TrtcBeautyProcessor";
    private boolean chatting;
    @NotNull
    private final F2fProxy f2fProxy;
    private boolean faceOnScreen;
    private boolean lastFace;
    private long lastSend;
    @NotNull
    private final XMagicBeautyManager manager;
    private boolean removeGuass;
    @NotNull
    private final TRTCCloud trtcCloud;
    @NotNull
    private final F2fMatchViewModel viewModel;

    @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000¨\u0006\u0005"}, d2 = {"Lcom/guochao/faceshow/component/f2fmatch/utils/TrtcBeautyProcessor$Companion;", "", "()V", "TAG", "", "component_f2f_match_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes2.dex */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    public TrtcBeautyProcessor(@NotNull TRTCCloud trtcCloud, @NotNull F2fMatchViewModel viewModel) {
        Intrinsics.checkNotNullParameter(trtcCloud, "trtcCloud");
        Intrinsics.checkNotNullParameter(viewModel, "viewModel");
        this.trtcCloud = trtcCloud;
        this.viewModel = viewModel;
        XMagicBeautyManager.Companion companion = XMagicBeautyManager.Companion;
        GCApplication app = GCApplication.app();
        Intrinsics.checkNotNullExpressionValue(app, "app()");
        this.manager = companion.getInstance(app);
        Object navigation = o.a.c().a(RouterPath.ROUTER_F2F_PROXY).navigation();
        Intrinsics.checkNotNull(navigation, "null cannot be cast to non-null type com.guochao.faceshow.component.f2fmatch.proxy.F2fProxy");
        this.f2fProxy = (F2fProxy) navigation;
        GaussBlurNativeAPI.setSigma(5.0f);
    }

    private final void debug(int i9, int i10, int i11, String str) {
    }

    private final byte[] guassByte(String str) {
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("guass", str);
        String jSONObject2 = jSONObject.toString();
        Intrinsics.checkNotNullExpressionValue(jSONObject2, "JSONObject().apply { put…ass\", guass) }.toString()");
        Charset forName = Charset.forName("utf-8");
        Intrinsics.checkNotNullExpressionValue(forName, "forName(\"utf-8\")");
        byte[] bytes = jSONObject2.getBytes(forName);
        Intrinsics.checkNotNullExpressionValue(bytes, "this as java.lang.String).getBytes(charset)");
        return bytes;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: hasFace$lambda-1$lambda-0  reason: not valid java name */
    public static final void m651hasFace$lambda1$lambda0(F2fMatchCallback this_apply) {
        Intrinsics.checkNotNullParameter(this_apply, "$this_apply");
        this_apply.detectNoFaceOnScreen();
    }

    public final boolean getChatting() {
        return this.chatting;
    }

    public final boolean getRemoveGuass() {
        return this.removeGuass;
    }

    @Override // com.guochao.pusher.base.ILivePusher.FaceDetectListener
    public void hasFace(boolean z10) {
        final F2fMatchCallback f2fMatchCallback;
        this.faceOnScreen = z10;
        if (z10 || (f2fMatchCallback = this.viewModel.getF2fMatchCallback()) == null) {
            return;
        }
        HandlerGetter.runOnUIThread$default(new Runnable() { // from class: com.guochao.faceshow.component.f2fmatch.utils.i
            @Override // java.lang.Runnable
            public final void run() {
                TrtcBeautyProcessor.m651hasFace$lambda1$lambda0(F2fMatchCallback.this);
            }
        }, null, 2, null);
    }

    @Override // com.tencent.trtc.TRTCCloudListener.TRTCVideoFrameListener
    public void onGLContextCreated() {
        this.manager.glContextCreated();
    }

    @Override // com.tencent.trtc.TRTCCloudListener.TRTCVideoFrameListener
    public void onGLContextDestory() {
        GaussBlurNativeAPI.release();
        this.manager.destroyOnGLThread();
    }

    @Override // com.tencent.trtc.TRTCCloudListener.TRTCVideoFrameListener
    public int onProcessVideoFrame(@NotNull TRTCCloudDef.TRTCVideoFrame p02, @NotNull TRTCCloudDef.TRTCVideoFrame p12) {
        Intrinsics.checkNotNullParameter(p02, "p0");
        Intrinsics.checkNotNullParameter(p12, "p1");
        int i9 = p02.texture.textureId;
        debug(i9, p02.width, p02.height, "original_texture");
        int process = this.manager.process(i9, p02.width, p02.height);
        debug(process, p02.width, p02.height, "beauty_texture");
        if (this.chatting && !this.removeGuass) {
            if (!this.faceOnScreen) {
                process = GaussBlurNativeAPI.process(i9, p02.width, p02.height);
                debug(process, p02.width, p02.height, "gauss_texture");
                if (this.lastFace || System.currentTimeMillis() - this.lastSend > 200) {
                    this.trtcCloud.sendSEIMsg(guassByte("1"), 1);
                    this.lastSend = System.currentTimeMillis();
                }
            } else if (!this.lastFace || System.currentTimeMillis() - this.lastSend > 200) {
                this.trtcCloud.sendSEIMsg(guassByte("0"), 1);
                this.lastSend = System.currentTimeMillis();
            }
        }
        this.lastFace = this.faceOnScreen;
        p12.texture.textureId = process;
        return 0;
    }

    public final void setChatting(boolean z10) {
        this.chatting = z10;
        if (z10) {
            this.manager.setFaceDetectListener(this);
        } else {
            this.manager.setFaceDetectListener(null);
        }
    }

    public final void setRemoveGuass(boolean z10) {
        this.removeGuass = z10;
    }
}
