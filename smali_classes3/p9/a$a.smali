.class Lp9/a$a;
.super Lcom/guochao/faceshow/aaspring/base/http/callback/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lp9/a;->refreshWalletData(Lp9/a$f;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/guochao/faceshow/aaspring/base/http/callback/c<",
        "Lcom/guochao/faceshow/mine/model/MyWalletBean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lp9/a$f;

.field final synthetic b:Lp9/a;


# direct methods
.method constructor <init>(Lp9/a;Lp9/a$f;)V
    .locals 0

    iput-object p1, p0, Lp9/a$a;->b:Lp9/a;

    iput-object p2, p0, Lp9/a$a;->a:Lp9/a$f;

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/base/http/callback/c;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/guochao/faceshow/mine/model/MyWalletBean;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V
    .locals 0
    .param p2    # Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/guochao/faceshow/mine/model/MyWalletBean;",
            "Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse<",
            "Lcom/guochao/faceshow/mine/model/MyWalletBean;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 1
    iget-object p2, p0, Lp9/a$a;->b:Lp9/a;

    invoke-virtual {p2, p1}, Lp9/a;->t(Lcom/guochao/faceshow/mine/model/MyWalletBean;)V

    .line 2
    iget-object p1, p0, Lp9/a$a;->a:Lp9/a$f;

    if-eqz p1, :cond_0

    .line 3
    invoke-interface {p1}, Lp9/a$f;->onResponse()V

    :cond_0
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
            "Lcom/guochao/faceshow/mine/model/MyWalletBean;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V
    .locals 0
    .param p2    # Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    check-cast p1, Lcom/guochao/faceshow/mine/model/MyWalletBean;

    invoke-virtual {p0, p1, p2}, Lp9/a$a;->a(Lcom/guochao/faceshow/mine/model/MyWalletBean;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V

    return-void
.end method
