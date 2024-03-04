.class Lcom/guochao/faceshow/mine/view/SetInfoActivity$c0;
.super Lcom/guochao/faceshow/aaspring/base/http/callback/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/mine/view/SetInfoActivity;->o1()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/guochao/faceshow/aaspring/base/http/callback/c<",
        "Lcom/guochao/faceshow/aaspring/beans/SetInfoData;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/mine/view/SetInfoActivity;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/mine/view/SetInfoActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/mine/view/SetInfoActivity$c0;->a:Lcom/guochao/faceshow/mine/view/SetInfoActivity;

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/base/http/callback/c;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/guochao/faceshow/aaspring/beans/SetInfoData;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V
    .locals 0
    .param p1    # Lcom/guochao/faceshow/aaspring/beans/SetInfoData;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/guochao/faceshow/aaspring/beans/SetInfoData;",
            "Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse<",
            "Lcom/guochao/faceshow/aaspring/beans/SetInfoData;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object p2, p0, Lcom/guochao/faceshow/mine/view/SetInfoActivity$c0;->a:Lcom/guochao/faceshow/mine/view/SetInfoActivity;

    invoke-static {p2, p1}, Lcom/guochao/faceshow/mine/view/SetInfoActivity;->Z0(Lcom/guochao/faceshow/mine/view/SetInfoActivity;Lcom/guochao/faceshow/aaspring/beans/SetInfoData;)Lcom/guochao/faceshow/aaspring/beans/SetInfoData;

    .line 2
    iget-object p2, p0, Lcom/guochao/faceshow/mine/view/SetInfoActivity$c0;->a:Lcom/guochao/faceshow/mine/view/SetInfoActivity;

    invoke-static {p2, p1}, Lcom/guochao/faceshow/mine/view/SetInfoActivity;->S0(Lcom/guochao/faceshow/mine/view/SetInfoActivity;Lcom/guochao/faceshow/aaspring/beans/SetInfoData;)V

    .line 3
    iget-object p2, p0, Lcom/guochao/faceshow/mine/view/SetInfoActivity$c0;->a:Lcom/guochao/faceshow/mine/view/SetInfoActivity;

    invoke-static {p2, p1}, Lcom/guochao/faceshow/mine/view/SetInfoActivity;->T0(Lcom/guochao/faceshow/mine/view/SetInfoActivity;Lcom/guochao/faceshow/aaspring/beans/SetInfoData;)V

    return-void
.end method

.method public onFailure(Lg7/a;)V
    .locals 0
    .param p1    # Lg7/a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lg7/a<",
            "Lcom/guochao/faceshow/aaspring/beans/SetInfoData;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    check-cast p1, Lcom/guochao/faceshow/aaspring/beans/SetInfoData;

    invoke-virtual {p0, p1, p2}, Lcom/guochao/faceshow/mine/view/SetInfoActivity$c0;->a(Lcom/guochao/faceshow/aaspring/beans/SetInfoData;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V

    return-void
.end method
