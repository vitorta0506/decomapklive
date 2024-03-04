.class Lcom/guochao/faceshow/activity/MusicResultActivity$b;
.super Lkc/f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/activity/MusicResultActivity;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/activity/MusicResultActivity;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/activity/MusicResultActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/activity/MusicResultActivity$b;->a:Lcom/guochao/faceshow/activity/MusicResultActivity;

    invoke-direct {p0}, Lkc/f;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/guochao/faceshow/activity/MusicResultActivity$b;->a:Lcom/guochao/faceshow/activity/MusicResultActivity;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/guochao/faceshow/activity/MusicResultActivity;->I0(Lcom/guochao/faceshow/activity/MusicResultActivity;I)I

    .line 2
    iget-object p1, p0, Lcom/guochao/faceshow/activity/MusicResultActivity$b;->a:Lcom/guochao/faceshow/activity/MusicResultActivity;

    const/4 v0, -0x1

    invoke-static {p1, v0}, Lcom/guochao/faceshow/activity/MusicResultActivity;->i0(Lcom/guochao/faceshow/activity/MusicResultActivity;I)I

    .line 3
    new-instance p1, Lcom/guochao/faceshow/bean/MusicState;

    const/16 v0, 0x67

    const-string v1, ""

    invoke-direct {p1, v0, v1}, Lcom/guochao/faceshow/bean/MusicState;-><init>(ILjava/lang/String;)V

    .line 4
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 5
    iget-object p1, p0, Lcom/guochao/faceshow/activity/MusicResultActivity$b;->a:Lcom/guochao/faceshow/activity/MusicResultActivity;

    invoke-static {p1}, Lcom/guochao/faceshow/activity/MusicResultActivity;->P0(Lcom/guochao/faceshow/activity/MusicResultActivity;)V

    return-void
.end method

.method public e(Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/activity/MusicResultActivity$b;->a:Lcom/guochao/faceshow/activity/MusicResultActivity;

    invoke-static {v0}, Lcom/guochao/faceshow/activity/MusicResultActivity;->H0(Lcom/guochao/faceshow/activity/MusicResultActivity;)I

    move-result v0

    iget-object v1, p0, Lcom/guochao/faceshow/activity/MusicResultActivity$b;->a:Lcom/guochao/faceshow/activity/MusicResultActivity;

    invoke-static {v1}, Lcom/guochao/faceshow/activity/MusicResultActivity;->e0(Lcom/guochao/faceshow/activity/MusicResultActivity;)I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/guochao/faceshow/activity/MusicResultActivity$b;->a:Lcom/guochao/faceshow/activity/MusicResultActivity;

    invoke-static {p1}, Lcom/guochao/faceshow/activity/MusicResultActivity;->N0(Lcom/guochao/faceshow/activity/MusicResultActivity;)I

    .line 3
    iget-object p1, p0, Lcom/guochao/faceshow/activity/MusicResultActivity$b;->a:Lcom/guochao/faceshow/activity/MusicResultActivity;

    invoke-static {p1}, Lcom/guochao/faceshow/activity/MusicResultActivity;->P0(Lcom/guochao/faceshow/activity/MusicResultActivity;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 4
    invoke-virtual {p1, v0}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->B(Z)V

    :goto_0
    return-void
.end method
