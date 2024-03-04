.class public Lcom/guochao/faceshow/aaspring/modulars/dressmarket/DressUpRulesActivity;
.super Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;
.source "SourceFile"


# instance fields
.field a:I

.field b:[I

.field c:[[I

.field d:[I

.field e:[[I

.field f:[I

.field g:[[I

.field mTextView:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 8

    .line 1
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;-><init>()V

    const/4 v0, 0x4

    new-array v1, v0, [I

    .line 2
    fill-array-data v1, :array_0

    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/DressUpRulesActivity;->b:[I

    new-array v1, v0, [[I

    const/4 v2, 0x1

    new-array v3, v2, [I

    const v4, 0x7f1202cf

    const/4 v5, 0x0

    aput v4, v3, v5

    aput-object v3, v1, v5

    new-array v3, v2, [I

    const v4, 0x7f1202d1

    aput v4, v3, v5

    aput-object v3, v1, v2

    new-array v3, v2, [I

    const v4, 0x7f1202d3

    aput v4, v3, v5

    const/4 v4, 0x2

    aput-object v3, v1, v4

    new-array v3, v4, [I

    .line 3
    fill-array-data v3, :array_1

    const/4 v6, 0x3

    aput-object v3, v1, v6

    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/DressUpRulesActivity;->c:[[I

    new-array v1, v0, [I

    .line 4
    fill-array-data v1, :array_2

    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/DressUpRulesActivity;->d:[I

    new-array v1, v0, [[I

    new-array v3, v2, [I

    const v7, 0x7f1202c6

    aput v7, v3, v5

    aput-object v3, v1, v5

    new-array v3, v2, [I

    const v7, 0x7f1202cc

    aput v7, v3, v5

    aput-object v3, v1, v2

    new-array v3, v2, [I

    const v7, 0x7f1202c8

    aput v7, v3, v5

    aput-object v3, v1, v4

    new-array v3, v4, [I

    .line 5
    fill-array-data v3, :array_3

    aput-object v3, v1, v6

    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/DressUpRulesActivity;->e:[[I

    new-array v1, v0, [I

    .line 6
    fill-array-data v1, :array_4

    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/DressUpRulesActivity;->f:[I

    new-array v0, v0, [[I

    new-array v1, v2, [I

    const v3, 0x7f1202d9

    aput v3, v1, v5

    aput-object v1, v0, v5

    new-array v1, v2, [I

    const v3, 0x7f1202df

    aput v3, v1, v5

    aput-object v1, v0, v2

    new-array v1, v2, [I

    const v2, 0x7f1202db

    aput v2, v1, v5

    aput-object v1, v0, v4

    new-array v1, v4, [I

    .line 7
    fill-array-data v1, :array_5

    aput-object v1, v0, v6

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/DressUpRulesActivity;->g:[[I

    return-void

    :array_0
    .array-data 4
        0x7f1202ce
        0x7f1202d0
        0x7f1202d2
        0x7f1202d4
    .end array-data

    :array_1
    .array-data 4
        0x7f1202d5
        0x7f1202d6
    .end array-data

    :array_2
    .array-data 4
        0x7f1202c5
        0x7f1202c9
        0x7f1202c7
        0x7f1202d4
    .end array-data

    :array_3
    .array-data 4
        0x7f1202ca
        0x7f1202cb
    .end array-data

    :array_4
    .array-data 4
        0x7f1202d8
        0x7f1202dc
        0x7f1202da
        0x7f1202d4
    .end array-data

    :array_5
    .array-data 4
        0x7f1202dd
        0x7f1202de
    .end array-data
.end method

.method private b0(Ljava/lang/String;)Landroid/text/SpannableString;
    .locals 4

    .line 1
    new-instance v0, Landroid/text/SpannableString;

    invoke-direct {v0, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 2
    new-instance p1, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/DressUpRulesActivity$a;

    invoke-direct {p1, p0}, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/DressUpRulesActivity$a;-><init>(Lcom/guochao/faceshow/aaspring/modulars/dressmarket/DressUpRulesActivity;)V

    .line 3
    invoke-virtual {v0}, Landroid/text/SpannableString;->length()I

    move-result v1

    const/4 v2, 0x0

    const/16 v3, 0x21

    .line 4
    invoke-virtual {v0, p1, v2, v1, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    return-object v0
.end method

.method private d0(Ljava/lang/String;)Landroid/text/SpannableString;
    .locals 4

    .line 1
    new-instance v0, Landroid/text/SpannableString;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 2
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x7f0f009b

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 3
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {p1, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 4
    new-instance v1, Lcom/guochao/faceshow/views/r;

    invoke-direct {v1, p1}, Lcom/guochao/faceshow/views/r;-><init>(Landroid/graphics/drawable/Drawable;)V

    const/4 p1, 0x1

    const/16 v2, 0x21

    invoke-virtual {v0, v1, v3, p1, v2}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 5
    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/DressUpRulesActivity$b;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/DressUpRulesActivity$b;-><init>(Lcom/guochao/faceshow/aaspring/modulars/dressmarket/DressUpRulesActivity;)V

    .line 6
    invoke-virtual {v0}, Landroid/text/SpannableString;->length()I

    move-result v3

    .line 7
    invoke-virtual {v0, v1, p1, v3, v2}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    return-object v0
.end method


# virtual methods
.method e0()V
    .locals 8

    .line 1
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 2
    iget v1, p0, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/DressUpRulesActivity;->a:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    const v1, 0x7f1202cd

    .line 3
    invoke-virtual {p0, v1}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->setTitle(I)V

    .line 4
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/DressUpRulesActivity;->b:[I

    .line 5
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/DressUpRulesActivity;->c:[[I

    goto :goto_0

    :cond_0
    const v1, 0x7f1202d7

    .line 6
    invoke-virtual {p0, v1}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->setTitle(I)V

    .line 7
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/DressUpRulesActivity;->f:[I

    .line 8
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/DressUpRulesActivity;->g:[[I

    goto :goto_0

    :cond_1
    const v1, 0x7f1202e0

    .line 9
    invoke-virtual {p0, v1}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->setTitle(I)V

    .line 10
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/DressUpRulesActivity;->d:[I

    .line 11
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/DressUpRulesActivity;->e:[[I

    :goto_0
    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 12
    :goto_1
    array-length v5, v1

    if-ge v4, v5, :cond_3

    .line 13
    aget v5, v1, v4

    invoke-virtual {p0, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/DressUpRulesActivity;->d0(Ljava/lang/String;)Landroid/text/SpannableString;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    const-string v5, "\r\n"

    .line 14
    invoke-virtual {v0, v5}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    const/4 v6, 0x0

    .line 15
    :goto_2
    aget-object v7, v2, v4

    array-length v7, v7

    if-ge v6, v7, :cond_2

    .line 16
    aget-object v7, v2, v4

    aget v7, v7, v6

    invoke-virtual {p0, v7}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/DressUpRulesActivity;->b0(Ljava/lang/String;)Landroid/text/SpannableString;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 17
    invoke-virtual {v0, v5}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 18
    invoke-virtual {v0, v5}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 19
    :cond_3
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/DressUpRulesActivity;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public getLayoutId()I
    .locals 1

    const v0, 0x7f0d0045

    return v0
.end method

.method public initView()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "type"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/DressUpRulesActivity;->a:I

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const v1, 0x7f0603ce

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 3
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/DressUpRulesActivity;->e0()V

    return-void
.end method

.method public loadData()V
    .locals 0

    return-void
.end method
