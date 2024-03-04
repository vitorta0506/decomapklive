.class public Lcom/guochao/faceshow/adapters/ReportRecycleAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/guochao/faceshow/adapters/ReportRecycleAdapter$d;,
        Lcom/guochao/faceshow/adapters/ReportRecycleAdapter$e;,
        Lcom/guochao/faceshow/adapters/ReportRecycleAdapter$c;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/guochao/faceshow/adapters/ReportRecycleAdapter$c;",
        ">;"
    }
.end annotation


# instance fields
.field private a:I

.field private b:Landroid/view/View;

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/LocalImageOrVideoBean;",
            ">;"
        }
    .end annotation
.end field

.field private d:Landroid/app/Activity;

.field private e:Lcom/guochao/faceshow/adapters/ReportRecycleAdapter$e;

.field private f:Z

.field private g:Lcom/guochao/faceshow/adapters/ReportRecycleAdapter$d;

.field h:Z


# direct methods
.method public constructor <init>(Landroid/app/Activity;ILjava/util/List;Lcom/guochao/faceshow/adapters/ReportRecycleAdapter$e;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "I",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/LocalImageOrVideoBean;",
            ">;",
            "Lcom/guochao/faceshow/adapters/ReportRecycleAdapter$e;",
            "Z)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/guochao/faceshow/adapters/ReportRecycleAdapter;->h:Z

    .line 3
    iput-object p3, p0, Lcom/guochao/faceshow/adapters/ReportRecycleAdapter;->c:Ljava/util/List;

    .line 4
    iput p2, p0, Lcom/guochao/faceshow/adapters/ReportRecycleAdapter;->a:I

    .line 5
    iput-object p1, p0, Lcom/guochao/faceshow/adapters/ReportRecycleAdapter;->d:Landroid/app/Activity;

    .line 6
    iput-object p4, p0, Lcom/guochao/faceshow/adapters/ReportRecycleAdapter;->e:Lcom/guochao/faceshow/adapters/ReportRecycleAdapter$e;

    .line 7
    iput-boolean p5, p0, Lcom/guochao/faceshow/adapters/ReportRecycleAdapter;->f:Z

    return-void
.end method

.method static synthetic a(Lcom/guochao/faceshow/adapters/ReportRecycleAdapter;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/adapters/ReportRecycleAdapter;->c:Ljava/util/List;

    return-object p0
.end method

.method static synthetic b(Lcom/guochao/faceshow/adapters/ReportRecycleAdapter;)Landroid/app/Activity;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/adapters/ReportRecycleAdapter;->d:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic c(Lcom/guochao/faceshow/adapters/ReportRecycleAdapter;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/guochao/faceshow/adapters/ReportRecycleAdapter;->f:Z

    return p0
.end method

.method static synthetic d(Lcom/guochao/faceshow/adapters/ReportRecycleAdapter;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/adapters/ReportRecycleAdapter;->b:Landroid/view/View;

    return-object p0
.end method


# virtual methods
.method public e(Lcom/guochao/faceshow/adapters/ReportRecycleAdapter$c;I)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/adapters/ReportRecycleAdapter;->c:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/beans/LocalImageOrVideoBean;

    .line 2
    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/beans/LocalImageOrVideoBean;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string v2, "add_com_guochao"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    iget-object v1, p1, Lcom/guochao/faceshow/adapters/ReportRecycleAdapter$c;->a:Landroid/widget/ImageView;

    const v2, 0x7f0f0613

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 4
    iget-object v1, p1, Lcom/guochao/faceshow/adapters/ReportRecycleAdapter$c;->b:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 5
    :cond_0
    iget-object v1, p1, Lcom/guochao/faceshow/adapters/ReportRecycleAdapter$c;->b:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 6
    iget-object v1, p1, Lcom/guochao/faceshow/adapters/ReportRecycleAdapter$c;->a:Landroid/widget/ImageView;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/beans/LocalImageOrVideoBean;->getDisplayUri()Landroid/net/Uri;

    move-result-object v2

    const v3, 0x7f0f0088

    const/4 v4, 0x6

    invoke-static {v1, v2, v3, v4}, Lhc/a;->r(Landroid/widget/ImageView;Ljava/lang/Object;II)V

    .line 7
    :goto_0
    iget-object v1, p1, Lcom/guochao/faceshow/adapters/ReportRecycleAdapter$c;->b:Landroid/widget/ImageView;

    new-instance v2, Lcom/guochao/faceshow/adapters/ReportRecycleAdapter$a;

    invoke-direct {v2, p0, p2}, Lcom/guochao/faceshow/adapters/ReportRecycleAdapter$a;-><init>(Lcom/guochao/faceshow/adapters/ReportRecycleAdapter;I)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 8
    iget-object p1, p1, Lcom/guochao/faceshow/adapters/ReportRecycleAdapter$c;->c:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/guochao/faceshow/adapters/ReportRecycleAdapter$b;

    invoke-direct {v1, p0, v0, p2}, Lcom/guochao/faceshow/adapters/ReportRecycleAdapter$b;-><init>(Lcom/guochao/faceshow/adapters/ReportRecycleAdapter;Lcom/guochao/faceshow/aaspring/beans/LocalImageOrVideoBean;I)V

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public f(Landroid/view/ViewGroup;I)Lcom/guochao/faceshow/adapters/ReportRecycleAdapter$c;
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/guochao/faceshow/adapters/ReportRecycleAdapter;->d:Landroid/app/Activity;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iget p2, p0, Lcom/guochao/faceshow/adapters/ReportRecycleAdapter;->a:I

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/guochao/faceshow/adapters/ReportRecycleAdapter;->b:Landroid/view/View;

    .line 2
    new-instance p1, Lcom/guochao/faceshow/adapters/ReportRecycleAdapter$c;

    iget-object p2, p0, Lcom/guochao/faceshow/adapters/ReportRecycleAdapter;->b:Landroid/view/View;

    invoke-direct {p1, p0, p2}, Lcom/guochao/faceshow/adapters/ReportRecycleAdapter$c;-><init>(Lcom/guochao/faceshow/adapters/ReportRecycleAdapter;Landroid/view/View;)V

    return-object p1
.end method

.method public g(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/guochao/faceshow/adapters/ReportRecycleAdapter;->h:Z

    return-void
.end method

.method public getItemCount()I
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/adapters/ReportRecycleAdapter;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    check-cast p1, Lcom/guochao/faceshow/adapters/ReportRecycleAdapter$c;

    invoke-virtual {p0, p1, p2}, Lcom/guochao/faceshow/adapters/ReportRecycleAdapter;->e(Lcom/guochao/faceshow/adapters/ReportRecycleAdapter$c;I)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/guochao/faceshow/adapters/ReportRecycleAdapter;->f(Landroid/view/ViewGroup;I)Lcom/guochao/faceshow/adapters/ReportRecycleAdapter$c;

    move-result-object p1

    return-object p1
.end method

.method public setOnItemListener(Lcom/guochao/faceshow/adapters/ReportRecycleAdapter$d;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/adapters/ReportRecycleAdapter;->g:Lcom/guochao/faceshow/adapters/ReportRecycleAdapter$d;

    return-void
.end method
