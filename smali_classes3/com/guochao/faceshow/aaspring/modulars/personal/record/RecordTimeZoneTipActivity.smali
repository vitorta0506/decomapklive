.class public Lcom/guochao/faceshow/aaspring/modulars/personal/record/RecordTimeZoneTipActivity;
.super Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;
.source "SourceFile"


# instance fields
.field private a:Landroid/widget/TextView;

.field private b:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public getLayoutId()I
    .locals 1

    const v0, 0x7f0d009f

    return v0
.end method

.method public initView()V
    .locals 7

    const-string v0, ""

    .line 1
    invoke-virtual {p0, v0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->setTitle(Ljava/lang/CharSequence;)V

    const v0, 0x7f0a0ba8

    .line 2
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/record/RecordTimeZoneTipActivity;->a:Landroid/widget/TextView;

    const v0, 0x7f0a0ba9

    .line 3
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/record/RecordTimeZoneTipActivity;->b:Landroid/widget/TextView;

    .line 4
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 5
    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-direct {v1}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 6
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->getActivity()Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;

    move-result-object v2

    const v3, 0x7f0803b9

    invoke-static {v2, v3}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v2, :cond_0

    const/high16 v3, 0x41000000    # 8.0f

    .line 7
    invoke-static {v3}, Lcom/guochao/faceshow/utils/ScreenTools;->dip2px(F)I

    move-result v4

    invoke-static {v3}, Lcom/guochao/faceshow/utils/ScreenTools;->dip2px(F)I

    move-result v3

    const/4 v5, 0x0

    invoke-virtual {v2, v5, v5, v4, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 8
    new-instance v3, Lcom/guochao/faceshow/aaspring/views/i;

    const/high16 v4, 0x41200000    # 10.0f

    invoke-static {v4}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v5

    invoke-direct {v3, v2, v5}, Lcom/guochao/faceshow/aaspring/views/i;-><init>(Landroid/graphics/drawable/Drawable;I)V

    invoke-static {v0, v3}, Lcom/guochao/faceshow/aaspring/utils/SpanColorUtils;->append(Landroid/text/SpannableStringBuilder;Landroid/text/style/ImageSpan;)Landroid/text/SpannableStringBuilder;

    const-string v3, " "

    .line 9
    invoke-virtual {v0, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v5

    const v6, 0x7f12078e

    invoke-virtual {p0, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 10
    iget-object v5, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/record/RecordTimeZoneTipActivity;->a:Landroid/widget/TextView;

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 11
    new-instance v0, Lcom/guochao/faceshow/aaspring/views/i;

    invoke-static {v4}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v4

    invoke-direct {v0, v2, v4}, Lcom/guochao/faceshow/aaspring/views/i;-><init>(Landroid/graphics/drawable/Drawable;I)V

    invoke-static {v1, v0}, Lcom/guochao/faceshow/aaspring/utils/SpanColorUtils;->append(Landroid/text/SpannableStringBuilder;Landroid/text/style/ImageSpan;)Landroid/text/SpannableStringBuilder;

    .line 12
    invoke-virtual {v1, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    const v2, 0x7f12078f

    invoke-virtual {p0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 13
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/record/RecordTimeZoneTipActivity;->b:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public loadData()V
    .locals 0

    return-void
.end method
