.class public Lcom/guochao/faceshow/aaspring/modulars/main/fragment/SingleVideoPlayFragment;
.super Lcom/guochao/faceshow/aaspring/modulars/main/fragment/BaseShortVideoFragment;
.source "SourceFile"


# instance fields
.field L:I

.field M:I

.field private N:Ljava/lang/String;

.field private O:Lcom/guochao/faceshow/aaspring/beans/Comment;

.field private P:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/BaseShortVideoFragment;-><init>()V

    return-void
.end method

.method static synthetic R2(Lcom/guochao/faceshow/aaspring/modulars/main/fragment/SingleVideoPlayFragment;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/SingleVideoPlayFragment;->N:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic S2(Lcom/guochao/faceshow/aaspring/modulars/main/fragment/SingleVideoPlayFragment;)Lcom/guochao/faceshow/aaspring/beans/Comment;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/SingleVideoPlayFragment;->O:Lcom/guochao/faceshow/aaspring/beans/Comment;

    return-object p0
.end method

.method static synthetic T2(Lcom/guochao/faceshow/aaspring/modulars/main/fragment/SingleVideoPlayFragment;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/SingleVideoPlayFragment;->P:Z

    return p0
.end method

.method public static U2(IILjava/lang/String;Lcom/guochao/faceshow/aaspring/beans/Comment;Z)Lcom/guochao/faceshow/aaspring/modulars/main/fragment/SingleVideoPlayFragment;
    .locals 3

    .line 1
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/SingleVideoPlayFragment;

    invoke-direct {v0}, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/SingleVideoPlayFragment;-><init>()V

    .line 2
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "videoId"

    .line 3
    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "type"

    .line 4
    invoke-virtual {v1, p1, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p0, "commentId"

    .line 5
    invoke-virtual {v1, p0, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "withComment"

    .line 6
    invoke-virtual {v1, p0, p4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 7
    invoke-static {}, Lcom/guochao/faceshow/aaspring/utils/MemoryCache;->getInstance()Lcom/guochao/faceshow/aaspring/utils/MemoryCache;

    move-result-object p0

    invoke-virtual {p0, p3}, Lcom/guochao/faceshow/aaspring/utils/MemoryCache;->put(Ljava/lang/Object;)V

    .line 8
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method

.method private V2()V
    .locals 3

    .line 1
    new-instance v0, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequestJava;

    const-string v1, "api/token/social/video/getVideoDetail"

    invoke-direct {v0, v1}, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequestJava;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/SingleVideoPlayFragment;->M:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const-string v1, "0"

    goto :goto_0

    :cond_0
    const-string v1, "1"

    :goto_0
    const-string v2, "is_private"

    invoke-virtual {v0, v2, v1}, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequestJava;->f(Ljava/lang/String;Ljava/lang/Object;)Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequestJava;

    move-result-object v0

    iget v1, p0, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/SingleVideoPlayFragment;->L:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "video_id"

    invoke-virtual {v0, v2, v1}, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequestJava;->f(Ljava/lang/String;Ljava/lang/Object;)Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequestJava;

    move-result-object v0

    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/SingleVideoPlayFragment$a;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/SingleVideoPlayFragment$a;-><init>(Lcom/guochao/faceshow/aaspring/modulars/main/fragment/SingleVideoPlayFragment;)V

    .line 2
    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequestJava;->j(Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequestJava$d;)Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequestJava;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequestJava;->i()Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequestJava;

    return-void
.end method


# virtual methods
.method public getFragmentConfig()Lcom/guochao/faceshow/aaspring/base/fragment/e;
    .locals 2

    new-instance v0, Lcom/guochao/faceshow/aaspring/base/fragment/e$a;

    invoke-direct {v0}, Lcom/guochao/faceshow/aaspring/base/fragment/e$a;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/base/fragment/e$a;->d(Z)Lcom/guochao/faceshow/aaspring/base/fragment/e$a;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/base/fragment/e$a;->c(Z)Lcom/guochao/faceshow/aaspring/base/fragment/e$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/base/fragment/e$a;->a()Lcom/guochao/faceshow/aaspring/base/fragment/e;

    move-result-object v0

    return-object v0
.end method

.method public loadData(I)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/BaseShortVideoFragment;->loadData(I)V

    .line 2
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/SingleVideoPlayFragment;->V2()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/BaseShortVideoFragment;->onCreate(Landroid/os/Bundle;)V

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "videoId"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/SingleVideoPlayFragment;->L:I

    .line 4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "type"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/SingleVideoPlayFragment;->M:I

    .line 5
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "commentId"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/SingleVideoPlayFragment;->N:Ljava/lang/String;

    .line 6
    invoke-static {}, Lcom/guochao/faceshow/aaspring/utils/MemoryCache;->getInstance()Lcom/guochao/faceshow/aaspring/utils/MemoryCache;

    move-result-object p1

    const-class v0, Lcom/guochao/faceshow/aaspring/beans/Comment;

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/utils/MemoryCache;->clear(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/beans/Comment;

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/SingleVideoPlayFragment;->O:Lcom/guochao/faceshow/aaspring/beans/Comment;

    .line 7
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "withComment"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/SingleVideoPlayFragment;->P:Z

    :cond_0
    return-void
.end method

.method public onDelete()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/BaseShortVideoFragment;->onDelete()V

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void
.end method

.method public x2()Z
    .locals 2

    iget v0, p0, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/SingleVideoPlayFragment;->M:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method
