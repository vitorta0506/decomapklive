.class Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveVoiceBannedListDialog$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequestJava$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveVoiceBannedListDialog;->h(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequestJava$d<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveVoiceBannedListDialog;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveVoiceBannedListDialog;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveVoiceBannedListDialog$d;->e:Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveVoiceBannedListDialog;

    iput p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveVoiceBannedListDialog$d;->a:I

    iput-object p3, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveVoiceBannedListDialog$d;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveVoiceBannedListDialog$d;->c:Ljava/lang/String;

    iput-object p5, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveVoiceBannedListDialog$d;->d:Ljava/lang/String;

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
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveVoiceBannedListDialog$d;->e:Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveVoiceBannedListDialog;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveVoiceBannedListDialog;->h:Ljava/util/List;

    if-nez p1, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveVoiceBannedListDialog$d;->a:I

    if-le p1, v0, :cond_1

    .line 3
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveVoiceBannedListDialog$d;->e:Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveVoiceBannedListDialog;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveVoiceBannedListDialog;->h:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 4
    :cond_1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveVoiceBannedListDialog$d;->e:Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveVoiceBannedListDialog;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveVoiceBannedListDialog;->h:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_2

    .line 5
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveVoiceBannedListDialog$d;->e:Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveVoiceBannedListDialog;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveVoiceBannedListDialog;->f:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 6
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveVoiceBannedListDialog$d;->e:Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveVoiceBannedListDialog;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveVoiceBannedListDialog;->g:Landroid/widget/ListView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setVisibility(I)V

    .line 7
    :cond_2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveVoiceBannedListDialog$d;->e:Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveVoiceBannedListDialog;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveVoiceBannedListDialog;->i:Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveVoiceBannedListDialog$i;

    if-eqz p1, :cond_3

    .line 8
    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 9
    :cond_3
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveVoiceBannedListDialog$d;->e:Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveVoiceBannedListDialog;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveVoiceBannedListDialog;->m:Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveVoiceBannedListDialog$j;

    if-eqz p1, :cond_4

    .line 10
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveVoiceBannedListDialog$d;->b:Ljava/lang/String;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveVoiceBannedListDialog$d;->c:Ljava/lang/String;

    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveVoiceBannedListDialog$d;->d:Ljava/lang/String;

    invoke-interface {p1, v0, v1, v2}, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveVoiceBannedListDialog$j;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    return-void
.end method
