.class Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity$k;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "k"
.end annotation


# instance fields
.field a:[Ljava/lang/String;

.field b:Ljava/lang/String;

.field c:Ljava/lang/String;

.field d:Landroid/view/ViewStub;

.field e:Landroid/view/ViewStub;

.field f:Landroid/view/View;

.field g:Landroid/view/View;

.field private h:I

.field final synthetic i:Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;


# direct methods
.method public constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;Landroid/view/ViewStub;Landroid/view/ViewStub;)V
    .locals 3

    .line 1
    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity$k;->i:Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string p1, "TRC20"

    const-string v0, "ERC20"

    const-string v1, "HECO"

    const-string v2, "OMNI"

    .line 2
    filled-new-array {p1, v0, v1, v2}, [Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity$k;->a:[Ljava/lang/String;

    const-string p1, "https://www.tronlink.org/"

    .line 3
    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity$k;->b:Ljava/lang/String;

    const-string p1, "https://www.tronlink.org/cn/"

    .line 4
    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity$k;->c:Ljava/lang/String;

    const/4 p1, -0x1

    .line 5
    iput p1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity$k;->h:I

    .line 6
    iput-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity$k;->d:Landroid/view/ViewStub;

    .line 7
    iput-object p3, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity$k;->e:Landroid/view/ViewStub;

    return-void
.end method

.method static synthetic a(Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity$k;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity$k;->i(I)V

    return-void
.end method

.method private f(Ljava/lang/String;I)Ljava/lang/String;
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity$k;->i:Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;

    const v1, 0x7f120ac6

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    :try_start_0
    const-string v4, "ar"

    .line 2
    invoke-static {}, Lq7/a;->e()Lq7/a;

    move-result-object v5

    invoke-virtual {v5}, Lq7/a;->c()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    new-array v4, v2, [Ljava/lang/Object;

    .line 3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "USDT"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v3

    invoke-static {v0, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    new-array v4, v1, [Ljava/lang/Object;

    aput-object p1, v4, v3

    .line 4
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {v0, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v3

    .line 5
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method private h()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity$k;->f:Landroid/view/View;

    const v1, 0x7f0a0a4c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 2
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    .line 3
    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/view/View;->setSelected(Z)V

    .line 4
    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 5
    new-instance v5, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity$k$b;

    invoke-direct {v5, p0, v3}, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity$k$b;-><init>(Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity$k;I)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity$k;->f:Landroid/view/View;

    const v1, 0x7f0a0d7f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 7
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity$k;->i:Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;

    invoke-static {v1}, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;->v0(Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private i(I)V
    .locals 13

    .line 1
    iget v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity$k;->h:I

    if-ne v0, p1, :cond_0

    return-void

    .line 2
    :cond_0
    iput p1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity$k;->h:I

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity$k;->f:Landroid/view/View;

    const v1, 0x7f0a0a4c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 4
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    const/4 v4, 0x1

    if-ge v3, v1, :cond_2

    .line 5
    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    if-ne p1, v3, :cond_1

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    :goto_1
    invoke-virtual {v5, v4}, Landroid/view/View;->setSelected(Z)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 6
    :cond_2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity$k;->a:[Ljava/lang/String;

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity$k;->e()I

    move-result v1

    aget-object v0, v0, v1

    .line 7
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity$k;->g:Landroid/view/View;

    const v3, 0x7f0a0255

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 8
    new-instance v3, Landroid/text/SpannableStringBuilder;

    invoke-direct {v3}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 9
    iget-object v5, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity$k;->i:Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;

    invoke-virtual {v5}, Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f120ac2

    new-array v7, v4, [Ljava/lang/Object;

    aput-object v0, v7, v2

    invoke-virtual {v5, v6, v7}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 10
    invoke-virtual {v3, v5}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    const-string v5, "\r\n"

    .line 11
    invoke-virtual {v3, v5}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 12
    iget-object v6, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity$k;->i:Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;

    const v7, 0x7f120ac3

    invoke-virtual {v6, v7}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 13
    invoke-virtual {v3, v6}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 14
    invoke-virtual {v3, v5}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    if-ne p1, v4, :cond_3

    .line 15
    invoke-static {}, Lcom/guochao/faceshow/aaspring/manager/i;->u()Lcom/guochao/faceshow/aaspring/manager/i;

    move-result-object v6

    invoke-virtual {v6}, Lcom/guochao/faceshow/aaspring/manager/i;->s()Lcom/guochao/faceshow/aaspring/config/ServerConfig;

    move-result-object v6

    invoke-virtual {v6}, Lcom/guochao/faceshow/aaspring/config/ServerConfig;->getServiceChargeOfERC20()I

    move-result v6

    invoke-direct {p0, v0, v6}, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity$k;->f(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_3
    const/4 v6, 0x3

    if-ne p1, v6, :cond_4

    .line 16
    invoke-static {}, Lcom/guochao/faceshow/aaspring/manager/i;->u()Lcom/guochao/faceshow/aaspring/manager/i;

    move-result-object v6

    invoke-virtual {v6}, Lcom/guochao/faceshow/aaspring/manager/i;->s()Lcom/guochao/faceshow/aaspring/config/ServerConfig;

    move-result-object v6

    invoke-virtual {v6}, Lcom/guochao/faceshow/aaspring/config/ServerConfig;->getServiceChargeOfOMNI()I

    move-result v6

    invoke-direct {p0, v0, v6}, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity$k;->f(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_4
    if-nez p1, :cond_5

    .line 17
    invoke-static {}, Lcom/guochao/faceshow/aaspring/manager/i;->u()Lcom/guochao/faceshow/aaspring/manager/i;

    move-result-object v6

    invoke-virtual {v6}, Lcom/guochao/faceshow/aaspring/manager/i;->s()Lcom/guochao/faceshow/aaspring/config/ServerConfig;

    move-result-object v6

    invoke-virtual {v6}, Lcom/guochao/faceshow/aaspring/config/ServerConfig;->getServiceChargeOfTRC20()I

    move-result v6

    invoke-direct {p0, v0, v6}, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity$k;->f(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 18
    :cond_5
    iget-object v6, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity$k;->i:Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;

    const v7, 0x7f120ac4

    new-array v8, v4, [Ljava/lang/Object;

    aput-object v0, v8, v2

    invoke-virtual {v6, v7, v8}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 19
    :goto_2
    invoke-virtual {v3, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 20
    invoke-virtual {v3, v5}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 21
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity$k;->i:Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;

    const v5, 0x7f120ac5

    invoke-virtual {v0, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 22
    iget-object v5, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity$k;->i:Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;

    const v6, 0x7f120aca

    invoke-virtual {v5, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 23
    iget-object v6, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity$k;->i:Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;

    const v7, 0x7f120ac9

    invoke-virtual {v6, v7}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v6, v7, v2

    aput-object v5, v7, v4

    .line 24
    invoke-static {v0, v7}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 25
    invoke-virtual {v0, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    .line 26
    new-instance v8, Landroid/text/SpannableString;

    invoke-direct {v8, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    const v9, 0x7f060093

    const/16 v10, 0x21

    if-ltz v7, :cond_6

    .line 27
    new-instance v11, Landroid/text/style/ForegroundColorSpan;

    iget-object v12, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity$k;->i:Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;

    invoke-virtual {v12}, Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    invoke-virtual {v12, v9}, Landroid/content/res/Resources;->getColor(I)I

    move-result v12

    invoke-direct {v11, v12}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v12

    add-int/2addr v12, v7

    invoke-virtual {v8, v11, v7, v12, v10}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 28
    new-instance v11, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity$k$c;

    invoke-direct {v11, p0}, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity$k$c;-><init>(Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity$k;)V

    .line 29
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v12

    add-int/2addr v12, v7

    .line 30
    invoke-virtual {v8, v11, v7, v12, v10}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 31
    :cond_6
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v7, v6

    invoke-virtual {v0, v5, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    if-ltz v0, :cond_7

    .line 32
    new-instance v6, Landroid/text/style/ForegroundColorSpan;

    iget-object v7, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity$k;->i:Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;

    invoke-virtual {v7}, Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    invoke-direct {v6, v7}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v7, v0

    invoke-virtual {v8, v6, v0, v7, v10}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 33
    new-instance v6, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity$k$d;

    invoke-direct {v6, p0}, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity$k$d;-><init>(Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity$k;)V

    .line 34
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v5, v0

    .line 35
    invoke-virtual {v8, v6, v0, v5, v10}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 36
    :cond_7
    invoke-virtual {v3, v8}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 37
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 38
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 39
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity$k;->f:Landroid/view/View;

    const v1, 0x7f0a0370

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 40
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity$k;->i:Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;

    const v3, 0x7f120ac0

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity$k;->a:[Ljava/lang/String;

    aget-object p1, v5, p1

    aput-object p1, v4, v2

    invoke-virtual {v1, v3, v4}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    const-string p1, ""

    .line 41
    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public b()Z
    .locals 6

    .line 1
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity$k;->c()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity$k;->e()I

    move-result v1

    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_0

    .line 4
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity$k;->i:Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;

    const v2, 0x7f120ac0

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity$k;->a:[Ljava/lang/String;

    aget-object v1, v5, v1

    aput-object v1, v3, v4

    invoke-virtual {v0, v2, v3}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;->showToast(Ljava/lang/CharSequence;)V

    return v4

    :cond_0
    const v2, 0x7f120ac7

    if-eqz v1, :cond_6

    if-eq v1, v3, :cond_5

    const/4 v5, 0x2

    if-eq v1, v5, :cond_5

    const/4 v5, 0x3

    if-eq v1, v5, :cond_1

    goto :goto_1

    :cond_1
    const-string v5, "1"

    .line 5
    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_3

    const-string v5, "3"

    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    .line 6
    :cond_2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity$k;->i:Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity$k;->a:[Ljava/lang/String;

    aget-object v1, v5, v1

    aput-object v1, v3, v4

    invoke-virtual {v0, v2, v3}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;->showToast(Ljava/lang/CharSequence;)V

    return v4

    .line 7
    :cond_3
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity$k;->i:Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;->v0(Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    const/high16 v1, 0x435c0000    # 220.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_4

    .line 8
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity$k;->i:Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;

    const v1, 0x7f120ac8

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;->showToast(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v4

    :catch_0
    :cond_4
    return v3

    :cond_5
    const-string v5, "0x"

    .line 9
    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 10
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity$k;->i:Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity$k;->a:[Ljava/lang/String;

    aget-object v1, v5, v1

    aput-object v1, v3, v4

    invoke-virtual {v0, v2, v3}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;->showToast(Ljava/lang/CharSequence;)V

    return v4

    :cond_6
    const-string v5, "T"

    .line 11
    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 12
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity$k;->i:Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity$k;->a:[Ljava/lang/String;

    aget-object v1, v5, v1

    aput-object v1, v3, v4

    invoke-virtual {v0, v2, v3}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;->showToast(Ljava/lang/CharSequence;)V

    return v4

    :cond_7
    :goto_1
    return v3
.end method

.method public c()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity$k;->f:Landroid/view/View;

    const v1, 0x7f0a0370

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 2
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity$k;->e()I

    move-result v0

    .line 2
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity$k;->a:[Ljava/lang/String;

    aget-object v0, v1, v0

    return-object v0
.end method

.method public e()I
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity$k;->f:Landroid/view/View;

    const v1, 0x7f0a0a4c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 2
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    .line 3
    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->isSelected()Z

    move-result v4

    if-eqz v4, :cond_0

    return v3

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method

.method public g()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity$k;->f:Landroid/view/View;

    const/16 v1, 0x8

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity$k;->g:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public j()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity$k;->f:Landroid/view/View;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity$k;->d:Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity$k;->f:Landroid/view/View;

    .line 3
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity$k;->h()V

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity$k;->g:Landroid/view/View;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 5
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity$k;->e:Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity$k;->g:Landroid/view/View;

    .line 6
    invoke-direct {p0, v1}, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity$k;->i(I)V

    .line 7
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity$k;->g:Landroid/view/View;

    const v2, 0x7f0a04ab

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v2, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity$k$a;

    invoke-direct {v2, p0}, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity$k$a;-><init>(Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity$k;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 8
    :cond_1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity$k;->f:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 9
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity$k;->g:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
