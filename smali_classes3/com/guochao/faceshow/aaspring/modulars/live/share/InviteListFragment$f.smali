.class Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteListFragment$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lvh/o;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteListFragment;->loadData(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lvh/o<",
        "Ljava/lang/Integer;",
        "Ljava/util/List<",
        "Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteBean;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteListFragment;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteListFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteListFragment$f;->a:Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Integer;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Integer;",
            ")",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteBean;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteListFragment$f;->a:Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteListFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object p1

    .line 2
    instance-of v0, p1, Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteDialog;

    if-eqz v0, :cond_3

    .line 3
    check-cast p1, Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteDialog;

    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteDialog;->W1()Ljava/util/List;

    move-result-object p1

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_2

    .line 5
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/guochao/faceshow/aaspring/modulars/live/share/LastInviteBean;

    if-eqz v1, :cond_0

    .line 6
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteListFragment$f;->a:Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteListFragment;

    iget v2, v2, Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteListFragment;->a:I

    if-lez v2, :cond_1

    const/4 v2, 0x1

    .line 7
    invoke-virtual {v1, v2}, Lcom/guochao/faceshow/aaspring/modulars/live/share/LastInviteBean;->setSelect(Z)V

    :cond_1
    const/4 v2, 0x0

    .line 8
    invoke-interface {v0, v2, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_0

    :cond_2
    return-object v0

    .line 9
    :cond_3
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    return-object p1
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteListFragment$f;->a(Ljava/lang/Integer;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method
