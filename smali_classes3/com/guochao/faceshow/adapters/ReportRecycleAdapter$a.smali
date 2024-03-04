.class Lcom/guochao/faceshow/adapters/ReportRecycleAdapter$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/adapters/ReportRecycleAdapter;->e(Lcom/guochao/faceshow/adapters/ReportRecycleAdapter$c;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/guochao/faceshow/adapters/ReportRecycleAdapter;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/adapters/ReportRecycleAdapter;I)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/adapters/ReportRecycleAdapter$a;->b:Lcom/guochao/faceshow/adapters/ReportRecycleAdapter;

    iput p2, p0, Lcom/guochao/faceshow/adapters/ReportRecycleAdapter$a;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget p1, p0, Lcom/guochao/faceshow/adapters/ReportRecycleAdapter$a;->a:I

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/guochao/faceshow/adapters/ReportRecycleAdapter$a;->b:Lcom/guochao/faceshow/adapters/ReportRecycleAdapter;

    iget-boolean p1, p1, Lcom/guochao/faceshow/adapters/ReportRecycleAdapter;->h:Z

    if-nez p1, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/guochao/faceshow/adapters/ReportRecycleAdapter$a;->b:Lcom/guochao/faceshow/adapters/ReportRecycleAdapter;

    invoke-static {p1}, Lcom/guochao/faceshow/adapters/ReportRecycleAdapter;->a(Lcom/guochao/faceshow/adapters/ReportRecycleAdapter;)Ljava/util/List;

    move-result-object p1

    iget v0, p0, Lcom/guochao/faceshow/adapters/ReportRecycleAdapter$a;->a:I

    invoke-interface {p1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 3
    iget-object p1, p0, Lcom/guochao/faceshow/adapters/ReportRecycleAdapter$a;->b:Lcom/guochao/faceshow/adapters/ReportRecycleAdapter;

    invoke-static {p1}, Lcom/guochao/faceshow/adapters/ReportRecycleAdapter;->a(Lcom/guochao/faceshow/adapters/ReportRecycleAdapter;)Ljava/util/List;

    move-result-object p1

    iget-object v0, p0, Lcom/guochao/faceshow/adapters/ReportRecycleAdapter$a;->b:Lcom/guochao/faceshow/adapters/ReportRecycleAdapter;

    invoke-static {v0}, Lcom/guochao/faceshow/adapters/ReportRecycleAdapter;->a(Lcom/guochao/faceshow/adapters/ReportRecycleAdapter;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/beans/LocalImageOrVideoBean;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/LocalImageOrVideoBean;->getPath()Ljava/lang/String;

    move-result-object p1

    const-string v0, "add_com_guochao"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 4
    new-instance p1, Lcom/guochao/faceshow/aaspring/beans/LocalImageOrVideoBean;

    invoke-direct {p1, v1}, Lcom/guochao/faceshow/aaspring/beans/LocalImageOrVideoBean;-><init>(I)V

    .line 5
    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/beans/LocalImageOrVideoBean;->setPath(Ljava/lang/String;)V

    .line 6
    iget-object v0, p0, Lcom/guochao/faceshow/adapters/ReportRecycleAdapter$a;->b:Lcom/guochao/faceshow/adapters/ReportRecycleAdapter;

    invoke-static {v0}, Lcom/guochao/faceshow/adapters/ReportRecycleAdapter;->a(Lcom/guochao/faceshow/adapters/ReportRecycleAdapter;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7
    :cond_1
    iget-object p1, p0, Lcom/guochao/faceshow/adapters/ReportRecycleAdapter$a;->b:Lcom/guochao/faceshow/adapters/ReportRecycleAdapter;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method
