.class Lcom/guochao/faceshow/adapters/GiftRecycleAdapter$d;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/guochao/faceshow/adapters/GiftRecycleAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "d"
.end annotation


# instance fields
.field public a:Landroid/widget/ImageView;

.field public b:Landroid/widget/TextView;

.field public c:Landroid/widget/TextView;

.field public d:Landroid/widget/TextView;

.field final synthetic e:Lcom/guochao/faceshow/adapters/GiftRecycleAdapter;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/adapters/GiftRecycleAdapter;Landroid/view/View;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/guochao/faceshow/adapters/GiftRecycleAdapter$d;->e:Lcom/guochao/faceshow/adapters/GiftRecycleAdapter;

    .line 2
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 3
    invoke-static {p1}, Lcom/guochao/faceshow/adapters/GiftRecycleAdapter;->c(Lcom/guochao/faceshow/adapters/GiftRecycleAdapter;)Landroid/view/View;

    move-result-object p2

    const v0, 0x7f0a0cc6

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/guochao/faceshow/adapters/GiftRecycleAdapter$d;->b:Landroid/widget/TextView;

    .line 4
    invoke-static {p1}, Lcom/guochao/faceshow/adapters/GiftRecycleAdapter;->c(Lcom/guochao/faceshow/adapters/GiftRecycleAdapter;)Landroid/view/View;

    move-result-object p2

    const v0, 0x7f0a0530

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/guochao/faceshow/adapters/GiftRecycleAdapter$d;->a:Landroid/widget/ImageView;

    .line 5
    invoke-static {p1}, Lcom/guochao/faceshow/adapters/GiftRecycleAdapter;->c(Lcom/guochao/faceshow/adapters/GiftRecycleAdapter;)Landroid/view/View;

    move-result-object p2

    const v0, 0x7f0a0280

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/guochao/faceshow/adapters/GiftRecycleAdapter$d;->c:Landroid/widget/TextView;

    .line 6
    invoke-static {p1}, Lcom/guochao/faceshow/adapters/GiftRecycleAdapter;->c(Lcom/guochao/faceshow/adapters/GiftRecycleAdapter;)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f0a0d83

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/guochao/faceshow/adapters/GiftRecycleAdapter$d;->d:Landroid/widget/TextView;

    return-void
.end method
