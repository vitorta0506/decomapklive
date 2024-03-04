.class public Lcom/guochao/faceshow/aaspring/modulars/personal/PayoneerSelectAdapter$ViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/guochao/faceshow/aaspring/modulars/personal/PayoneerSelectAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ViewHolder"
.end annotation


# instance fields
.field private a:Landroid/widget/TextView;

.field final synthetic b:Lcom/guochao/faceshow/aaspring/modulars/personal/PayoneerSelectAdapter;


# direct methods
.method public constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/personal/PayoneerSelectAdapter;Landroid/view/View;)V
    .locals 1
    .param p1    # Lcom/guochao/faceshow/aaspring/modulars/personal/PayoneerSelectAdapter;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/PayoneerSelectAdapter$ViewHolder;->b:Lcom/guochao/faceshow/aaspring/modulars/personal/PayoneerSelectAdapter;

    .line 2
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const v0, 0x7f0a0ccd

    .line 3
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/PayoneerSelectAdapter$ViewHolder;->a:Landroid/widget/TextView;

    .line 4
    invoke-virtual {p2, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method static synthetic c(Lcom/guochao/faceshow/aaspring/modulars/personal/PayoneerSelectAdapter$ViewHolder;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/PayoneerSelectAdapter$ViewHolder;->a:Landroid/widget/TextView;

    return-object p0
.end method
