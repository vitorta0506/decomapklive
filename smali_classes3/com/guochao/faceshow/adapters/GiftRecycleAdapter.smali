.class public Lcom/guochao/faceshow/adapters/GiftRecycleAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/guochao/faceshow/adapters/GiftRecycleAdapter$e;,
        Lcom/guochao/faceshow/adapters/GiftRecycleAdapter$f;,
        Lcom/guochao/faceshow/adapters/GiftRecycleAdapter$d;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/guochao/faceshow/adapters/GiftRecycleAdapter$d;",
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
            "Lcom/guochao/faceshow/bean/MyPrizeBean;",
            ">;"
        }
    .end annotation
.end field

.field private d:Landroid/app/Activity;

.field private e:Lcom/guochao/faceshow/adapters/GiftRecycleAdapter$f;

.field private f:Lcom/guochao/faceshow/adapters/GiftRecycleAdapter$e;


# direct methods
.method public constructor <init>(Landroid/app/Activity;ILjava/util/List;Lcom/guochao/faceshow/adapters/GiftRecycleAdapter$f;Lcom/guochao/faceshow/adapters/GiftRecycleAdapter$e;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "I",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/bean/MyPrizeBean;",
            ">;",
            "Lcom/guochao/faceshow/adapters/GiftRecycleAdapter$f;",
            "Lcom/guochao/faceshow/adapters/GiftRecycleAdapter$e;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 2
    iput-object p3, p0, Lcom/guochao/faceshow/adapters/GiftRecycleAdapter;->c:Ljava/util/List;

    .line 3
    iput p2, p0, Lcom/guochao/faceshow/adapters/GiftRecycleAdapter;->a:I

    .line 4
    iput-object p1, p0, Lcom/guochao/faceshow/adapters/GiftRecycleAdapter;->d:Landroid/app/Activity;

    .line 5
    iput-object p4, p0, Lcom/guochao/faceshow/adapters/GiftRecycleAdapter;->e:Lcom/guochao/faceshow/adapters/GiftRecycleAdapter$f;

    .line 6
    iput-object p5, p0, Lcom/guochao/faceshow/adapters/GiftRecycleAdapter;->f:Lcom/guochao/faceshow/adapters/GiftRecycleAdapter$e;

    return-void
.end method

.method static synthetic a(Lcom/guochao/faceshow/adapters/GiftRecycleAdapter;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/guochao/faceshow/adapters/GiftRecycleAdapter;->i(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic b(Lcom/guochao/faceshow/adapters/GiftRecycleAdapter;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/guochao/faceshow/adapters/GiftRecycleAdapter;->h(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic c(Lcom/guochao/faceshow/adapters/GiftRecycleAdapter;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/adapters/GiftRecycleAdapter;->b:Landroid/view/View;

    return-object p0
.end method

.method static synthetic d(Lcom/guochao/faceshow/adapters/GiftRecycleAdapter;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/adapters/GiftRecycleAdapter;->c:Ljava/util/List;

    return-object p0
.end method

.method static synthetic e(Lcom/guochao/faceshow/adapters/GiftRecycleAdapter;)Landroid/app/Activity;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/adapters/GiftRecycleAdapter;->d:Landroid/app/Activity;

    return-object p0
.end method

.method private h(ILjava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    invoke-direct {v0}, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;-><init>()V

    iget-object v1, p0, Lcom/guochao/faceshow/adapters/GiftRecycleAdapter;->d:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->O(Landroid/content/Context;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    sget-object v1, Lcom/guochao/faceshow/utils/Contants;->UNUSE_PRIZE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->Q(Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    const-string v1, "accessoryId"

    .line 2
    invoke-virtual {v0, v1, p2}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->D(Ljava/lang/String;Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object p2

    check-cast p2, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    const-string v0, "lotteryId"

    .line 3
    invoke-virtual {p2, v0, p3}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->D(Ljava/lang/String;Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object p2

    check-cast p2, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    new-instance p3, Lcom/guochao/faceshow/adapters/GiftRecycleAdapter$c;

    invoke-direct {p3, p0, p1}, Lcom/guochao/faceshow/adapters/GiftRecycleAdapter$c;-><init>(Lcom/guochao/faceshow/adapters/GiftRecycleAdapter;I)V

    .line 4
    invoke-virtual {p2, p3}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->M(Lcom/guochao/faceshow/aaspring/base/http/callback/c;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    return-void
.end method

.method private i(ILjava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    invoke-direct {v0}, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;-><init>()V

    iget-object v1, p0, Lcom/guochao/faceshow/adapters/GiftRecycleAdapter;->d:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->O(Landroid/content/Context;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    sget-object v1, Lcom/guochao/faceshow/utils/Contants;->USE_PRIZE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->Q(Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    const-string v1, "accessoryId"

    .line 2
    invoke-virtual {v0, v1, p2}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->D(Ljava/lang/String;Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object p2

    check-cast p2, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    const-string v0, "lotteryId"

    .line 3
    invoke-virtual {p2, v0, p3}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->D(Ljava/lang/String;Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object p2

    check-cast p2, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    new-instance p3, Lcom/guochao/faceshow/adapters/GiftRecycleAdapter$b;

    invoke-direct {p3, p0, p1}, Lcom/guochao/faceshow/adapters/GiftRecycleAdapter$b;-><init>(Lcom/guochao/faceshow/adapters/GiftRecycleAdapter;I)V

    .line 4
    invoke-virtual {p2, p3}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->M(Lcom/guochao/faceshow/aaspring/base/http/callback/c;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    return-void
.end method


# virtual methods
.method public addData(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/bean/MyPrizeBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/adapters/GiftRecycleAdapter;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 2
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method public f(Lcom/guochao/faceshow/adapters/GiftRecycleAdapter$d;I)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/adapters/GiftRecycleAdapter;->c:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/bean/MyPrizeBean;

    .line 2
    iget-object v1, v0, Lcom/guochao/faceshow/bean/MyPrizeBean;->url:Ljava/lang/String;

    iget-object v2, p1, Lcom/guochao/faceshow/adapters/GiftRecycleAdapter$d;->a:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/guochao/faceshow/adapters/GiftRecycleAdapter;->d:Landroid/app/Activity;

    const v4, 0x7f0f0089

    invoke-static {v1, v2, v4, v3}, Lhc/a;->l(Ljava/lang/String;Landroid/widget/ImageView;ILandroid/content/Context;)V

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v0, Lcom/guochao/faceshow/bean/MyPrizeBean;->createTime:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "000"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/guochao/faceshow/adapters/GiftRecycleAdapter;->d:Landroid/app/Activity;

    invoke-static {v1, v2}, Lcom/guochao/faceshow/utils/Tools;->timeString(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 4
    iget-object v2, p1, Lcom/guochao/faceshow/adapters/GiftRecycleAdapter$d;->c:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5
    iget-object v1, p1, Lcom/guochao/faceshow/adapters/GiftRecycleAdapter$d;->b:Landroid/widget/TextView;

    iget-object v2, v0, Lcom/guochao/faceshow/bean/MyPrizeBean;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6
    iget-object v1, v0, Lcom/guochao/faceshow/bean/MyPrizeBean;->type:Ljava/lang/String;

    const-string v2, "3"

    invoke-static {v2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 7
    iget-object v1, p1, Lcom/guochao/faceshow/adapters/GiftRecycleAdapter$d;->d:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 8
    iget-object v1, v0, Lcom/guochao/faceshow/bean/MyPrizeBean;->isUseAccessory:Ljava/lang/String;

    const-string v2, "0"

    invoke-static {v2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 9
    iget-object v1, p1, Lcom/guochao/faceshow/adapters/GiftRecycleAdapter$d;->d:Landroid/widget/TextView;

    const v2, 0x7f120673

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 10
    iget-object v1, p1, Lcom/guochao/faceshow/adapters/GiftRecycleAdapter$d;->d:Landroid/widget/TextView;

    const v2, 0x7f08045c

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto :goto_0

    .line 11
    :cond_0
    iget-object v1, p1, Lcom/guochao/faceshow/adapters/GiftRecycleAdapter$d;->d:Landroid/widget/TextView;

    const v2, 0x7f1208a3

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 12
    iget-object v1, p1, Lcom/guochao/faceshow/adapters/GiftRecycleAdapter$d;->d:Landroid/widget/TextView;

    const v2, 0x7f08045b

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto :goto_0

    .line 13
    :cond_1
    iget-object v1, p1, Lcom/guochao/faceshow/adapters/GiftRecycleAdapter$d;->d:Landroid/widget/TextView;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 14
    :goto_0
    iget-object p1, p1, Lcom/guochao/faceshow/adapters/GiftRecycleAdapter$d;->d:Landroid/widget/TextView;

    new-instance v1, Lcom/guochao/faceshow/adapters/GiftRecycleAdapter$a;

    invoke-direct {v1, p0, v0, p2}, Lcom/guochao/faceshow/adapters/GiftRecycleAdapter$a;-><init>(Lcom/guochao/faceshow/adapters/GiftRecycleAdapter;Lcom/guochao/faceshow/bean/MyPrizeBean;I)V

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public g(Landroid/view/ViewGroup;I)Lcom/guochao/faceshow/adapters/GiftRecycleAdapter$d;
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/guochao/faceshow/adapters/GiftRecycleAdapter;->d:Landroid/app/Activity;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iget p2, p0, Lcom/guochao/faceshow/adapters/GiftRecycleAdapter;->a:I

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/guochao/faceshow/adapters/GiftRecycleAdapter;->b:Landroid/view/View;

    .line 2
    new-instance p1, Lcom/guochao/faceshow/adapters/GiftRecycleAdapter$d;

    iget-object p2, p0, Lcom/guochao/faceshow/adapters/GiftRecycleAdapter;->b:Landroid/view/View;

    invoke-direct {p1, p0, p2}, Lcom/guochao/faceshow/adapters/GiftRecycleAdapter$d;-><init>(Lcom/guochao/faceshow/adapters/GiftRecycleAdapter;Landroid/view/View;)V

    return-object p1
.end method

.method public getItemCount()I
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/adapters/GiftRecycleAdapter;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    check-cast p1, Lcom/guochao/faceshow/adapters/GiftRecycleAdapter$d;

    invoke-virtual {p0, p1, p2}, Lcom/guochao/faceshow/adapters/GiftRecycleAdapter;->f(Lcom/guochao/faceshow/adapters/GiftRecycleAdapter$d;I)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/guochao/faceshow/adapters/GiftRecycleAdapter;->g(Landroid/view/ViewGroup;I)Lcom/guochao/faceshow/adapters/GiftRecycleAdapter$d;

    move-result-object p1

    return-object p1
.end method

.method public resetData(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/bean/MyPrizeBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/adapters/GiftRecycleAdapter;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/adapters/GiftRecycleAdapter;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 3
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method
