.class Lcom/guochao/faceshow/aaspring/modulars/live/pk/a$a;
.super Lcom/guochao/faceshow/aaspring/base/http/callback/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/live/pk/a;->h(Lcom/guochao/faceshow/aaspring/beans/LivePkInvite;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/guochao/faceshow/aaspring/base/http/callback/c<",
        "Lcom/guochao/faceshow/aaspring/beans/PkInviteStatus;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/beans/LivePkInvite;

.field final synthetic b:Lcom/guochao/faceshow/aaspring/modulars/live/pk/a;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/live/pk/a;Lcom/guochao/faceshow/aaspring/beans/LivePkInvite;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/pk/a$a;->b:Lcom/guochao/faceshow/aaspring/modulars/live/pk/a;

    iput-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/pk/a$a;->a:Lcom/guochao/faceshow/aaspring/beans/LivePkInvite;

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/base/http/callback/c;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/guochao/faceshow/aaspring/beans/PkInviteStatus;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V
    .locals 1
    .param p1    # Lcom/guochao/faceshow/aaspring/beans/PkInviteStatus;
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
            "Lcom/guochao/faceshow/aaspring/beans/PkInviteStatus;",
            "Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse<",
            "Lcom/guochao/faceshow/aaspring/beans/PkInviteStatus;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/PkInviteStatus;->getStatus()Ljava/lang/String;

    move-result-object p2

    const-string v0, "1"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/pk/a$a;->b:Lcom/guochao/faceshow/aaspring/modulars/live/pk/a;

    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/pk/a$a;->a:Lcom/guochao/faceshow/aaspring/beans/LivePkInvite;

    invoke-virtual {p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/live/pk/a;->g(Lcom/guochao/faceshow/aaspring/beans/LivePkInvite;)V

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    .line 3
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/PkInviteStatus;->getStatus()Ljava/lang/String;

    move-result-object p1

    const-string p2, "0"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 4
    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object p1

    const p2, 0x7f120703

    invoke-static {p1, p2}, Lcom/guochao/faceshow/aaspring/utils/ToastUtils;->showToast(Landroid/content/Context;I)Landroid/widget/Toast;

    :cond_1
    :goto_0
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
            "Lcom/guochao/faceshow/aaspring/beans/PkInviteStatus;",
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

    check-cast p1, Lcom/guochao/faceshow/aaspring/beans/PkInviteStatus;

    invoke-virtual {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/live/pk/a$a;->a(Lcom/guochao/faceshow/aaspring/beans/PkInviteStatus;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V

    return-void
.end method
