.class Lcom/guochao/faceshow/aaspring/modulars/live/game/PkIconLayoutGameHolder$c;
.super Lcom/guochao/faceshow/aaspring/base/http/callback/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/live/game/PkIconLayoutGameHolder;->k(Landroid/app/Dialog;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/guochao/faceshow/aaspring/base/http/callback/c<",
        "Lcom/guochao/faceshow/aaspring/beans/PkRound;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Landroid/app/Dialog;

.field final synthetic b:Lcom/guochao/faceshow/aaspring/modulars/live/game/PkIconLayoutGameHolder;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/live/game/PkIconLayoutGameHolder;Landroid/app/Dialog;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/PkIconLayoutGameHolder$c;->b:Lcom/guochao/faceshow/aaspring/modulars/live/game/PkIconLayoutGameHolder;

    iput-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/PkIconLayoutGameHolder$c;->a:Landroid/app/Dialog;

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/base/http/callback/c;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/guochao/faceshow/aaspring/beans/PkRound;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V
    .locals 2
    .param p1    # Lcom/guochao/faceshow/aaspring/beans/PkRound;
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
            "Lcom/guochao/faceshow/aaspring/beans/PkRound;",
            "Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse<",
            "Lcom/guochao/faceshow/aaspring/beans/PkRound;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/PkIconLayoutGameHolder$c;->a:Landroid/app/Dialog;

    invoke-virtual {p2}, Landroid/app/Dialog;->dismiss()V

    .line 2
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/PkIconLayoutGameHolder$c;->b:Lcom/guochao/faceshow/aaspring/modulars/live/game/PkIconLayoutGameHolder;

    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/modulars/live/game/PkIconLayoutGameHolder;->j()Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/PkIconLayoutGameHolder$c;->b:Lcom/guochao/faceshow/aaspring/modulars/live/game/PkIconLayoutGameHolder;

    invoke-static {p2}, Lcom/guochao/faceshow/aaspring/modulars/live/game/PkIconLayoutGameHolder;->f(Lcom/guochao/faceshow/aaspring/modulars/live/game/PkIconLayoutGameHolder;)Lcom/guochao/faceshow/aaspring/modulars/live/game/PkIconLayoutGameHolder$d;

    move-result-object p2

    if-eqz p2, :cond_0

    if-eqz p1, :cond_0

    .line 3
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/PkIconLayoutGameHolder$c;->b:Lcom/guochao/faceshow/aaspring/modulars/live/game/PkIconLayoutGameHolder;

    invoke-static {p2}, Lcom/guochao/faceshow/aaspring/modulars/live/game/PkIconLayoutGameHolder;->f(Lcom/guochao/faceshow/aaspring/modulars/live/game/PkIconLayoutGameHolder;)Lcom/guochao/faceshow/aaspring/modulars/live/game/PkIconLayoutGameHolder$d;

    move-result-object p2

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/PkRound;->getSelectTime()J

    move-result-wide v0

    invoke-interface {p2, v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/live/game/PkIconLayoutGameHolder$d;->e(J)V

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/PkIconLayoutGameHolder$c;->b:Lcom/guochao/faceshow/aaspring/modulars/live/game/PkIconLayoutGameHolder;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/game/PkIconLayoutGameHolder;->g(Lcom/guochao/faceshow/aaspring/modulars/live/game/PkIconLayoutGameHolder;)V

    .line 5
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/PkIconLayoutGameHolder$c;->b:Lcom/guochao/faceshow/aaspring/modulars/live/game/PkIconLayoutGameHolder;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/live/game/PkIconLayoutGameHolder;->d(Lcom/guochao/faceshow/aaspring/modulars/live/game/PkIconLayoutGameHolder;Z)Z

    return-void
.end method

.method public onFailure(Lg7/a;)V
    .locals 3
    .param p1    # Lg7/a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lg7/a<",
            "Lcom/guochao/faceshow/aaspring/beans/PkRound;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/PkIconLayoutGameHolder$c;->b:Lcom/guochao/faceshow/aaspring/modulars/live/game/PkIconLayoutGameHolder;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/live/game/PkIconLayoutGameHolder;->d(Lcom/guochao/faceshow/aaspring/modulars/live/game/PkIconLayoutGameHolder;Z)Z

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/PkIconLayoutGameHolder$c;->b:Lcom/guochao/faceshow/aaspring/modulars/live/game/PkIconLayoutGameHolder;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/game/PkIconLayoutGameHolder;->h(Lcom/guochao/faceshow/aaspring/modulars/live/game/PkIconLayoutGameHolder;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u5f02\u5e38\u8fd4\u56deCode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lg7/a;->a()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lg7/a;->c()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/guochao/faceshow/aaspring/utils/ToastUtils;->debugToast(Landroid/content/Context;Ljava/lang/CharSequence;)Landroid/widget/Toast;

    .line 3
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/PkIconLayoutGameHolder$c;->a:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

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

    check-cast p1, Lcom/guochao/faceshow/aaspring/beans/PkRound;

    invoke-virtual {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/live/game/PkIconLayoutGameHolder$c;->a(Lcom/guochao/faceshow/aaspring/beans/PkRound;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V

    return-void
.end method
