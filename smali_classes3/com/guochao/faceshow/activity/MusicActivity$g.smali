.class Lcom/guochao/faceshow/activity/MusicActivity$g;
.super Lcom/guochao/faceshow/aaspring/base/http/callback/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/activity/MusicActivity;->o1(Ljava/lang/String;Ljava/lang/String;Landroid/widget/ImageView;Landroid/widget/LinearLayout;)V
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
.field final synthetic a:Landroid/widget/ImageView;

.field final synthetic b:Landroid/widget/LinearLayout;

.field final synthetic c:Lcom/guochao/faceshow/activity/MusicActivity;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/activity/MusicActivity;Landroid/widget/ImageView;Landroid/widget/LinearLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/activity/MusicActivity$g;->c:Lcom/guochao/faceshow/activity/MusicActivity;

    iput-object p2, p0, Lcom/guochao/faceshow/activity/MusicActivity$g;->a:Landroid/widget/ImageView;

    iput-object p3, p0, Lcom/guochao/faceshow/activity/MusicActivity$g;->b:Landroid/widget/LinearLayout;

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/base/http/callback/d;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/guochao/faceshow/aaspring/base/http/callback/c;->onCompleted()V

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/activity/MusicActivity$g;->c:Lcom/guochao/faceshow/activity/MusicActivity;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/guochao/faceshow/activity/MusicActivity;->z:Z

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/activity/MusicActivity$g;->a:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

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
    iget-object p1, p0, Lcom/guochao/faceshow/activity/MusicActivity$g;->a:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->clearAnimation()V

    .line 2
    iget-object p1, p0, Lcom/guochao/faceshow/activity/MusicActivity$g;->a:Landroid/widget/ImageView;

    const v0, 0x7f0f05e2

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

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
    iget-object p1, p0, Lcom/guochao/faceshow/activity/MusicActivity$g;->a:Landroid/widget/ImageView;

    const p2, 0x7f0f0574

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 3
    iget-object p1, p0, Lcom/guochao/faceshow/activity/MusicActivity$g;->b:Landroid/widget/LinearLayout;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 4
    iget-object p1, p0, Lcom/guochao/faceshow/activity/MusicActivity$g;->c:Lcom/guochao/faceshow/activity/MusicActivity;

    iget-object p2, p0, Lcom/guochao/faceshow/activity/MusicActivity$g;->b:Landroid/widget/LinearLayout;

    invoke-static {p1, p2}, Lcom/guochao/faceshow/activity/MusicActivity;->m1(Lcom/guochao/faceshow/activity/MusicActivity;Landroid/widget/LinearLayout;)Landroid/widget/LinearLayout;

    .line 5
    iget-object p1, p0, Lcom/guochao/faceshow/activity/MusicActivity$g;->c:Lcom/guochao/faceshow/activity/MusicActivity;

    iget-object p2, p0, Lcom/guochao/faceshow/activity/MusicActivity$g;->a:Landroid/widget/ImageView;

    invoke-static {p1, p2}, Lcom/guochao/faceshow/activity/MusicActivity;->i0(Lcom/guochao/faceshow/activity/MusicActivity;Landroid/widget/ImageView;)Landroid/widget/ImageView;

    .line 6
    iget-object p1, p0, Lcom/guochao/faceshow/activity/MusicActivity$g;->c:Lcom/guochao/faceshow/activity/MusicActivity;

    invoke-static {p1}, Lcom/guochao/faceshow/activity/MusicActivity;->S0(Lcom/guochao/faceshow/activity/MusicActivity;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 7
    iget-object p1, p0, Lcom/guochao/faceshow/activity/MusicActivity$g;->c:Lcom/guochao/faceshow/activity/MusicActivity;

    invoke-static {p1}, Lcom/guochao/faceshow/activity/MusicActivity;->y0(Lcom/guochao/faceshow/activity/MusicActivity;)Landroid/os/Handler;

    move-result-object p1

    const/16 p2, 0x65

    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
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

    invoke-virtual {p0, p1, p2}, Lcom/guochao/faceshow/activity/MusicActivity$g;->onResponse(Ljava/io/File;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V

    return-void
.end method
