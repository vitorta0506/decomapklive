.class Ly8/a$a;
.super Ly8/a$b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ly8/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ly8/a;


# direct methods
.method constructor <init>(Ly8/a;)V
    .locals 0

    iput-object p1, p0, Ly8/a$a;->a:Ly8/a;

    invoke-direct {p0}, Ly8/a$b;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    return-void
.end method

.method public onDrawFirstFrame(Ljava/lang/String;Lcom/guochao/player/base/ILivePlayer;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/guochao/player/base/ILivePlayer;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object p2, p0, Ly8/a$a;->a:Ly8/a;

    invoke-static {p2}, Ly8/a;->a(Ly8/a;)Lcom/guochao/faceshow/aaspring/beans/RoomItemData;

    move-result-object p2

    if-eqz p2, :cond_1

    iget-object p2, p0, Ly8/a$a;->a:Ly8/a;

    invoke-static {p2}, Ly8/a;->a(Ly8/a;)Lcom/guochao/faceshow/aaspring/beans/RoomItemData;

    move-result-object p2

    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->getLiveId()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    iget-object p2, p0, Ly8/a$a;->a:Ly8/a;

    invoke-static {p2}, Ly8/a;->a(Ly8/a;)Lcom/guochao/faceshow/aaspring/beans/RoomItemData;

    move-result-object p2

    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->getBroadCasterUserId()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    iget-object p1, p0, Ly8/a$a;->a:Ly8/a;

    iget-object p1, p1, Ly8/a;->d:Ljava/lang/ref/WeakReference;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 2
    iget-object p1, p0, Ly8/a$a;->a:Ly8/a;

    iget-object p1, p1, Ly8/a;->d:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    const/4 p2, -0x1

    invoke-static {p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/live/common/u;->h(Landroid/view/View;I)V

    :cond_1
    return-void
.end method

.method public onVideoPlaying(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iget-object p2, p0, Ly8/a$a;->a:Ly8/a;

    invoke-static {p2}, Ly8/a;->a(Ly8/a;)Lcom/guochao/faceshow/aaspring/beans/RoomItemData;

    move-result-object p2

    if-eqz p2, :cond_1

    iget-object p2, p0, Ly8/a$a;->a:Ly8/a;

    invoke-static {p2}, Ly8/a;->a(Ly8/a;)Lcom/guochao/faceshow/aaspring/beans/RoomItemData;

    move-result-object p2

    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->getLiveId()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    iget-object p2, p0, Ly8/a$a;->a:Ly8/a;

    invoke-static {p2}, Ly8/a;->a(Ly8/a;)Lcom/guochao/faceshow/aaspring/beans/RoomItemData;

    move-result-object p2

    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->getBroadCasterUserId()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    iget-object p1, p0, Ly8/a$a;->a:Ly8/a;

    iget-object p1, p1, Ly8/a;->d:Ljava/lang/ref/WeakReference;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 2
    iget-object p1, p0, Ly8/a$a;->a:Ly8/a;

    iget-object p1, p1, Ly8/a;->d:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    const/4 p2, -0x1

    invoke-static {p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/live/common/u;->h(Landroid/view/View;I)V

    :cond_1
    return-void
.end method
