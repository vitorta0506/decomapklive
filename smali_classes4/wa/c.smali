.class public Lwa/c;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lwa/c$d;
    }
.end annotation


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/mine/model/WithdrawalBean;",
            ">;"
        }
    .end annotation
.end field

.field private b:Landroid/content/Context;

.field private c:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/mine/model/WithdrawalBean;",
            ">;Z)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 2
    iput-object p1, p0, Lwa/c;->b:Landroid/content/Context;

    .line 3
    iput-object p2, p0, Lwa/c;->a:Ljava/util/List;

    .line 4
    iput-boolean p3, p0, Lwa/c;->c:Z

    return-void
.end method

.method static synthetic a(Lwa/c;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lwa/c;->b:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic b(Lwa/c;Lcom/guochao/faceshow/mine/model/WithdrawalBean;Lcom/guochao/faceshow/mine/view/WithdrawalDiamondActivity;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lwa/c;->d(Lcom/guochao/faceshow/mine/model/WithdrawalBean;Lcom/guochao/faceshow/mine/view/WithdrawalDiamondActivity;)V

    return-void
.end method

.method static synthetic c(Lwa/c;)V
    .locals 0

    invoke-direct {p0}, Lwa/c;->e()V

    return-void
.end method

.method private d(Lcom/guochao/faceshow/mine/model/WithdrawalBean;Lcom/guochao/faceshow/mine/view/WithdrawalDiamondActivity;)V
    .locals 2

    .line 1
    new-instance v0, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    invoke-direct {v0}, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;-><init>()V

    iget-object v1, p0, Lwa/c;->b:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->O(Landroid/content/Context;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    invoke-virtual {v0, p2}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->P(Landroidx/lifecycle/LifecycleOwner;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object p2

    check-cast p2, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    sget-object v0, Lcom/guochao/faceshow/utils/Contants;->TRANSFORMATION_DIAMOND:Ljava/lang/String;

    invoke-virtual {p2, v0}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->Q(Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object p2

    check-cast p2, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    iget-object v0, p0, Lwa/c;->b:Landroid/content/Context;

    const-string/jumbo v1, "userId"

    .line 2
    invoke-static {v0, v1}, Lcom/guochao/faceshow/aaspring/utils/SpUtils;->getStr(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v1, v0}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->D(Ljava/lang/String;Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object p2

    check-cast p2, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    .line 3
    invoke-virtual {p1}, Lcom/guochao/faceshow/mine/model/WithdrawalBean;->getWithdraw_id()I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "withdrawId"

    invoke-virtual {p2, v0, p1}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->D(Ljava/lang/String;Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    new-instance p2, Lwa/c$b;

    invoke-direct {p2, p0}, Lwa/c$b;-><init>(Lwa/c;)V

    .line 4
    invoke-virtual {p1, p2}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->M(Lcom/guochao/faceshow/aaspring/base/http/callback/c;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    return-void
.end method

.method private e()V
    .locals 3

    .line 1
    new-instance v0, Lcom/guochao/faceshow/views/e;

    iget-object v1, p0, Lwa/c;->b:Landroid/content/Context;

    new-instance v2, Lwa/c$c;

    invoke-direct {v2, p0}, Lwa/c$c;-><init>(Lwa/c;)V

    invoke-direct {v0, v1, v2}, Lcom/guochao/faceshow/views/e;-><init>(Landroid/content/Context;Lcom/guochao/faceshow/views/e$a;)V

    .line 2
    iget-object v1, p0, Lwa/c;->b:Landroid/content/Context;

    const v2, 0x7f060072

    invoke-static {v1, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/views/e;->m(I)V

    .line 3
    iget-object v1, p0, Lwa/c;->b:Landroid/content/Context;

    const v2, 0x7f060071

    invoke-static {v1, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/views/e;->d(I)V

    .line 4
    iget-object v1, p0, Lwa/c;->b:Landroid/content/Context;

    const v2, 0x7f120aea

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/views/e;->f(Ljava/lang/CharSequence;)Lcom/guochao/faceshow/views/e;

    .line 5
    invoke-virtual {v0}, Lcom/guochao/faceshow/views/e;->show()V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    iget-object v0, p0, Lwa/c;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lwa/c;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6

    if-nez p2, :cond_0

    .line 1
    new-instance p2, Lwa/c$d;

    invoke-direct {p2}, Lwa/c$d;-><init>()V

    .line 2
    iget-object p3, p0, Lwa/c;->b:Landroid/content/Context;

    invoke-static {p3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p3

    const v0, 0x7f0d0474

    const/4 v1, 0x0

    invoke-virtual {p3, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p3

    const v0, 0x7f0a0c25

    .line 3
    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p2, Lwa/c$d;->a:Landroid/widget/TextView;

    const v0, 0x7f0a017c

    .line 4
    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p2, Lwa/c$d;->b:Landroid/widget/TextView;

    .line 5
    invoke-virtual {p3, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lwa/c$d;

    move-object v5, p3

    move-object p3, p2

    move-object p2, v5

    .line 7
    :goto_0
    iget-object v0, p0, Lwa/c;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/mine/model/WithdrawalBean;

    .line 8
    iget-boolean v0, p0, Lwa/c;->c:Z

    const-string v1, " "

    if-eqz v0, :cond_1

    .line 9
    iget-object v0, p2, Lwa/c$d;->a:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/guochao/faceshow/mine/model/WithdrawalBean;->getPrice_China()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 10
    :cond_1
    iget-object v0, p2, Lwa/c$d;->a:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/guochao/faceshow/mine/model/WithdrawalBean;->getPrice_America()D

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 11
    :goto_1
    iget-object v0, p2, Lwa/c$d;->b:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/guochao/faceshow/mine/model/WithdrawalBean;->getF()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 12
    iget-object v0, p2, Lwa/c$d;->b:Landroid/widget/TextView;

    new-instance v1, Lwa/c$a;

    invoke-direct {v1, p0, p1, p2}, Lwa/c$a;-><init>(Lwa/c;Lcom/guochao/faceshow/mine/model/WithdrawalBean;Lwa/c$d;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p3
.end method
