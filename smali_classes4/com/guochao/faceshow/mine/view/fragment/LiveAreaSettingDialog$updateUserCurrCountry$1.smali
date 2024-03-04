.class public final Lcom/guochao/faceshow/mine/view/fragment/LiveAreaSettingDialog$updateUserCurrCountry$1;
.super Lcom/guochao/faceshow/aaspring/base/http/callback/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/mine/view/fragment/LiveAreaSettingDialog;->updateUserCurrCountry()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/guochao/faceshow/aaspring/base/http/callback/c<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000#\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003*\u0001\u0000\u0008\n\u0018\u00002\n\u0012\u0006\u0012\u0004\u0018\u00010\u00020\u0001J\"\u0010\u0007\u001a\u00020\u00062\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u00022\u000e\u0010\u0005\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00020\u0004H\u0016J\u0018\u0010\n\u001a\u00020\u00062\u000e\u0010\t\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00020\u0008H\u0016\u00a8\u0006\u000b"
    }
    d2 = {
        "com/guochao/faceshow/mine/view/fragment/LiveAreaSettingDialog$updateUserCurrCountry$1",
        "Lcom/guochao/faceshow/aaspring/base/http/callback/c;",
        "",
        "data",
        "Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;",
        "baseResponse",
        "",
        "onResponse",
        "Lg7/a;",
        "exp",
        "onFailure",
        "app_GooglePlayRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/guochao/faceshow/mine/view/fragment/LiveAreaSettingDialog;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/mine/view/fragment/LiveAreaSettingDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/mine/view/fragment/LiveAreaSettingDialog$updateUserCurrCountry$1;->this$0:Lcom/guochao/faceshow/mine/view/fragment/LiveAreaSettingDialog;

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/base/http/callback/c;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lg7/a;)V
    .locals 1
    .param p1    # Lg7/a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lg7/a<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "exp"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/guochao/faceshow/mine/view/fragment/LiveAreaSettingDialog$updateUserCurrCountry$1;->onResponse(Ljava/lang/String;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V

    return-void
.end method

.method public onResponse(Ljava/lang/String;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string p1, "baseResponse"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Lcom/guochao/faceshow/mine/view/fragment/LiveAreaSettingDialog$updateUserCurrCountry$1;->this$0:Lcom/guochao/faceshow/mine/view/fragment/LiveAreaSettingDialog;

    invoke-virtual {p1}, Lcom/guochao/faceshow/mine/view/fragment/LiveAreaSettingDialog;->getSelectCountry()Lcom/guochao/faceshow/aaspring/beans/CountryStateBean$Country;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p2, p0, Lcom/guochao/faceshow/mine/view/fragment/LiveAreaSettingDialog$updateUserCurrCountry$1;->this$0:Lcom/guochao/faceshow/mine/view/fragment/LiveAreaSettingDialog;

    invoke-virtual {p2}, Lcom/guochao/faceshow/mine/view/fragment/LiveAreaSettingDialog;->getOnDismissListener()Lcom/guochao/faceshow/mine/view/fragment/LiveAreaSettingDialog$OnDismissListener;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-interface {p2, p1}, Lcom/guochao/faceshow/mine/view/fragment/LiveAreaSettingDialog$OnDismissListener;->dismissWithItem(Lcom/guochao/faceshow/aaspring/beans/CountryStateBean$Country;)V

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/guochao/faceshow/mine/view/fragment/LiveAreaSettingDialog$updateUserCurrCountry$1;->this$0:Lcom/guochao/faceshow/mine/view/fragment/LiveAreaSettingDialog;

    invoke-virtual {p1}, Landroidx/fragment/app/DialogFragment;->dismissAllowingStateLoss()V

    return-void
.end method
