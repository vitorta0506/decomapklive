.class public Lcom/guochao/faceshow/adapters/TCVideoEditerListAdapter$ViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/guochao/faceshow/adapters/TCVideoEditerListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ViewHolder"
.end annotation


# instance fields
.field private final a:Landroid/widget/ImageView;

.field private final b:Landroid/widget/TextView;

.field private final c:Landroid/widget/ImageView;

.field final synthetic d:Lcom/guochao/faceshow/adapters/TCVideoEditerListAdapter;


# direct methods
.method public constructor <init>(Lcom/guochao/faceshow/adapters/TCVideoEditerListAdapter;Landroid/view/View;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/guochao/faceshow/adapters/TCVideoEditerListAdapter$ViewHolder;->d:Lcom/guochao/faceshow/adapters/TCVideoEditerListAdapter;

    .line 2
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const p1, 0x7f0a05e1

    .line 3
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/guochao/faceshow/adapters/TCVideoEditerListAdapter$ViewHolder;->a:Landroid/widget/ImageView;

    const p1, 0x7f0a0c77

    .line 4
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/guochao/faceshow/adapters/TCVideoEditerListAdapter$ViewHolder;->b:Landroid/widget/TextView;

    const p1, 0x7f0a05d7

    .line 5
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/guochao/faceshow/adapters/TCVideoEditerListAdapter$ViewHolder;->c:Landroid/widget/ImageView;

    return-void
.end method

.method static synthetic c(Lcom/guochao/faceshow/adapters/TCVideoEditerListAdapter$ViewHolder;)Landroid/widget/ImageView;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/adapters/TCVideoEditerListAdapter$ViewHolder;->c:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic d(Lcom/guochao/faceshow/adapters/TCVideoEditerListAdapter$ViewHolder;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/adapters/TCVideoEditerListAdapter$ViewHolder;->b:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic e(Lcom/guochao/faceshow/adapters/TCVideoEditerListAdapter$ViewHolder;)Landroid/widget/ImageView;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/adapters/TCVideoEditerListAdapter$ViewHolder;->a:Landroid/widget/ImageView;

    return-object p0
.end method
