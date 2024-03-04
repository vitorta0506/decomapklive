.class public Lcom/guochao/faceshow/aaspring/modulars/dressmarket/bean/DressSpecBean;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/guochao/faceshow/aaspring/modulars/dressmarket/bean/DressSpecBean;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private createTime:Ljava/lang/String;

.field private creator:I

.field private dressMallId:J

.field private duration:I

.field private isSelect:Z

.field private lastPrice:I

.field private percent:F

.field private priority:I

.field private ruleId:J

.field private unit:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/bean/DressSpecBean$1;

    invoke-direct {v0}, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/bean/DressSpecBean$1;-><init>()V

    sput-object v0, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/bean/DressSpecBean;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/bean/DressSpecBean;->isSelect:Z

    .line 3
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/bean/DressSpecBean;->ruleId:J

    .line 4
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/bean/DressSpecBean;->dressMallId:J

    .line 5
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/bean/DressSpecBean;->duration:I

    .line 6
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/bean/DressSpecBean;->unit:I

    .line 7
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/bean/DressSpecBean;->percent:F

    .line 8
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/bean/DressSpecBean;->lastPrice:I

    .line 9
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/bean/DressSpecBean;->creator:I

    .line 10
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/bean/DressSpecBean;->createTime:Ljava/lang/String;

    .line 11
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/bean/DressSpecBean;->priority:I

    return-void
.end method

.method private getPriceContent(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 8

    .line 1
    invoke-virtual {p1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0f0095

    .line 2
    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "{diamond} "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x2

    new-array v4, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p2, v4, v5

    const/4 v6, 0x1

    aput-object p3, v4, v6

    const p3, 0x7f1202b7

    invoke-virtual {v0, p3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 4
    new-instance v2, Landroid/text/SpannableStringBuilder;

    invoke-direct {v2, p3}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    if-nez v1, :cond_0

    return-object v2

    .line 5
    :cond_0
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result p3

    .line 6
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v4

    .line 7
    new-instance v6, Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/high16 v7, 0x41800000    # 16.0f

    .line 8
    invoke-virtual {v6, v3, v7}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 9
    invoke-virtual {v6, v5, v5}, Landroid/widget/TextView;->measure(II)V

    .line 10
    invoke-virtual {v6}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v3

    int-to-float v3, v3

    const/high16 v6, 0x40400000    # 3.0f

    .line 11
    invoke-static {v6}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v7

    neg-int v7, v7

    int-to-float v4, v4

    div-float v4, v3, v4

    int-to-float p3, p3

    mul-float v4, v4, p3

    float-to-int p3, v4

    float-to-int v3, v3

    invoke-static {v6}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {v1, v5, v7, p3, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 12
    new-instance p3, Lcom/guochao/faceshow/views/r;

    invoke-direct {p3, v1}, Lcom/guochao/faceshow/views/r;-><init>(Landroid/graphics/drawable/Drawable;)V

    .line 13
    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 14
    new-instance v3, Landroid/text/style/ForegroundColorSpan;

    const v4, 0x7f0600c7

    invoke-static {v0, v4}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v4

    invoke-direct {v3, v4}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/16 v4, 0x11

    if-ltz v1, :cond_1

    .line 15
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v5, v1

    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v6

    if-gt v5, v6, :cond_1

    .line 16
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v5, v1

    invoke-virtual {v2, v3, v1, v5, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 17
    new-instance v3, Landroid/text/style/TextAppearanceSpan;

    invoke-virtual {p1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object p1

    const v5, 0x7f1304cd

    invoke-direct {v3, p1, v5}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;I)V

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p1

    add-int/2addr p1, v1

    const/16 v5, 0x12

    invoke-virtual {v2, v3, v1, p1, v5}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 18
    :cond_1
    new-instance p1, Landroid/text/style/ForegroundColorSpan;

    const v3, 0x7f06009d

    invoke-static {v0, v3}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    invoke-direct {p1, v0}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 19
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v0, v1

    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v3

    invoke-virtual {v2, p1, v0, v3, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 20
    new-instance p1, Landroid/text/style/RelativeSizeSpan;

    const/high16 v0, 0x3f200000    # 0.625f

    invoke-direct {p1, v0}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    add-int/2addr v1, p2

    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result p2

    invoke-virtual {v2, p1, v1, p2, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 21
    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "{diamond}"

    invoke-virtual {p1, p2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p1

    if-ltz p1, :cond_2

    add-int/lit8 p2, p1, 0x9

    .line 22
    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    if-gt p2, v0, :cond_2

    .line 23
    invoke-virtual {v2, p3, p1, p2, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :cond_2
    return-object v2
.end method

.method private getTranslatePrice(I)Ljava/lang/String;
    .locals 0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getCreateTime()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/bean/DressSpecBean;->createTime:Ljava/lang/String;

    return-object v0
.end method

.method public getCreator()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/bean/DressSpecBean;->creator:I

    return v0
.end method

.method public getDressMallId()J
    .locals 2

    iget-wide v0, p0, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/bean/DressSpecBean;->dressMallId:J

    return-wide v0
.end method

.method public getDuration()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/bean/DressSpecBean;->duration:I

    return v0
.end method

.method public getLastPrice()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/bean/DressSpecBean;->lastPrice:I

    return v0
.end method

.method public getOffContent(Landroid/content/Context;)Ljava/lang/String;
    .locals 5

    .line 1
    invoke-static {}, Lq7/a;->e()Lq7/a;

    move-result-object v0

    invoke-virtual {v0}, Lq7/a;->c()Ljava/lang/String;

    move-result-object v0

    const-string v1, "zh"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "######0.0"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 3
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/bean/DressSpecBean;->getPercent()F

    move-result v1

    const/high16 v2, 0x41200000    # 10.0f

    div-float/2addr v1, v2

    float-to-double v3, v1

    invoke-virtual {v0, v3, v4}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    .line 4
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/bean/DressSpecBean;->getPercent()F

    move-result v1

    rem-float/2addr v1, v2

    const/4 v3, 0x0

    cmpl-float v1, v1, v3

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/bean/DressSpecBean;->getPercent()F

    move-result v0

    div-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 5
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/bean/DressSpecBean;->getPercent()F

    move-result v1

    const/high16 v2, 0x42c80000    # 100.0f

    mul-float v1, v1, v2

    div-float/2addr v1, v2

    float-to-int v1, v1

    rsub-int/lit8 v1, v1, 0x64

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "% "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 6
    :cond_1
    :goto_0
    invoke-static {}, Lq7/a;->e()Lq7/a;

    move-result-object v1

    invoke-virtual {v1}, Lq7/a;->j()Z

    move-result v1

    const v2, 0x7f1202bd

    const-string v3, " "

    if-eqz v1, :cond_2

    .line 7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 8
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getPercent()F
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/bean/DressSpecBean;->percent:F

    return v0
.end method

.method public getPriority()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/bean/DressSpecBean;->priority:I

    return v0
.end method

.method public getQuantityTime(I)I
    .locals 2

    const v0, 0x7f100002

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    const v0, 0x7f100003

    goto :goto_0

    :cond_1
    const/4 v1, 0x2

    if-ne p1, v1, :cond_2

    const v0, 0x7f100004

    :cond_2
    :goto_0
    return v0
.end method

.method public getRuleId()J
    .locals 2

    iget-wide v0, p0, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/bean/DressSpecBean;->ruleId:J

    return-wide v0
.end method

.method public getUnit()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/bean/DressSpecBean;->unit:I

    return v0
.end method

.method public isSelect()Z
    .locals 1

    iget-boolean v0, p0, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/bean/DressSpecBean;->isSelect:Z

    return v0
.end method

.method public setCreateTime(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/bean/DressSpecBean;->createTime:Ljava/lang/String;

    return-void
.end method

.method public setCreator(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/bean/DressSpecBean;->creator:I

    return-void
.end method

.method public setDressMallId(J)V
    .locals 0

    iput-wide p1, p0, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/bean/DressSpecBean;->dressMallId:J

    return-void
.end method

.method public setDuration(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/bean/DressSpecBean;->duration:I

    return-void
.end method

.method public setLastPrice(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/bean/DressSpecBean;->lastPrice:I

    return-void
.end method

.method public setPercent(F)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/bean/DressSpecBean;->percent:F

    return-void
.end method

.method public setPriceSpecContent(Landroid/widget/TextView;)V
    .locals 7

    .line 1
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/bean/DressSpecBean;->getDuration()I

    move-result v0

    .line 2
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/bean/DressSpecBean;->getUnit()I

    move-result v1

    .line 3
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/bean/DressSpecBean;->getLastPrice()I

    move-result v2

    .line 4
    invoke-virtual {p0, v1}, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/bean/DressSpecBean;->getQuantityTime(I)I

    move-result v1

    .line 5
    invoke-direct {p0, v2}, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/bean/DressSpecBean;->getTranslatePrice(I)Ljava/lang/String;

    move-result-object v2

    .line 6
    invoke-virtual {p1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-virtual {v3, v1, v0, v4}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 7
    invoke-direct {p0, p1, v2, v0}, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/bean/DressSpecBean;->getPriceContent(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setPriority(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/bean/DressSpecBean;->priority:I

    return-void
.end method

.method public setRuleId(J)V
    .locals 0

    iput-wide p1, p0, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/bean/DressSpecBean;->ruleId:J

    return-void
.end method

.method public setSelect(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/bean/DressSpecBean;->isSelect:Z

    return-void
.end method

.method public setUnit(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/bean/DressSpecBean;->unit:I

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 1
    iget-boolean p2, p0, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/bean/DressSpecBean;->isSelect:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 2
    iget-wide v0, p0, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/bean/DressSpecBean;->ruleId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 3
    iget-wide v0, p0, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/bean/DressSpecBean;->dressMallId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 4
    iget p2, p0, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/bean/DressSpecBean;->duration:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 5
    iget p2, p0, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/bean/DressSpecBean;->unit:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 6
    iget p2, p0, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/bean/DressSpecBean;->percent:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 7
    iget p2, p0, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/bean/DressSpecBean;->lastPrice:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 8
    iget p2, p0, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/bean/DressSpecBean;->creator:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 9
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/bean/DressSpecBean;->createTime:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 10
    iget p2, p0, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/bean/DressSpecBean;->priority:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
