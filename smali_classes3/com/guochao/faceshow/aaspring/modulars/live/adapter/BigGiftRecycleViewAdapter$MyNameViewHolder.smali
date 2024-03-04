.class public Lcom/guochao/faceshow/aaspring/modulars/live/adapter/BigGiftRecycleViewAdapter$MyNameViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/guochao/faceshow/aaspring/modulars/live/adapter/BigGiftRecycleViewAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MyNameViewHolder"
.end annotation


# instance fields
.field public a:Landroid/widget/TextView;

.field final synthetic b:Lcom/guochao/faceshow/aaspring/modulars/live/adapter/BigGiftRecycleViewAdapter;


# direct methods
.method public constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/live/adapter/BigGiftRecycleViewAdapter;Landroid/view/View;)V
    .locals 0
    .param p1    # Lcom/guochao/faceshow/aaspring/modulars/live/adapter/BigGiftRecycleViewAdapter;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/BigGiftRecycleViewAdapter$MyNameViewHolder;->b:Lcom/guochao/faceshow/aaspring/modulars/live/adapter/BigGiftRecycleViewAdapter;

    .line 2
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const p1, 0x7f0a0c97

    .line 3
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/BigGiftRecycleViewAdapter$MyNameViewHolder;->a:Landroid/widget/TextView;

    return-void
.end method
