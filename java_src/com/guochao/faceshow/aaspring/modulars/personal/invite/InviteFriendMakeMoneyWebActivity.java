package com.guochao.faceshow.aaspring.modulars.personal.invite;

import android.text.TextUtils;
import android.view.View;
import com.facebook.appevents.internal.ViewHierarchyConstants;
import com.guochao.faceshow.BaseApplication;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.beans.InviteWebBean;
import com.guochao.faceshow.aaspring.utils.SimpleObserver;
import com.guochao.faceshow.web.WebViewActivity;
import java.io.File;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import vh.o;
@Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\b\t\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\b\u0010\u0019\u001a\u00020\u001aH\u0016J\u000e\u0010\u001b\u001a\u00020\u001a2\u0006\u0010\u001c\u001a\u00020\nJ\u001c\u0010\u001d\u001a\u00020\u001a2\b\u0010\u001e\u001a\u0004\u0018\u00010\u001f2\b\u0010 \u001a\u0004\u0018\u00010\u0010H\u0016R\u001c\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR\u001c\u0010\t\u001a\u0004\u0018\u00010\nX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000b\u0010\f\"\u0004\b\r\u0010\u000eR\u0010\u0010\u000f\u001a\u0004\u0018\u00010\u0010X\u0082\u000e¢\u0006\u0002\n\u0000R\u001a\u0010\u0011\u001a\u00020\u0010X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0012\u0010\u0013\"\u0004\b\u0014\u0010\u0015R\u001a\u0010\u0016\u001a\u00020\u0010X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0017\u0010\u0013\"\u0004\b\u0018\u0010\u0015¨\u0006!"}, d2 = {"Lcom/guochao/faceshow/aaspring/modulars/personal/invite/InviteFriendMakeMoneyWebActivity;", "Lcom/guochao/faceshow/web/WebViewActivity;", "()V", "clickedView", "Landroid/view/View;", "getClickedView", "()Landroid/view/View;", "setClickedView", "(Landroid/view/View;)V", "mInviteWebBean", "Lcom/guochao/faceshow/aaspring/beans/InviteWebBean;", "getMInviteWebBean", "()Lcom/guochao/faceshow/aaspring/beans/InviteWebBean;", "setMInviteWebBean", "(Lcom/guochao/faceshow/aaspring/beans/InviteWebBean;)V", "shareImgPath", "", "shareText", "getShareText", "()Ljava/lang/String;", "setShareText", "(Ljava/lang/String;)V", "shareTitle", "getShareTitle", "setShareTitle", "initView", "", "inviteFriendMakeMoney", "inviteWebBean", "onPageFinished", ViewHierarchyConstants.VIEW_KEY, "Landroid/webkit/WebView;", "url", "app_GooglePlayRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes3.dex */
public final class InviteFriendMakeMoneyWebActivity extends WebViewActivity {
    @Nullable
    private View clickedView;
    @Nullable
    private InviteWebBean mInviteWebBean;
    @Nullable
    private String shareImgPath;
    @NotNull
    private String shareText;
    @NotNull
    private String shareTitle;

    public InviteFriendMakeMoneyWebActivity() {
        Lazy lazy;
        Lazy lazy2;
        lazy = LazyKt__LazyJVMKt.lazy(new Function0<Unit>() { // from class: com.guochao.faceshow.aaspring.modulars.personal.invite.InviteFriendMakeMoneyWebActivity$shareTitle$1
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public /* bridge */ /* synthetic */ Unit invoke() {
                invoke2();
                return Unit.INSTANCE;
            }

            /* renamed from: invoke  reason: avoid collision after fix types in other method */
            public final void invoke2() {
                InviteFriendMakeMoneyWebActivity.this.initView();
            }
        });
        this.shareTitle = lazy.toString();
        lazy2 = LazyKt__LazyJVMKt.lazy(new Function0<Unit>() { // from class: com.guochao.faceshow.aaspring.modulars.personal.invite.InviteFriendMakeMoneyWebActivity$shareText$1
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public /* bridge */ /* synthetic */ Unit invoke() {
                invoke2();
                return Unit.INSTANCE;
            }

            /* renamed from: invoke  reason: avoid collision after fix types in other method */
            public final void invoke2() {
                InviteFriendMakeMoneyWebActivity.this.initView();
            }
        });
        this.shareText = lazy2.toString();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: inviteFriendMakeMoney$lambda-3  reason: not valid java name */
    public static final String m534inviteFriendMakeMoney$lambda3(InviteFriendMakeMoneyWebActivity this$0, InviteWebBean inviteWebBean, String s10) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(inviteWebBean, "$inviteWebBean");
        Intrinsics.checkNotNullParameter(s10, "s");
        String str = BaseApplication.getInstance().getExternalCacheDir() + File.separator + "share.png";
        v9.c.b(s10, str);
        this$0.shareImgPath = str;
        this$0.mInviteWebBean = inviteWebBean;
        return str;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: onPageFinished$lambda-0  reason: not valid java name */
    public static final void m535onPageFinished$lambda0(InviteFriendMakeMoneyWebActivity this$0, View view) {
        eb.b bVar;
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        if (this$0.shareImgPath == null || (bVar = this$0.mSharePopController) == null) {
            return;
        }
        View rootView = this$0.getWindow().getDecorView().getRootView();
        String str = this$0.shareTitle;
        String str2 = this$0.shareText;
        String str3 = this$0.shareImgPath;
        InviteWebBean inviteWebBean = this$0.mInviteWebBean;
        bVar.F(rootView, str, str2, str3, inviteWebBean != null ? inviteWebBean.getShareUrl() : null, "");
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: onPageFinished$lambda-1  reason: not valid java name */
    public static final boolean m536onPageFinished$lambda1(InviteFriendMakeMoneyWebActivity this$0, View view) {
        eb.b bVar;
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        if (this$0.shareImgPath == null || (bVar = this$0.mSharePopController) == null) {
            return true;
        }
        View rootView = this$0.getWindow().getDecorView().getRootView();
        String str = this$0.shareTitle;
        String str2 = this$0.shareText;
        String str3 = this$0.shareImgPath;
        InviteWebBean inviteWebBean = this$0.mInviteWebBean;
        bVar.F(rootView, str, str2, str3, inviteWebBean != null ? inviteWebBean.getShareUrl() : null, "");
        return true;
    }

    @Nullable
    public final View getClickedView() {
        return this.clickedView;
    }

    @Nullable
    public final InviteWebBean getMInviteWebBean() {
        return this.mInviteWebBean;
    }

    @NotNull
    public final String getShareText() {
        return this.shareText;
    }

    @NotNull
    public final String getShareTitle() {
        return this.shareTitle;
    }

    @Override // com.guochao.faceshow.web.WebViewActivity, com.guochao.faceshow.aaspring.base.activity.BaseActivity
    public void initView() {
        super.initView();
        String string = getString(R.string.invite_money_share_title);
        Intrinsics.checkNotNullExpressionValue(string, "getString(R.string.invite_money_share_title)");
        this.shareTitle = string;
        String string2 = getString(R.string.invite_money_share_text);
        Intrinsics.checkNotNullExpressionValue(string2, "getString(R.string.invite_money_share_text)");
        this.shareText = string2;
        this.mSharePopController = new eb.b(this);
    }

    public final void inviteFriendMakeMoney(@NotNull final InviteWebBean inviteWebBean) {
        eb.b bVar;
        Intrinsics.checkNotNullParameter(inviteWebBean, "inviteWebBean");
        if (this.shareImgPath != null && (bVar = this.mSharePopController) != null) {
            bVar.F(getWindow().getDecorView().getRootView(), this.shareTitle, this.shareText, this.shareImgPath, inviteWebBean.getShareUrl(), "");
        } else if (TextUtils.isEmpty(inviteWebBean.getImageBase64())) {
        } else {
            io.reactivex.k.just(inviteWebBean.getImageBase64()).map(new o() { // from class: com.guochao.faceshow.aaspring.modulars.personal.invite.f
                @Override // vh.o
                public final Object apply(Object obj) {
                    String m534inviteFriendMakeMoney$lambda3;
                    m534inviteFriendMakeMoney$lambda3 = InviteFriendMakeMoneyWebActivity.m534inviteFriendMakeMoney$lambda3(InviteFriendMakeMoneyWebActivity.this, inviteWebBean, (String) obj);
                    return m534inviteFriendMakeMoney$lambda3;
                }
            }).subscribeOn(di.a.b()).observeOn(sh.a.a()).subscribe(new SimpleObserver<String>() { // from class: com.guochao.faceshow.aaspring.modulars.personal.invite.InviteFriendMakeMoneyWebActivity$inviteFriendMakeMoney$2
                @Override // com.guochao.faceshow.aaspring.utils.SimpleObserver, io.reactivex.r
                public void onNext(@NotNull String path) {
                    eb.b bVar2;
                    eb.b bVar3;
                    Intrinsics.checkNotNullParameter(path, "path");
                    super.onNext((InviteFriendMakeMoneyWebActivity$inviteFriendMakeMoney$2) path);
                    if (InviteFriendMakeMoneyWebActivity.this.isDestroyed() || InviteFriendMakeMoneyWebActivity.this.isFinishing()) {
                        return;
                    }
                    bVar2 = ((WebViewActivity) InviteFriendMakeMoneyWebActivity.this).mSharePopController;
                    if (bVar2 != null) {
                        bVar3 = ((WebViewActivity) InviteFriendMakeMoneyWebActivity.this).mSharePopController;
                        bVar3.F(InviteFriendMakeMoneyWebActivity.this.getWindow().getDecorView().getRootView(), InviteFriendMakeMoneyWebActivity.this.getShareTitle(), InviteFriendMakeMoneyWebActivity.this.getShareText(), path, inviteWebBean.getShareUrl(), "");
                    }
                }
            });
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x001d  */
    /* JADX WARN: Removed duplicated region for block: B:17:0x004a  */
    @Override // com.guochao.faceshow.web.WebViewActivity, com.guochao.faceshow.aaspring.base.fragment.WebViewFragment.d
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void onPageFinished(@org.jetbrains.annotations.Nullable android.webkit.WebView r6, @org.jetbrains.annotations.Nullable java.lang.String r7) {
        /*
            r5 = this;
            r6 = 2131362880(0x7f0a0440, float:1.8345553E38)
            android.view.View r6 = r5.findViewById(r6)
            android.view.ViewGroup r6 = (android.view.ViewGroup) r6
            r0 = 0
            r1 = 1
            r2 = 0
            if (r7 == 0) goto L19
            r3 = 2
            java.lang.String r4 = "inviteMoney/#/poster"
            boolean r7 = kotlin.text.StringsKt.endsWith$default(r7, r4, r2, r3, r0)
            if (r7 != r1) goto L19
            r7 = 1
            goto L1a
        L19:
            r7 = 0
        L1a:
            r3 = -1
            if (r7 == 0) goto L4a
            android.view.View r7 = new android.view.View
            r7.<init>(r5)
            r5.clickedView = r7
            android.view.ViewGroup$LayoutParams r0 = new android.view.ViewGroup$LayoutParams
            r0.<init>(r3, r3)
            r7.setLayoutParams(r0)
            android.view.View r7 = r5.clickedView
            if (r7 == 0) goto L38
            com.guochao.faceshow.aaspring.modulars.personal.invite.d r0 = new com.guochao.faceshow.aaspring.modulars.personal.invite.d
            r0.<init>()
            r7.setOnClickListener(r0)
        L38:
            android.view.View r7 = r5.clickedView
            if (r7 == 0) goto L44
            com.guochao.faceshow.aaspring.modulars.personal.invite.e r0 = new com.guochao.faceshow.aaspring.modulars.personal.invite.e
            r0.<init>()
            r7.setOnLongClickListener(r0)
        L44:
            android.view.View r7 = r5.clickedView
            r6.addView(r7)
            goto L62
        L4a:
            android.view.View r7 = r5.clickedView
            if (r7 == 0) goto L62
            java.lang.String r4 = "container"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r6, r4)
            int r4 = r6.indexOfChild(r7)
            if (r4 == r3) goto L5a
            goto L5b
        L5a:
            r1 = 0
        L5b:
            if (r1 == 0) goto L62
            r6.removeView(r7)
            r5.clickedView = r0
        L62:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.guochao.faceshow.aaspring.modulars.personal.invite.InviteFriendMakeMoneyWebActivity.onPageFinished(android.webkit.WebView, java.lang.String):void");
    }

    public final void setClickedView(@Nullable View view) {
        this.clickedView = view;
    }

    public final void setMInviteWebBean(@Nullable InviteWebBean inviteWebBean) {
        this.mInviteWebBean = inviteWebBean;
    }

    public final void setShareText(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.shareText = str;
    }

    public final void setShareTitle(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.shareTitle = str;
    }
}
