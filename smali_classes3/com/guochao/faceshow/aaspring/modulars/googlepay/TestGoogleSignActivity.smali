.class public Lcom/guochao/faceshow/aaspring/modulars/googlepay/TestGoogleSignActivity;
.super Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;
.source "SourceFile"


# instance fields
.field private a:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;-><init>()V

    return-void
.end method

.method public static synthetic b0(Lcom/guochao/faceshow/aaspring/modulars/googlepay/TestGoogleSignActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/TestGoogleSignActivity;->l0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic d0(Lcom/guochao/faceshow/aaspring/modulars/googlepay/TestGoogleSignActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/TestGoogleSignActivity;->k0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic e0(Lcom/guochao/faceshow/aaspring/modulars/googlepay/TestGoogleSignActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/TestGoogleSignActivity;->i0(Landroid/view/View;)V

    return-void
.end method

.method static synthetic g0(Lcom/guochao/faceshow/aaspring/modulars/googlepay/TestGoogleSignActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/TestGoogleSignActivity;->m0()V

    return-void
.end method

.method private synthetic i0(Landroid/view/View;)V
    .locals 1

    .line 1
    new-instance p1, Lcom/guochao/faceshow/views/e;

    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/googlepay/TestGoogleSignActivity$a;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/TestGoogleSignActivity$a;-><init>(Lcom/guochao/faceshow/aaspring/modulars/googlepay/TestGoogleSignActivity;)V

    invoke-direct {p1, p0, v0}, Lcom/guochao/faceshow/views/e;-><init>(Landroid/content/Context;Lcom/guochao/faceshow/views/e$a;)V

    const-string v0, "\u63d2\u5165\u4e00\u4e2a\u5565\u6837\u7684\u6570\u636e\u5417\uff1f"

    .line 2
    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/views/e;->f(Ljava/lang/CharSequence;)Lcom/guochao/faceshow/views/e;

    move-result-object p1

    const-string v0, "\u91cd\u590d\u7684"

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/views/e;->k(Ljava/lang/CharSequence;)Lcom/guochao/faceshow/views/e;

    move-result-object p1

    const-string v0, "\u4e0d\u91cd\u590d\u7684"

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/views/e;->i(Ljava/lang/CharSequence;)Lcom/guochao/faceshow/views/e;

    move-result-object p1

    .line 3
    invoke-virtual {p1}, Lcom/guochao/faceshow/views/e;->show()V

    return-void
.end method

.method private synthetic k0(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/TestGoogleSignActivity;->m0()V

    return-void
.end method

.method private synthetic l0(Landroid/view/View;)V
    .locals 1

    .line 1
    new-instance p1, Lcom/guochao/faceshow/views/e;

    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/googlepay/TestGoogleSignActivity$b;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/TestGoogleSignActivity$b;-><init>(Lcom/guochao/faceshow/aaspring/modulars/googlepay/TestGoogleSignActivity;)V

    invoke-direct {p1, p0, v0}, Lcom/guochao/faceshow/views/e;-><init>(Landroid/content/Context;Lcom/guochao/faceshow/views/e$a;)V

    const-string v0, "\u53bb\u91cd\uff0c\u8fd8\u662f\u5220\u9664\u6700\u540e\u4e00\u6761\uff1f"

    .line 2
    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/views/e;->f(Ljava/lang/CharSequence;)Lcom/guochao/faceshow/views/e;

    move-result-object p1

    const-string v0, "\u4ec5\u4ec5\u53bb\u91cd"

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/views/e;->k(Ljava/lang/CharSequence;)Lcom/guochao/faceshow/views/e;

    move-result-object p1

    const-string v0, "\u5220\u9664\u6700\u540e\u4e00\u6761\n(\u6709\u91cd\u590d\u5c31\u5168\u5220)"

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/views/e;->i(Ljava/lang/CharSequence;)Lcom/guochao/faceshow/views/e;

    move-result-object p1

    .line 3
    invoke-virtual {p1}, Lcom/guochao/faceshow/views/e;->show()V

    return-void
.end method

.method private m0()V
    .locals 6

    .line 1
    invoke-static {}, Lu7/c;->c()Lu7/c;

    move-result-object v0

    invoke-virtual {v0}, Lu7/c;->d()Ljava/util/List;

    move-result-object v0

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 3
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/guochao/faceshow/aaspring/beans/GooglePlayPurchaseResult;

    const-string v3, "{\n\t"

    .line 4
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/beans/GooglePlayPurchaseResult;->getUserId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ",\n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\t"

    .line 5
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/beans/GooglePlayPurchaseResult;->getSignture()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/beans/GooglePlayPurchaseResult;->getSigntureData()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n}\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/googlepay/TestGoogleSignActivity;->a:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public getLayoutId()I
    .locals 1

    const v0, 0x7f0d00b8

    return v0
.end method

.method public initView()V
    .locals 2

    const v0, 0x7f0a071a

    .line 1
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/googlepay/TestGoogleSignActivity;->a:Landroid/widget/TextView;

    const v0, 0x7f0a0554

    .line 2
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/googlepay/l;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/l;-><init>(Lcom/guochao/faceshow/aaspring/modulars/googlepay/TestGoogleSignActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a0912

    .line 3
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/googlepay/k;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/k;-><init>(Lcom/guochao/faceshow/aaspring/modulars/googlepay/TestGoogleSignActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a02a3

    .line 4
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/googlepay/j;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/j;-><init>(Lcom/guochao/faceshow/aaspring/modulars/googlepay/TestGoogleSignActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public loadData()V
    .locals 0

    return-void
.end method
