.class public final Lcom/guochao/faceshow/userhomepage/act/UserHomePageAct$initBottomLay$2$1$1;
.super Lcom/guochao/faceshow/aaspring/base/http/callback/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/userhomepage/act/UserHomePageAct;->initBottomLay$lambda-29(Lcom/guochao/faceshow/userhomepage/act/UserHomePageAct;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/guochao/faceshow/aaspring/base/http/callback/c<",
        "Lcom/guochao/faceshow/aaspring/beans/ChatStatusBean;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000#\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003*\u0001\u0000\u0008\n\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001J \u0010\u0007\u001a\u00020\u00062\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u00022\u000c\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0004H\u0016J\u0016\u0010\n\u001a\u00020\u00062\u000c\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0008H\u0016\u00a8\u0006\u000b"
    }
    d2 = {
        "com/guochao/faceshow/userhomepage/act/UserHomePageAct$initBottomLay$2$1$1",
        "Lcom/guochao/faceshow/aaspring/base/http/callback/c;",
        "Lcom/guochao/faceshow/aaspring/beans/ChatStatusBean;",
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
.field final synthetic $this_apply:Lcom/guochao/faceshow/aaspring/beans/UserPageBaseData;

.field final synthetic this$0:Lcom/guochao/faceshow/userhomepage/act/UserHomePageAct;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/beans/UserPageBaseData;Lcom/guochao/faceshow/userhomepage/act/UserHomePageAct;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/userhomepage/act/UserHomePageAct$initBottomLay$2$1$1;->$this_apply:Lcom/guochao/faceshow/aaspring/beans/UserPageBaseData;

    iput-object p2, p0, Lcom/guochao/faceshow/userhomepage/act/UserHomePageAct$initBottomLay$2$1$1;->this$0:Lcom/guochao/faceshow/userhomepage/act/UserHomePageAct;

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
            "Lcom/guochao/faceshow/aaspring/beans/ChatStatusBean;",
            ">;)V"
        }
    .end annotation

    const-string v0, "exp"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p1, Lcom/guochao/faceshow/userhomepage/act/UserHomePageAct;->TAG:Ljava/lang/String;

    const-string v0, "onFailure: "

    invoke-static {p1, v0}, Lcom/guochao/faceshow/aaspring/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onResponse(Lcom/guochao/faceshow/aaspring/beans/ChatStatusBean;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V
    .locals 2
    .param p1    # Lcom/guochao/faceshow/aaspring/beans/ChatStatusBean;
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
            "Lcom/guochao/faceshow/aaspring/beans/ChatStatusBean;",
            "Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse<",
            "Lcom/guochao/faceshow/aaspring/beans/ChatStatusBean;",
            ">;)V"
        }
    .end annotation

    const-string v0, "baseResponse"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object p2, p0, Lcom/guochao/faceshow/userhomepage/act/UserHomePageAct$initBottomLay$2$1$1;->$this_apply:Lcom/guochao/faceshow/aaspring/beans/UserPageBaseData;

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/userhomepage/act/UserHomePageAct$initBottomLay$2$1$1;->this$0:Lcom/guochao/faceshow/userhomepage/act/UserHomePageAct;

    invoke-virtual {v0}, Lcom/guochao/faceshow/userhomepage/act/UserHomePageAct;->getMUserId()Ljava/lang/String;

    move-result-object v0

    .line 4
    iget-object v1, p0, Lcom/guochao/faceshow/userhomepage/act/UserHomePageAct$initBottomLay$2$1$1;->this$0:Lcom/guochao/faceshow/userhomepage/act/UserHomePageAct;

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->getActivity()Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;

    move-result-object v1

    .line 5
    invoke-static {p2, v0, v1, p1}, Lib/b;->c(Lcom/guochao/faceshow/aaspring/beans/UserPageBaseData;Ljava/lang/String;Landroid/app/Activity;Lcom/guochao/faceshow/aaspring/beans/ChatStatusBean;)V

    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/guochao/faceshow/aaspring/beans/ChatStatusBean;

    invoke-virtual {p0, p1, p2}, Lcom/guochao/faceshow/userhomepage/act/UserHomePageAct$initBottomLay$2$1$1;->onResponse(Lcom/guochao/faceshow/aaspring/beans/ChatStatusBean;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V

    return-void
.end method
