.class Lcom/guochao/faceshow/aaspring/modulars/live/play/PlayBottomDialogFragment$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/live/play/PlayBottomDialogFragment;->initView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/lifecycle/Observer<",
        "Ljava/util/List<",
        "Lcom/guochao/faceshow/aaspring/beans/LiveGameBean;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Landroidx/recyclerview/widget/RecyclerView;

.field final synthetic b:Lcom/guochao/faceshow/aaspring/modulars/live/play/PlayBottomDialogFragment;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/live/play/PlayBottomDialogFragment;Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/play/PlayBottomDialogFragment$a;->b:Lcom/guochao/faceshow/aaspring/modulars/live/play/PlayBottomDialogFragment;

    iput-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/play/PlayBottomDialogFragment$a;->a:Landroidx/recyclerview/widget/RecyclerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/LiveGameBean;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/play/PlayBottomDialogFragment$a;->b:Lcom/guochao/faceshow/aaspring/modulars/live/play/PlayBottomDialogFragment;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/play/PlayBottomDialogFragment$a;->a:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {v0, v1, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/play/PlayBottomDialogFragment;->Q1(Lcom/guochao/faceshow/aaspring/modulars/live/play/PlayBottomDialogFragment;Landroidx/recyclerview/widget/RecyclerView;Ljava/util/List;)V

    return-void
.end method

.method public bridge synthetic onChanged(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/play/PlayBottomDialogFragment$a;->a(Ljava/util/List;)V

    return-void
.end method
