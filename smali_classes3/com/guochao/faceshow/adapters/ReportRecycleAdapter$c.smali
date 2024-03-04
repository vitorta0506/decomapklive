.class Lcom/guochao/faceshow/adapters/ReportRecycleAdapter$c;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/guochao/faceshow/adapters/ReportRecycleAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "c"
.end annotation


# instance fields
.field public a:Landroid/widget/ImageView;

.field public b:Landroid/widget/ImageView;

.field public c:Landroid/widget/LinearLayout;

.field final synthetic d:Lcom/guochao/faceshow/adapters/ReportRecycleAdapter;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/adapters/ReportRecycleAdapter;Landroid/view/View;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/guochao/faceshow/adapters/ReportRecycleAdapter$c;->d:Lcom/guochao/faceshow/adapters/ReportRecycleAdapter;

    .line 2
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 3
    invoke-static {p1}, Lcom/guochao/faceshow/adapters/ReportRecycleAdapter;->d(Lcom/guochao/faceshow/adapters/ReportRecycleAdapter;)Landroid/view/View;

    move-result-object p2

    const v0, 0x7f0a02a3

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/guochao/faceshow/adapters/ReportRecycleAdapter$c;->b:Landroid/widget/ImageView;

    .line 4
    invoke-static {p1}, Lcom/guochao/faceshow/adapters/ReportRecycleAdapter;->d(Lcom/guochao/faceshow/adapters/ReportRecycleAdapter;)Landroid/view/View;

    move-result-object p2

    const v0, 0x7f0a064e

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/guochao/faceshow/adapters/ReportRecycleAdapter$c;->a:Landroid/widget/ImageView;

    .line 5
    invoke-static {p1}, Lcom/guochao/faceshow/adapters/ReportRecycleAdapter;->d(Lcom/guochao/faceshow/adapters/ReportRecycleAdapter;)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f0a056a

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/guochao/faceshow/adapters/ReportRecycleAdapter$c;->c:Landroid/widget/LinearLayout;

    return-void
.end method
