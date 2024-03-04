.class Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/adapter/FlowAdapter$a;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/adapter/FlowAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field private a:Landroid/widget/TextView;

.field private b:Landroid/widget/ImageView;

.field final synthetic c:Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/adapter/FlowAdapter;


# direct methods
.method public constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/adapter/FlowAdapter;Landroid/view/View;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/adapter/FlowAdapter$a;->c:Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/adapter/FlowAdapter;

    .line 2
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const v0, 0x7f0a0b47

    .line 3
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/adapter/FlowAdapter$a;->a:Landroid/widget/TextView;

    const v0, 0x7f0a020d

    .line 4
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/adapter/FlowAdapter$a;->b:Landroid/widget/ImageView;

    .line 5
    invoke-virtual {p2, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method static synthetic c(Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/adapter/FlowAdapter$a;)Landroid/widget/ImageView;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/adapter/FlowAdapter$a;->b:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic d(Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/adapter/FlowAdapter$a;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/adapter/FlowAdapter$a;->a:Landroid/widget/TextView;

    return-object p0
.end method
