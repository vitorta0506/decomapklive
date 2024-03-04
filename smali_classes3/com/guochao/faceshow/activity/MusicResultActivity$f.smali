.class Lcom/guochao/faceshow/activity/MusicResultActivity$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequestJava$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/activity/MusicResultActivity;->S0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequestJava$d<",
        "Lcom/guochao/faceshow/bean/MusicList;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/activity/MusicResultActivity;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/activity/MusicResultActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/activity/MusicResultActivity$f;->a:Lcom/guochao/faceshow/activity/MusicResultActivity;

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
            "Lcom/guochao/faceshow/bean/MusicList;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/base/http/v2/Response;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/bean/MusicList;

    if-eqz p1, :cond_2

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/activity/MusicResultActivity$f;->a:Lcom/guochao/faceshow/activity/MusicResultActivity;

    iget v1, p1, Lcom/guochao/faceshow/bean/MusicList;->total:I

    invoke-static {v0, v1}, Lcom/guochao/faceshow/activity/MusicResultActivity;->g0(Lcom/guochao/faceshow/activity/MusicResultActivity;I)I

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/activity/MusicResultActivity$f;->a:Lcom/guochao/faceshow/activity/MusicResultActivity;

    invoke-static {v0}, Lcom/guochao/faceshow/activity/MusicResultActivity;->H0(Lcom/guochao/faceshow/activity/MusicResultActivity;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 4
    iget-object v0, p0, Lcom/guochao/faceshow/activity/MusicResultActivity$f;->a:Lcom/guochao/faceshow/activity/MusicResultActivity;

    invoke-static {v0}, Lcom/guochao/faceshow/activity/MusicResultActivity;->o0(Lcom/guochao/faceshow/activity/MusicResultActivity;)Lcom/guochao/faceshow/utils/AAComAdapter;

    move-result-object v0

    iget-object p1, p1, Lcom/guochao/faceshow/bean/MusicList;->list:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Lcom/guochao/faceshow/utils/AAComAdapter;->resetData(Ljava/util/List;)V

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/activity/MusicResultActivity$f;->a:Lcom/guochao/faceshow/activity/MusicResultActivity;

    invoke-static {v0}, Lcom/guochao/faceshow/activity/MusicResultActivity;->o0(Lcom/guochao/faceshow/activity/MusicResultActivity;)Lcom/guochao/faceshow/utils/AAComAdapter;

    move-result-object v0

    iget-object p1, p1, Lcom/guochao/faceshow/bean/MusicList;->list:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Lcom/guochao/faceshow/utils/AAComAdapter;->addData(Ljava/util/List;)V

    .line 6
    :goto_0
    iget-object p1, p0, Lcom/guochao/faceshow/activity/MusicResultActivity$f;->a:Lcom/guochao/faceshow/activity/MusicResultActivity;

    invoke-static {p1}, Lcom/guochao/faceshow/activity/MusicResultActivity;->H0(Lcom/guochao/faceshow/activity/MusicResultActivity;)I

    move-result p1

    iget-object v0, p0, Lcom/guochao/faceshow/activity/MusicResultActivity$f;->a:Lcom/guochao/faceshow/activity/MusicResultActivity;

    invoke-static {v0}, Lcom/guochao/faceshow/activity/MusicResultActivity;->e0(Lcom/guochao/faceshow/activity/MusicResultActivity;)I

    move-result v0

    if-le p1, v0, :cond_1

    .line 7
    iget-object p1, p0, Lcom/guochao/faceshow/activity/MusicResultActivity$f;->a:Lcom/guochao/faceshow/activity/MusicResultActivity;

    invoke-static {p1}, Lcom/guochao/faceshow/activity/MusicResultActivity;->p0(Lcom/guochao/faceshow/activity/MusicResultActivity;)Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->setEnableLoadmore(Z)V

    goto :goto_1

    .line 8
    :cond_1
    iget-object p1, p0, Lcom/guochao/faceshow/activity/MusicResultActivity$f;->a:Lcom/guochao/faceshow/activity/MusicResultActivity;

    invoke-static {p1}, Lcom/guochao/faceshow/activity/MusicResultActivity;->p0(Lcom/guochao/faceshow/activity/MusicResultActivity;)Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->setEnableLoadmore(Z)V

    :cond_2
    :goto_1
    return-void
.end method
