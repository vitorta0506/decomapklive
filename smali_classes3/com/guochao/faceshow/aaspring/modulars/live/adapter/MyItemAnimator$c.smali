.class Lcom/guochao/faceshow/aaspring/modulars/live/adapter/MyItemAnimator$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/live/adapter/MyItemAnimator;->runPendingAnimations()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/ArrayList;

.field final synthetic b:Lcom/guochao/faceshow/aaspring/modulars/live/adapter/MyItemAnimator;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/live/adapter/MyItemAnimator;Ljava/util/ArrayList;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/MyItemAnimator$c;->b:Lcom/guochao/faceshow/aaspring/modulars/live/adapter/MyItemAnimator;

    iput-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/MyItemAnimator$c;->a:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/MyItemAnimator$c;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 2
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/MyItemAnimator$c;->b:Lcom/guochao/faceshow/aaspring/modulars/live/adapter/MyItemAnimator;

    invoke-virtual {v2, v1}, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/MyItemAnimator;->animateAddImpl(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/MyItemAnimator$c;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 4
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/MyItemAnimator$c;->b:Lcom/guochao/faceshow/aaspring/modulars/live/adapter/MyItemAnimator;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/MyItemAnimator;->e:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/MyItemAnimator$c;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method
