.class Lcom/guochao/faceshow/activity/MusicActivity$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequestJava$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/activity/MusicActivity;->r1()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequestJava$d<",
        "Lcom/guochao/faceshow/bean/CollectMusicData;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/activity/MusicActivity;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/activity/MusicActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/activity/MusicActivity$f;->a:Lcom/guochao/faceshow/activity/MusicActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/guochao/faceshow/aaspring/base/http/v2/Response;)V
    .locals 2
    .param p1    # Lcom/guochao/faceshow/aaspring/base/http/v2/Response;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/guochao/faceshow/aaspring/base/http/v2/Response<",
            "Lcom/guochao/faceshow/bean/CollectMusicData;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_3

    .line 1
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/base/http/v2/Response;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/bean/CollectMusicData;

    if-nez p1, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/activity/MusicActivity$f;->a:Lcom/guochao/faceshow/activity/MusicActivity;

    invoke-virtual {p1}, Lcom/guochao/faceshow/bean/CollectMusicData;->getTotalPage()I

    move-result v1

    invoke-static {v0, v1}, Lcom/guochao/faceshow/activity/MusicActivity;->t0(Lcom/guochao/faceshow/activity/MusicActivity;I)I

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/activity/MusicActivity$f;->a:Lcom/guochao/faceshow/activity/MusicActivity;

    invoke-static {v0}, Lcom/guochao/faceshow/activity/MusicActivity;->n0(Lcom/guochao/faceshow/activity/MusicActivity;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 4
    iget-object v0, p0, Lcom/guochao/faceshow/activity/MusicActivity$f;->a:Lcom/guochao/faceshow/activity/MusicActivity;

    invoke-static {v0}, Lcom/guochao/faceshow/activity/MusicActivity;->P0(Lcom/guochao/faceshow/activity/MusicActivity;)Lcom/guochao/faceshow/utils/AAComAdapter;

    move-result-object v0

    invoke-virtual {p1}, Lcom/guochao/faceshow/bean/CollectMusicData;->getList()Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/guochao/faceshow/utils/AAComAdapter;->resetData(Ljava/util/List;)V

    goto :goto_0

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/guochao/faceshow/activity/MusicActivity$f;->a:Lcom/guochao/faceshow/activity/MusicActivity;

    invoke-static {v0}, Lcom/guochao/faceshow/activity/MusicActivity;->P0(Lcom/guochao/faceshow/activity/MusicActivity;)Lcom/guochao/faceshow/utils/AAComAdapter;

    move-result-object v0

    invoke-virtual {p1}, Lcom/guochao/faceshow/bean/CollectMusicData;->getList()Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/guochao/faceshow/utils/AAComAdapter;->addData(Ljava/util/List;)V

    .line 6
    :goto_0
    iget-object p1, p0, Lcom/guochao/faceshow/activity/MusicActivity$f;->a:Lcom/guochao/faceshow/activity/MusicActivity;

    invoke-static {p1}, Lcom/guochao/faceshow/activity/MusicActivity;->n0(Lcom/guochao/faceshow/activity/MusicActivity;)I

    move-result p1

    iget-object v0, p0, Lcom/guochao/faceshow/activity/MusicActivity$f;->a:Lcom/guochao/faceshow/activity/MusicActivity;

    invoke-static {v0}, Lcom/guochao/faceshow/activity/MusicActivity;->s0(Lcom/guochao/faceshow/activity/MusicActivity;)I

    move-result v0

    if-le p1, v0, :cond_2

    .line 7
    iget-object p1, p0, Lcom/guochao/faceshow/activity/MusicActivity$f;->a:Lcom/guochao/faceshow/activity/MusicActivity;

    invoke-static {p1}, Lcom/guochao/faceshow/activity/MusicActivity;->Q0(Lcom/guochao/faceshow/activity/MusicActivity;)Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->setEnableLoadmore(Z)V

    goto :goto_1

    .line 8
    :cond_2
    iget-object p1, p0, Lcom/guochao/faceshow/activity/MusicActivity$f;->a:Lcom/guochao/faceshow/activity/MusicActivity;

    invoke-static {p1}, Lcom/guochao/faceshow/activity/MusicActivity;->Q0(Lcom/guochao/faceshow/activity/MusicActivity;)Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->setEnableLoadmore(Z)V

    :cond_3
    :goto_1
    return-void
.end method
