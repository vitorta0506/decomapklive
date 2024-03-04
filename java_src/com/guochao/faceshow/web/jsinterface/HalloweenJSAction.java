package com.guochao.faceshow.web.jsinterface;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.view.View;
import android.webkit.JavascriptInterface;
import androidx.annotation.Keep;
import com.guochao.faceshow.aaspring.beans.InviteWebBean;
import com.guochao.faceshow.aaspring.modulars.personal.invite.InviteFriendMakeMoneyWebActivity;
import com.guochao.faceshow.activity.InvalitedActivity;
import com.guochao.faceshow.utils.GsonGetter;
import eb.b;
@Keep
/* loaded from: classes4.dex */
public class HalloweenJSAction extends BaseJsAction {
    boolean mLiving;
    private View mPopAnchorView;
    private b mSharePopController;
    protected OnCallBack onCallBack;
    private String shareImgUrl;
    private String shareText;
    private String shareUrl;

    /* loaded from: classes4.dex */
    public interface OnCallBack {
        void getReCaptChaToken(Object obj);

        void onInviteClick();

        void onInviteClick(Object obj);

        void playWinAnimation();
    }

    public HalloweenJSAction(Context context) {
        super(context);
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x004b  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x00b4  */
    @android.webkit.JavascriptInterface
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void getHalloween(java.lang.String r14, java.lang.String r15) {
        /*
            Method dump skipped, instructions count: 558
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.guochao.faceshow.web.jsinterface.HalloweenJSAction.getHalloween(java.lang.String, java.lang.String):void");
    }

    @JavascriptInterface
    public String getReCaptChaToken(Object obj) {
        OnCallBack onCallBack = this.onCallBack;
        if (onCallBack != null) {
            onCallBack.getReCaptChaToken(obj);
            return "1";
        }
        return "1";
    }

    @JavascriptInterface
    public void inviteFriendMakeMoney(Object obj) {
        Context context = this.mContext.get();
        if (context == null) {
            return;
        }
        OnCallBack onCallBack = this.onCallBack;
        if (onCallBack != null) {
            onCallBack.onInviteClick(obj);
        } else if (context instanceof InviteFriendMakeMoneyWebActivity) {
            ((InviteFriendMakeMoneyWebActivity) context).inviteFriendMakeMoney((InviteWebBean) GsonGetter.getGson().fromJson(obj.toString(), (Class<Object>) InviteWebBean.class));
        }
    }

    @JavascriptInterface
    public void inviteFunction(Object obj) {
        Context context = this.mContext.get();
        if (context == null) {
            return;
        }
        String valueOf = String.valueOf(obj);
        if ("1".equals(valueOf)) {
            OnCallBack onCallBack = this.onCallBack;
            if (onCallBack != null) {
                onCallBack.onInviteClick();
            }
        } else if ("2".equals(valueOf)) {
            context.startActivity(new Intent(context, InvalitedActivity.class));
        }
    }

    public boolean isLiving() {
        return this.mLiving;
    }

    public void setLiving(boolean z10) {
        this.mLiving = z10;
    }

    public void setOnCallBack(OnCallBack onCallBack) {
        this.onCallBack = onCallBack;
    }

    public void setPopAnchorView(View view) {
        this.mPopAnchorView = view;
        if (view.getContext() instanceof Activity) {
            this.mSharePopController = new b((Activity) view.getContext());
        }
    }

    public HalloweenJSAction(Activity activity, View view) {
        super(activity);
        this.mPopAnchorView = view;
        this.mSharePopController = new b(activity);
    }

    public HalloweenJSAction(Activity activity, View view, boolean z10) {
        this(activity, view);
        this.mLiving = z10;
    }
}
