.class Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveVoiceBannedListDialog$g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequestJava$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveVoiceBannedListDialog;->j()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequestJava$d<",
        "Lcom/guochao/faceshow/aaspring/beans/LiveBanKickBean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveVoiceBannedListDialog;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveVoiceBannedListDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveVoiceBannedListDialog$g;->a:Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveVoiceBannedListDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/guochao/faceshow/aaspring/base/http/v2/Response;)V
    .locals 3
    .param p1    # Lcom/guochao/faceshow/aaspring/base/http/v2/Response;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/guochao/faceshow/aaspring/base/http/v2/Response<",
            "Lcom/guochao/faceshow/aaspring/beans/LiveBanKickBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveVoiceBannedListDialog$g;->a:Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveVoiceBannedListDialog;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/base/http/v2/Response;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/beans/LiveBanKickBean;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/beans/LiveBanKickBean;->userMsgList:Ljava/util/List;

    iput-object p1, v0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveVoiceBannedListDialog;->h:Ljava/util/List;

    .line 2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveVoiceBannedListDialog$g;->a:Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveVoiceBannedListDialog;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveVoiceBannedListDialog;->h:Ljava/util/List;

    const/16 v0, 0x8

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveVoiceBannedListDialog$g;->a:Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveVoiceBannedListDialog;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveVoiceBannedListDialog;->f:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 4
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveVoiceBannedListDialog$g;->a:Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveVoiceBannedListDialog;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveVoiceBannedListDialog;->g:Landroid/widget/ListView;

    invoke-virtual {p1, v1}, Landroid/widget/ListView;->setVisibility(I)V

    .line 5
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveVoiceBannedListDialog$g;->a:Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveVoiceBannedListDialog;

    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveVoiceBannedListDialog$i;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveVoiceBannedListDialog$g;->a:Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveVoiceBannedListDialog;

    invoke-static {v1}, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveVoiceBannedListDialog;->f(Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveVoiceBannedListDialog;)Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveVoiceBannedListDialog$i;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveVoiceBannedListDialog;Landroid/content/Context;)V

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveVoiceBannedListDialog;->i:Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveVoiceBannedListDialog$i;

    .line 6
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveVoiceBannedListDialog$g;->a:Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveVoiceBannedListDialog;

    iget-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveVoiceBannedListDialog;->g:Landroid/widget/ListView;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveVoiceBannedListDialog;->i:Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveVoiceBannedListDialog$i;

    invoke-virtual {v0, p1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_0

    .line 7
    :cond_0
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveVoiceBannedListDialog$g;->a:Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveVoiceBannedListDialog;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveVoiceBannedListDialog;->f:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 8
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveVoiceBannedListDialog$g;->a:Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveVoiceBannedListDialog;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveVoiceBannedListDialog;->g:Landroid/widget/ListView;

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setVisibility(I)V

    :goto_0
    return-void
.end method
