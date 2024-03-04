.class Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/MusicVideoActivity$e;
.super Lcom/guochao/faceshow/aaspring/base/http/callback/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/MusicVideoActivity;->y0(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/guochao/faceshow/aaspring/base/http/callback/d<",
        "Ljava/io/File;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/MusicVideoActivity;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/MusicVideoActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/MusicVideoActivity$e;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/MusicVideoActivity;

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/base/http/callback/d;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/guochao/faceshow/aaspring/base/http/callback/c;->onCompleted()V

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/MusicVideoActivity$e;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/MusicVideoActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/MusicVideoActivity$e;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/MusicVideoActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/MusicVideoActivity$e;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/MusicVideoActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/MusicVideoActivity;->t0(Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/MusicVideoActivity;Z)Z

    .line 4
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/MusicVideoActivity$e;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/MusicVideoActivity;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/MusicVideoActivity;->play_icon:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onFailure(Lg7/a;)V
    .locals 1
    .param p1    # Lg7/a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lg7/a<",
            "Ljava/io/File;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/MusicVideoActivity$e;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/MusicVideoActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->isDestroyed()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/MusicVideoActivity$e;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/MusicVideoActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/MusicVideoActivity$e;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/MusicVideoActivity;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/MusicVideoActivity;->play_icon:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->clearAnimation()V

    .line 3
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/MusicVideoActivity$e;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/MusicVideoActivity;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/MusicVideoActivity;->play_icon:Landroid/widget/ImageView;

    const v0, 0x7f0802c9

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onProgress(JJD)V
    .locals 0

    return-void
.end method

.method public onResponse(Ljava/io/File;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V
    .locals 0
    .param p1    # Ljava/io/File;
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
            "Ljava/io/File;",
            "Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse<",
            "Ljava/io/File;",
            ">;)V"
        }
    .end annotation

    .line 2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/MusicVideoActivity$e;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/MusicVideoActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->isDestroyed()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/MusicVideoActivity$e;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/MusicVideoActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/MusicVideoActivity$e;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/MusicVideoActivity;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/MusicVideoActivity;->play_icon:Landroid/widget/ImageView;

    const p2, 0x7f0802c8

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 4
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/MusicVideoActivity$e;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/MusicVideoActivity;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/MusicVideoActivity;->r0(Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/MusicVideoActivity;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 5
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/MusicVideoActivity$e;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/MusicVideoActivity;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/MusicVideoActivity;->s0(Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/MusicVideoActivity;)Landroid/os/Handler;

    move-result-object p1

    const/16 p2, 0x65

    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_1
    :goto_0
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
    check-cast p1, Ljava/io/File;

    invoke-virtual {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/MusicVideoActivity$e;->onResponse(Ljava/io/File;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V

    return-void
.end method
