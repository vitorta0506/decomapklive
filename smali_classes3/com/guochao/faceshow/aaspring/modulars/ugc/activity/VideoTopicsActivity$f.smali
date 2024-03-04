.class Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/VideoTopicsActivity$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/VideoTopicsActivity;->l0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlin/jvm/functions/Function1<",
        "Lcom/guochao/faceshow/aaspring/base/http/v2/Response<",
        "Lcom/guochao/faceshow/bean/FirstSixBean;",
        ">;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/VideoTopicsActivity;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/VideoTopicsActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/VideoTopicsActivity$f;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/VideoTopicsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/guochao/faceshow/aaspring/base/http/v2/Response;)Lkotlin/Unit;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/guochao/faceshow/aaspring/base/http/v2/Response<",
            "Lcom/guochao/faceshow/bean/FirstSixBean;",
            ">;)",
            "Lkotlin/Unit;"
        }
    .end annotation

    if-eqz p1, :cond_4

    .line 1
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/base/http/v2/Response;->getData()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_1

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/VideoTopicsActivity$f;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/VideoTopicsActivity;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/base/http/v2/Response;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/bean/FirstSixBean;

    invoke-static {v0, p1}, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/VideoTopicsActivity;->d0(Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/VideoTopicsActivity;Lcom/guochao/faceshow/bean/FirstSixBean;)Lcom/guochao/faceshow/bean/FirstSixBean;

    .line 3
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/VideoTopicsActivity$f;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/VideoTopicsActivity;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/VideoTopicsActivity$f;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/VideoTopicsActivity;

    invoke-static {v1}, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/VideoTopicsActivity;->b0(Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/VideoTopicsActivity;)Lcom/guochao/faceshow/bean/FirstSixBean;

    move-result-object v1

    iget-object v1, v1, Lcom/guochao/faceshow/bean/FirstSixBean;->tname:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 4
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/VideoTopicsActivity$f;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/VideoTopicsActivity;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/VideoTopicsActivity;->mTextViewCreator:Landroid/widget/TextView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/VideoTopicsActivity$f;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/VideoTopicsActivity;

    invoke-static {v1}, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/VideoTopicsActivity;->b0(Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/VideoTopicsActivity;)Lcom/guochao/faceshow/bean/FirstSixBean;

    move-result-object v1

    iget-object v1, v1, Lcom/guochao/faceshow/bean/FirstSixBean;->nickName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "(#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/VideoTopicsActivity$f;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/VideoTopicsActivity;

    const v2, 0x7f1201f1

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/VideoTopicsActivity$f;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/VideoTopicsActivity;

    iget-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/VideoTopicsActivity;->avatarBg:Landroid/widget/ImageView;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/VideoTopicsActivity;->b0(Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/VideoTopicsActivity;)Lcom/guochao/faceshow/bean/FirstSixBean;

    move-result-object p1

    iget-object p1, p1, Lcom/guochao/faceshow/bean/FirstSixBean;->img:Ljava/lang/String;

    invoke-static {v0, p1}, Lhc/a;->d(Landroid/widget/ImageView;Ljava/lang/String;)V

    .line 6
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/VideoTopicsActivity$f;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/VideoTopicsActivity;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/VideoTopicsActivity;->b0(Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/VideoTopicsActivity;)Lcom/guochao/faceshow/bean/FirstSixBean;

    move-result-object p1

    iget p1, p1, Lcom/guochao/faceshow/bean/FirstSixBean;->useNum:I

    const/16 v0, 0x2710

    const v1, 0x7f1201f2

    if-le p1, v0, :cond_1

    .line 7
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/VideoTopicsActivity$f;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/VideoTopicsActivity;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/VideoTopicsActivity;->b0(Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/VideoTopicsActivity;)Lcom/guochao/faceshow/bean/FirstSixBean;

    move-result-object p1

    iget p1, p1, Lcom/guochao/faceshow/bean/FirstSixBean;->useNum:I

    int-to-double v2, p1

    const-wide v4, 0x40c3880000000000L    # 10000.0

    div-double/2addr v2, v4

    .line 8
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/VideoTopicsActivity$f;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/VideoTopicsActivity;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/VideoTopicsActivity;->mTextViewCount:Landroid/widget/TextView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v2, v3}, Lcom/guochao/faceshow/aaspring/utils/Formatter;->priceFormat(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "w "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/VideoTopicsActivity$f;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/VideoTopicsActivity;

    invoke-virtual {v2, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 9
    :cond_1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/VideoTopicsActivity$f;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/VideoTopicsActivity;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/VideoTopicsActivity;->b0(Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/VideoTopicsActivity;)Lcom/guochao/faceshow/bean/FirstSixBean;

    move-result-object p1

    iget p1, p1, Lcom/guochao/faceshow/bean/FirstSixBean;->useNum:I

    const/16 v0, 0x3e8

    if-le p1, v0, :cond_2

    .line 10
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/VideoTopicsActivity$f;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/VideoTopicsActivity;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/VideoTopicsActivity;->b0(Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/VideoTopicsActivity;)Lcom/guochao/faceshow/bean/FirstSixBean;

    move-result-object p1

    iget p1, p1, Lcom/guochao/faceshow/bean/FirstSixBean;->useNum:I

    int-to-double v2, p1

    const-wide v4, 0x408f400000000000L    # 1000.0

    div-double/2addr v2, v4

    .line 11
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/VideoTopicsActivity$f;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/VideoTopicsActivity;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/VideoTopicsActivity;->mTextViewCount:Landroid/widget/TextView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v2, v3}, Lcom/guochao/faceshow/aaspring/utils/Formatter;->priceFormat(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "K "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/VideoTopicsActivity$f;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/VideoTopicsActivity;

    invoke-virtual {v2, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 12
    :cond_2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/VideoTopicsActivity$f;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/VideoTopicsActivity;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/VideoTopicsActivity;->mTextViewCount:Landroid/widget/TextView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/VideoTopicsActivity$f;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/VideoTopicsActivity;

    invoke-static {v2}, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/VideoTopicsActivity;->b0(Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/VideoTopicsActivity;)Lcom/guochao/faceshow/bean/FirstSixBean;

    move-result-object v2

    iget v2, v2, Lcom/guochao/faceshow/bean/FirstSixBean;->useNum:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/VideoTopicsActivity$f;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/VideoTopicsActivity;

    invoke-virtual {v2, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 13
    :goto_0
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/VideoTopicsActivity$f;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/VideoTopicsActivity;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/VideoTopicsActivity;->b0(Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/VideoTopicsActivity;)Lcom/guochao/faceshow/bean/FirstSixBean;

    move-result-object p1

    iget-object p1, p1, Lcom/guochao/faceshow/bean/FirstSixBean;->introduction:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 14
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/VideoTopicsActivity$f;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/VideoTopicsActivity;

    iget-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/VideoTopicsActivity;->mExpandableImageTextView:Lcom/guochao/faceshow/aaspring/views/ExpandableImageTextView;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/VideoTopicsActivity;->b0(Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/VideoTopicsActivity;)Lcom/guochao/faceshow/bean/FirstSixBean;

    move-result-object p1

    iget-object p1, p1, Lcom/guochao/faceshow/bean/FirstSixBean;->introduction:Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/guochao/faceshow/aaspring/views/ExpandableImageTextView;->setMeasureText(Ljava/lang/CharSequence;)V

    .line 15
    :cond_3
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 16
    :cond_4
    :goto_1
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/guochao/faceshow/aaspring/base/http/v2/Response;

    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/VideoTopicsActivity$f;->a(Lcom/guochao/faceshow/aaspring/base/http/v2/Response;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
