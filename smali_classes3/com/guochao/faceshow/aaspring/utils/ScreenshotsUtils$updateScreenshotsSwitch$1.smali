.class public final Lcom/guochao/faceshow/aaspring/utils/ScreenshotsUtils$updateScreenshotsSwitch$1;
.super Lcom/guochao/faceshow/aaspring/base/http/callback/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/utils/ScreenshotsUtils;->updateScreenshotsSwitch(Landroidx/fragment/app/Fragment;ILjava/lang/String;Lcom/guochao/faceshow/aaspring/utils/ScreenshotsUtils$CallBack;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/guochao/faceshow/aaspring/base/http/callback/c<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000#\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004*\u0001\u0000\u0008\n\u0018\u00002\n\u0012\u0006\u0012\u0004\u0018\u00010\u00020\u0001J\"\u0010\u0007\u001a\u00020\u00062\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u00022\u000e\u0010\u0005\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00020\u0004H\u0016J\u0018\u0010\n\u001a\u00020\u00062\u000e\u0010\t\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00020\u0008H\u0016J\u0008\u0010\u000b\u001a\u00020\u0006H\u0016\u00a8\u0006\u000c"
    }
    d2 = {
        "com/guochao/faceshow/aaspring/utils/ScreenshotsUtils$updateScreenshotsSwitch$1",
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
        "onCompleted",
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
.field final synthetic $callBack:Lcom/guochao/faceshow/aaspring/utils/ScreenshotsUtils$CallBack;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/utils/ScreenshotsUtils$CallBack;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/utils/ScreenshotsUtils$updateScreenshotsSwitch$1;->$callBack:Lcom/guochao/faceshow/aaspring/utils/ScreenshotsUtils$CallBack;

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/base/http/callback/c;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/guochao/faceshow/aaspring/base/http/callback/c;->onCompleted()V

    .line 2
    sget-object v0, Lcom/guochao/faceshow/aaspring/utils/ScreenshotsUtils;->INSTANCE:Lcom/guochao/faceshow/aaspring/utils/ScreenshotsUtils;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/utils/ScreenshotsUtils;->setPost(Z)V

    return-void
.end method

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
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string v0, "exp"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/utils/ScreenshotsUtils$updateScreenshotsSwitch$1;->$callBack:Lcom/guochao/faceshow/aaspring/utils/ScreenshotsUtils$CallBack;

    if-eqz p1, :cond_0

    .line 2
    invoke-interface {p1}, Lcom/guochao/faceshow/aaspring/utils/ScreenshotsUtils$CallBack;->onErrorCallback()V

    :cond_0
    return-void
.end method

.method public onResponse(Ljava/lang/Object;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
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
            "Ljava/lang/Object;",
            "Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string p1, "baseResponse"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/utils/ScreenshotsUtils$updateScreenshotsSwitch$1;->$callBack:Lcom/guochao/faceshow/aaspring/utils/ScreenshotsUtils$CallBack;

    if-eqz p1, :cond_0

    .line 2
    invoke-interface {p1}, Lcom/guochao/faceshow/aaspring/utils/ScreenshotsUtils$CallBack;->onCallback()V

    :cond_0
    return-void
.end method
