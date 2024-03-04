.class Lcom/guochao/faceshow/aaspring/modulars/personal/BindEmailV2Activity$d;
.super Lcom/guochao/faceshow/aaspring/base/http/callback/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/personal/BindEmailV2Activity;->i0(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/guochao/faceshow/aaspring/base/http/callback/c<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/modulars/personal/BindEmailV2Activity;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/personal/BindEmailV2Activity;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/BindEmailV2Activity$d;->a:Lcom/guochao/faceshow/aaspring/modulars/personal/BindEmailV2Activity;

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/base/http/callback/c;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lg7/a;)V
    .locals 2
    .param p1    # Lg7/a;
        .annotation build Landroidx/annotation/NonNull;
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

    .line 1
    invoke-virtual {p1}, Lg7/a;->a()I

    move-result v0

    const v1, 0x9c4b

    if-ne v0, v1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/BindEmailV2Activity$d;->a:Lcom/guochao/faceshow/aaspring/modulars/personal/BindEmailV2Activity;

    const v0, 0x7f12019b

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;->showToast(I)V

    goto :goto_1

    .line 3
    :cond_0
    invoke-virtual {p1}, Lg7/a;->a()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    invoke-virtual {p1}, Lg7/a;->a()I

    move-result v0

    const/4 v1, -0x2

    if-ne v0, v1, :cond_1

    goto :goto_0

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/BindEmailV2Activity$d;->a:Lcom/guochao/faceshow/aaspring/modulars/personal/BindEmailV2Activity;

    invoke-virtual {p1}, Lg7/a;->c()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;->showToast(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 5
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/BindEmailV2Activity$d;->a:Lcom/guochao/faceshow/aaspring/modulars/personal/BindEmailV2Activity;

    const v0, 0x7f120225

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;->showToast(I)V

    :goto_1
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

    .line 1
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/personal/BindEmailV2Activity$d;->onResponse(Ljava/lang/String;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V

    return-void
.end method

.method public onResponse(Ljava/lang/String;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V
    .locals 0
    .param p1    # Ljava/lang/String;
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
            "Ljava/lang/String;",
            "Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/BindEmailV2Activity$d;->a:Lcom/guochao/faceshow/aaspring/modulars/personal/BindEmailV2Activity;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/personal/BindEmailV2Activity;->e0(Lcom/guochao/faceshow/aaspring/modulars/personal/BindEmailV2Activity;)Lcom/guochao/faceshow/aaspring/views/u;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    .line 3
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/BindEmailV2Activity$d;->a:Lcom/guochao/faceshow/aaspring/modulars/personal/BindEmailV2Activity;

    const p2, 0x7f120099

    invoke-virtual {p1, p2}, Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;->showToast(I)V

    return-void
.end method
