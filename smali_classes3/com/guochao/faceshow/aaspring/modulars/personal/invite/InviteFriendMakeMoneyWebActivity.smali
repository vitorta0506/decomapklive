.class public final Lcom/guochao/faceshow/aaspring/modulars/personal/invite/InviteFriendMakeMoneyWebActivity;
.super Lcom/guochao/faceshow/web/WebViewActivity;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000e\n\u0002\u0008\t\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u0019\u001a\u00020\u001aH\u0016J\u000e\u0010\u001b\u001a\u00020\u001a2\u0006\u0010\u001c\u001a\u00020\nJ\u001c\u0010\u001d\u001a\u00020\u001a2\u0008\u0010\u001e\u001a\u0004\u0018\u00010\u001f2\u0008\u0010 \u001a\u0004\u0018\u00010\u0010H\u0016R\u001c\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008R\u001c\u0010\t\u001a\u0004\u0018\u00010\nX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000b\u0010\u000c\"\u0004\u0008\r\u0010\u000eR\u0010\u0010\u000f\u001a\u0004\u0018\u00010\u0010X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u0011\u001a\u00020\u0010X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0012\u0010\u0013\"\u0004\u0008\u0014\u0010\u0015R\u001a\u0010\u0016\u001a\u00020\u0010X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0017\u0010\u0013\"\u0004\u0008\u0018\u0010\u0015\u00a8\u0006!"
    }
    d2 = {
        "Lcom/guochao/faceshow/aaspring/modulars/personal/invite/InviteFriendMakeMoneyWebActivity;",
        "Lcom/guochao/faceshow/web/WebViewActivity;",
        "()V",
        "clickedView",
        "Landroid/view/View;",
        "getClickedView",
        "()Landroid/view/View;",
        "setClickedView",
        "(Landroid/view/View;)V",
        "mInviteWebBean",
        "Lcom/guochao/faceshow/aaspring/beans/InviteWebBean;",
        "getMInviteWebBean",
        "()Lcom/guochao/faceshow/aaspring/beans/InviteWebBean;",
        "setMInviteWebBean",
        "(Lcom/guochao/faceshow/aaspring/beans/InviteWebBean;)V",
        "shareImgPath",
        "",
        "shareText",
        "getShareText",
        "()Ljava/lang/String;",
        "setShareText",
        "(Ljava/lang/String;)V",
        "shareTitle",
        "getShareTitle",
        "setShareTitle",
        "initView",
        "",
        "inviteFriendMakeMoney",
        "inviteWebBean",
        "onPageFinished",
        "view",
        "Landroid/webkit/WebView;",
        "url",
        "app_GooglePlayRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field private clickedView:Landroid/view/View;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private mInviteWebBean:Lcom/guochao/faceshow/aaspring/beans/InviteWebBean;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private shareImgPath:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private shareText:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private shareTitle:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/guochao/faceshow/web/WebViewActivity;-><init>()V

    .line 2
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/personal/invite/InviteFriendMakeMoneyWebActivity$shareTitle$1;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/aaspring/modulars/personal/invite/InviteFriendMakeMoneyWebActivity$shareTitle$1;-><init>(Lcom/guochao/faceshow/aaspring/modulars/personal/invite/InviteFriendMakeMoneyWebActivity;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/invite/InviteFriendMakeMoneyWebActivity;->shareTitle:Ljava/lang/String;

    .line 3
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/personal/invite/InviteFriendMakeMoneyWebActivity$shareText$1;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/aaspring/modulars/personal/invite/InviteFriendMakeMoneyWebActivity$shareText$1;-><init>(Lcom/guochao/faceshow/aaspring/modulars/personal/invite/InviteFriendMakeMoneyWebActivity;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/invite/InviteFriendMakeMoneyWebActivity;->shareText:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic access$getMSharePopController$p$s359609720(Lcom/guochao/faceshow/aaspring/modulars/personal/invite/InviteFriendMakeMoneyWebActivity;)Leb/b;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/web/WebViewActivity;->mSharePopController:Leb/b;

    return-object p0
.end method

.method public static synthetic b0(Lcom/guochao/faceshow/aaspring/modulars/personal/invite/InviteFriendMakeMoneyWebActivity;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/personal/invite/InviteFriendMakeMoneyWebActivity;->onPageFinished$lambda-0(Lcom/guochao/faceshow/aaspring/modulars/personal/invite/InviteFriendMakeMoneyWebActivity;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic d0(Lcom/guochao/faceshow/aaspring/modulars/personal/invite/InviteFriendMakeMoneyWebActivity;Lcom/guochao/faceshow/aaspring/beans/InviteWebBean;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/personal/invite/InviteFriendMakeMoneyWebActivity;->inviteFriendMakeMoney$lambda-3(Lcom/guochao/faceshow/aaspring/modulars/personal/invite/InviteFriendMakeMoneyWebActivity;Lcom/guochao/faceshow/aaspring/beans/InviteWebBean;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic e0(Lcom/guochao/faceshow/aaspring/modulars/personal/invite/InviteFriendMakeMoneyWebActivity;Landroid/view/View;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/personal/invite/InviteFriendMakeMoneyWebActivity;->onPageFinished$lambda-1(Lcom/guochao/faceshow/aaspring/modulars/personal/invite/InviteFriendMakeMoneyWebActivity;Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method private static final inviteFriendMakeMoney$lambda-3(Lcom/guochao/faceshow/aaspring/modulars/personal/invite/InviteFriendMakeMoneyWebActivity;Lcom/guochao/faceshow/aaspring/beans/InviteWebBean;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$inviteWebBean"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "s"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Application;->getExternalCacheDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "share.png"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {p2, v0}, Lv9/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/invite/InviteFriendMakeMoneyWebActivity;->shareImgPath:Ljava/lang/String;

    .line 4
    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/invite/InviteFriendMakeMoneyWebActivity;->mInviteWebBean:Lcom/guochao/faceshow/aaspring/beans/InviteWebBean;

    return-object v0
.end method

.method private static final onPageFinished$lambda-0(Lcom/guochao/faceshow/aaspring/modulars/personal/invite/InviteFriendMakeMoneyWebActivity;Landroid/view/View;)V
    .locals 7

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/invite/InviteFriendMakeMoneyWebActivity;->shareImgPath:Ljava/lang/String;

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/guochao/faceshow/web/WebViewActivity;->mSharePopController:Leb/b;

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/invite/InviteFriendMakeMoneyWebActivity;->shareTitle:Ljava/lang/String;

    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/invite/InviteFriendMakeMoneyWebActivity;->shareText:Ljava/lang/String;

    iget-object v4, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/invite/InviteFriendMakeMoneyWebActivity;->shareImgPath:Ljava/lang/String;

    iget-object p0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/invite/InviteFriendMakeMoneyWebActivity;->mInviteWebBean:Lcom/guochao/faceshow/aaspring/beans/InviteWebBean;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/beans/InviteWebBean;->getShareUrl()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    move-object v5, p0

    const-string v6, ""

    .line 3
    invoke-virtual/range {v0 .. v6}, Leb/b;->F(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method private static final onPageFinished$lambda-1(Lcom/guochao/faceshow/aaspring/modulars/personal/invite/InviteFriendMakeMoneyWebActivity;Landroid/view/View;)Z
    .locals 7

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/invite/InviteFriendMakeMoneyWebActivity;->shareImgPath:Ljava/lang/String;

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/guochao/faceshow/web/WebViewActivity;->mSharePopController:Leb/b;

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/invite/InviteFriendMakeMoneyWebActivity;->shareTitle:Ljava/lang/String;

    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/invite/InviteFriendMakeMoneyWebActivity;->shareText:Ljava/lang/String;

    iget-object v4, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/invite/InviteFriendMakeMoneyWebActivity;->shareImgPath:Ljava/lang/String;

    iget-object p0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/invite/InviteFriendMakeMoneyWebActivity;->mInviteWebBean:Lcom/guochao/faceshow/aaspring/beans/InviteWebBean;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/beans/InviteWebBean;->getShareUrl()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    move-object v5, p0

    const-string v6, ""

    .line 3
    invoke-virtual/range {v0 .. v6}, Leb/b;->F(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public final getClickedView()Landroid/view/View;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/invite/InviteFriendMakeMoneyWebActivity;->clickedView:Landroid/view/View;

    return-object v0
.end method

.method public final getMInviteWebBean()Lcom/guochao/faceshow/aaspring/beans/InviteWebBean;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/invite/InviteFriendMakeMoneyWebActivity;->mInviteWebBean:Lcom/guochao/faceshow/aaspring/beans/InviteWebBean;

    return-object v0
.end method

.method public final getShareText()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/invite/InviteFriendMakeMoneyWebActivity;->shareText:Ljava/lang/String;

    return-object v0
.end method

.method public final getShareTitle()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/invite/InviteFriendMakeMoneyWebActivity;->shareTitle:Ljava/lang/String;

    return-object v0
.end method

.method public initView()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/guochao/faceshow/web/WebViewActivity;->initView()V

    const v0, 0x7f120454

    .line 2
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "getString(R.string.invite_money_share_title)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/invite/InviteFriendMakeMoneyWebActivity;->shareTitle:Ljava/lang/String;

    const v0, 0x7f120453

    .line 3
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "getString(R.string.invite_money_share_text)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/invite/InviteFriendMakeMoneyWebActivity;->shareText:Ljava/lang/String;

    .line 4
    new-instance v0, Leb/b;

    invoke-direct {v0, p0}, Leb/b;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/guochao/faceshow/web/WebViewActivity;->mSharePopController:Leb/b;

    return-void
.end method

.method public final inviteFriendMakeMoney(Lcom/guochao/faceshow/aaspring/beans/InviteWebBean;)V
    .locals 8
    .param p1    # Lcom/guochao/faceshow/aaspring/beans/InviteWebBean;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "inviteWebBean"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/invite/InviteFriendMakeMoneyWebActivity;->shareImgPath:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/guochao/faceshow/web/WebViewActivity;->mSharePopController:Leb/b;

    if-eqz v1, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/invite/InviteFriendMakeMoneyWebActivity;->shareTitle:Ljava/lang/String;

    iget-object v4, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/invite/InviteFriendMakeMoneyWebActivity;->shareText:Ljava/lang/String;

    iget-object v5, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/invite/InviteFriendMakeMoneyWebActivity;->shareImgPath:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/InviteWebBean;->getShareUrl()Ljava/lang/String;

    move-result-object v6

    const-string v7, ""

    .line 3
    invoke-virtual/range {v1 .. v7}, Leb/b;->F(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 4
    :cond_0
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/InviteWebBean;->getImageBase64()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 5
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/InviteWebBean;->getImageBase64()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/reactivex/k;->just(Ljava/lang/Object;)Lio/reactivex/k;

    move-result-object v0

    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/personal/invite/f;

    invoke-direct {v1, p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/personal/invite/f;-><init>(Lcom/guochao/faceshow/aaspring/modulars/personal/invite/InviteFriendMakeMoneyWebActivity;Lcom/guochao/faceshow/aaspring/beans/InviteWebBean;)V

    invoke-virtual {v0, v1}, Lio/reactivex/k;->map(Lvh/o;)Lio/reactivex/k;

    move-result-object v0

    .line 6
    invoke-static {}, Ldi/a;->b()Lio/reactivex/s;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/k;->subscribeOn(Lio/reactivex/s;)Lio/reactivex/k;

    move-result-object v0

    invoke-static {}, Lsh/a;->a()Lio/reactivex/s;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/k;->observeOn(Lio/reactivex/s;)Lio/reactivex/k;

    move-result-object v0

    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/personal/invite/InviteFriendMakeMoneyWebActivity$inviteFriendMakeMoney$2;

    invoke-direct {v1, p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/personal/invite/InviteFriendMakeMoneyWebActivity$inviteFriendMakeMoney$2;-><init>(Lcom/guochao/faceshow/aaspring/modulars/personal/invite/InviteFriendMakeMoneyWebActivity;Lcom/guochao/faceshow/aaspring/beans/InviteWebBean;)V

    invoke-virtual {v0, v1}, Lio/reactivex/k;->subscribe(Lio/reactivex/r;)V

    :cond_1
    return-void
.end method

.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 5
    .param p1    # Landroid/webkit/WebView;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const p1, 0x7f0a0440

    .line 1
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p2, :cond_0

    const/4 v3, 0x2

    const-string v4, "inviteMoney/#/poster"

    .line 2
    invoke-static {p2, v4, v2, v3, v0}, Lkotlin/text/StringsKt;->endsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result p2

    if-ne p2, v1, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    const/4 v3, -0x1

    if-eqz p2, :cond_3

    .line 3
    new-instance p2, Landroid/view/View;

    invoke-direct {p2, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/invite/InviteFriendMakeMoneyWebActivity;->clickedView:Landroid/view/View;

    .line 4
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 5
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/invite/InviteFriendMakeMoneyWebActivity;->clickedView:Landroid/view/View;

    if-eqz p2, :cond_1

    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/personal/invite/d;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/aaspring/modulars/personal/invite/d;-><init>(Lcom/guochao/faceshow/aaspring/modulars/personal/invite/InviteFriendMakeMoneyWebActivity;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 6
    :cond_1
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/invite/InviteFriendMakeMoneyWebActivity;->clickedView:Landroid/view/View;

    if-eqz p2, :cond_2

    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/personal/invite/e;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/aaspring/modulars/personal/invite/e;-><init>(Lcom/guochao/faceshow/aaspring/modulars/personal/invite/InviteFriendMakeMoneyWebActivity;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 7
    :cond_2
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/invite/InviteFriendMakeMoneyWebActivity;->clickedView:Landroid/view/View;

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_2

    .line 8
    :cond_3
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/invite/InviteFriendMakeMoneyWebActivity;->clickedView:Landroid/view/View;

    if-eqz p2, :cond_5

    const-string v4, "container"

    .line 9
    invoke-static {p1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v4

    if-eq v4, v3, :cond_4

    goto :goto_1

    :cond_4
    const/4 v1, 0x0

    :goto_1
    if-eqz v1, :cond_5

    .line 11
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 12
    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/invite/InviteFriendMakeMoneyWebActivity;->clickedView:Landroid/view/View;

    :cond_5
    :goto_2
    return-void
.end method

.method public final setClickedView(Landroid/view/View;)V
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/invite/InviteFriendMakeMoneyWebActivity;->clickedView:Landroid/view/View;

    return-void
.end method

.method public final setMInviteWebBean(Lcom/guochao/faceshow/aaspring/beans/InviteWebBean;)V
    .locals 0
    .param p1    # Lcom/guochao/faceshow/aaspring/beans/InviteWebBean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/invite/InviteFriendMakeMoneyWebActivity;->mInviteWebBean:Lcom/guochao/faceshow/aaspring/beans/InviteWebBean;

    return-void
.end method

.method public final setShareText(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/invite/InviteFriendMakeMoneyWebActivity;->shareText:Ljava/lang/String;

    return-void
.end method

.method public final setShareTitle(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/invite/InviteFriendMakeMoneyWebActivity;->shareTitle:Ljava/lang/String;

    return-void
.end method
