.class Lcom/guochao/faceshow/activity/MusicActivity$q;
.super Lkc/f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/activity/MusicActivity;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/activity/MusicActivity;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/activity/MusicActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/activity/MusicActivity$q;->a:Lcom/guochao/faceshow/activity/MusicActivity;

    invoke-direct {p0}, Lkc/f;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/guochao/faceshow/activity/MusicActivity$q;->a:Lcom/guochao/faceshow/activity/MusicActivity;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/guochao/faceshow/activity/MusicActivity;->o0(Lcom/guochao/faceshow/activity/MusicActivity;I)I

    .line 2
    iget-object p1, p0, Lcom/guochao/faceshow/activity/MusicActivity$q;->a:Lcom/guochao/faceshow/activity/MusicActivity;

    const/4 v0, -0x1

    invoke-static {p1, v0}, Lcom/guochao/faceshow/activity/MusicActivity;->v0(Lcom/guochao/faceshow/activity/MusicActivity;I)I

    .line 3
    iget-object p1, p0, Lcom/guochao/faceshow/activity/MusicActivity$q;->a:Lcom/guochao/faceshow/activity/MusicActivity;

    invoke-static {p1}, Lcom/guochao/faceshow/activity/MusicActivity;->y0(Lcom/guochao/faceshow/activity/MusicActivity;)Landroid/os/Handler;

    move-result-object p1

    const/16 v0, 0x67

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 4
    iget-object p1, p0, Lcom/guochao/faceshow/activity/MusicActivity$q;->a:Lcom/guochao/faceshow/activity/MusicActivity;

    invoke-static {p1}, Lcom/guochao/faceshow/activity/MusicActivity;->A0(Lcom/guochao/faceshow/activity/MusicActivity;)V

    return-void
.end method

.method public e(Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/activity/MusicActivity$q;->a:Lcom/guochao/faceshow/activity/MusicActivity;

    invoke-static {v0}, Lcom/guochao/faceshow/activity/MusicActivity;->n0(Lcom/guochao/faceshow/activity/MusicActivity;)I

    move-result v0

    iget-object v1, p0, Lcom/guochao/faceshow/activity/MusicActivity$q;->a:Lcom/guochao/faceshow/activity/MusicActivity;

    invoke-static {v1}, Lcom/guochao/faceshow/activity/MusicActivity;->s0(Lcom/guochao/faceshow/activity/MusicActivity;)I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/guochao/faceshow/activity/MusicActivity$q;->a:Lcom/guochao/faceshow/activity/MusicActivity;

    invoke-static {p1}, Lcom/guochao/faceshow/activity/MusicActivity;->p0(Lcom/guochao/faceshow/activity/MusicActivity;)I

    .line 3
    iget-object p1, p0, Lcom/guochao/faceshow/activity/MusicActivity$q;->a:Lcom/guochao/faceshow/activity/MusicActivity;

    invoke-static {p1}, Lcom/guochao/faceshow/activity/MusicActivity;->A0(Lcom/guochao/faceshow/activity/MusicActivity;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 4
    invoke-virtual {p1, v0}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->B(Z)V

    :goto_0
    return-void
.end method
