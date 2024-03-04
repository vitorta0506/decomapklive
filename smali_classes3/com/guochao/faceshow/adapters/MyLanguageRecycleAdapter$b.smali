.class Lcom/guochao/faceshow/adapters/MyLanguageRecycleAdapter$b;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/guochao/faceshow/adapters/MyLanguageRecycleAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field public a:Landroid/widget/ImageView;

.field public b:Landroid/widget/TextView;

.field public c:Landroid/widget/CheckBox;

.field final synthetic d:Lcom/guochao/faceshow/adapters/MyLanguageRecycleAdapter;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/adapters/MyLanguageRecycleAdapter;Landroid/view/View;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/guochao/faceshow/adapters/MyLanguageRecycleAdapter$b;->d:Lcom/guochao/faceshow/adapters/MyLanguageRecycleAdapter;

    .line 2
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 3
    invoke-static {p1}, Lcom/guochao/faceshow/adapters/MyLanguageRecycleAdapter;->b(Lcom/guochao/faceshow/adapters/MyLanguageRecycleAdapter;)Landroid/view/View;

    move-result-object p2

    const v0, 0x7f0a0c1c

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/guochao/faceshow/adapters/MyLanguageRecycleAdapter$b;->b:Landroid/widget/TextView;

    .line 4
    invoke-static {p1}, Lcom/guochao/faceshow/adapters/MyLanguageRecycleAdapter;->b(Lcom/guochao/faceshow/adapters/MyLanguageRecycleAdapter;)Landroid/view/View;

    move-result-object p2

    const v0, 0x7f0a0583

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/guochao/faceshow/adapters/MyLanguageRecycleAdapter$b;->a:Landroid/widget/ImageView;

    .line 5
    invoke-static {p1}, Lcom/guochao/faceshow/adapters/MyLanguageRecycleAdapter;->b(Lcom/guochao/faceshow/adapters/MyLanguageRecycleAdapter;)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f0a01f4

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/CheckBox;

    iput-object p1, p0, Lcom/guochao/faceshow/adapters/MyLanguageRecycleAdapter$b;->c:Landroid/widget/CheckBox;

    return-void
.end method
