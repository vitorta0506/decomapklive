.class Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/MusicVideoActivity$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/MusicVideoActivity;->B0()V
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
.field final synthetic a:Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/MusicVideoActivity;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/MusicVideoActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/MusicVideoActivity$d;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/MusicVideoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/guochao/faceshow/aaspring/base/http/v2/Response;)Lkotlin/Unit;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/guochao/faceshow/aaspring/base/http/v2/Response<",
            "Lcom/guochao/faceshow/bean/FirstSixBean;",
            ">;)",
            "Lkotlin/Unit;"
        }
    .end annotation

    if-eqz p1, :cond_5

    .line 1
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/base/http/v2/Response;->getData()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_2

    .line 2
    :cond_0
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/base/http/v2/Response;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/bean/FirstSixBean;

    if-eqz p1, :cond_4

    .line 3
    invoke-virtual {p1}, Lcom/guochao/faceshow/bean/FirstSixBean;->getAvatarUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/guochao/faceshow/bean/FirstSixBean;->getAvatarUrl()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/MusicVideoActivity$d;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/MusicVideoActivity;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/MusicVideoActivity;->music_img:Landroid/widget/ImageView;

    invoke-virtual {p1}, Lcom/guochao/faceshow/bean/FirstSixBean;->getAvatarUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhc/a;->j(Landroid/widget/ImageView;Ljava/lang/String;)V

    .line 5
    :goto_0
    iget v0, p1, Lcom/guochao/faceshow/bean/FirstSixBean;->useNum:I

    const/16 v1, 0x2710

    const v2, 0x7f1201f2

    if-le v0, v1, :cond_2

    .line 6
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/MusicVideoActivity$d;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/MusicVideoActivity;

    int-to-double v3, v0

    const-wide v5, 0x40c3880000000000L    # 10000.0

    div-double/2addr v3, v5

    invoke-static {v1, v3, v4}, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/MusicVideoActivity;->n0(Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/MusicVideoActivity;D)D

    .line 7
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/MusicVideoActivity$d;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/MusicVideoActivity;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/MusicVideoActivity;->mTextViewCount:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/MusicVideoActivity$d;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/MusicVideoActivity;

    invoke-static {v3}, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/MusicVideoActivity;->m0(Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/MusicVideoActivity;)D

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/guochao/faceshow/aaspring/utils/Formatter;->priceFormat(D)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "w "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/MusicVideoActivity$d;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/MusicVideoActivity;

    invoke-virtual {v3, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_2
    const/16 v1, 0x3e8

    if-le v0, v1, :cond_3

    .line 8
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/MusicVideoActivity$d;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/MusicVideoActivity;

    int-to-double v3, v0

    const-wide v5, 0x408f400000000000L    # 1000.0

    div-double/2addr v3, v5

    invoke-static {v1, v3, v4}, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/MusicVideoActivity;->n0(Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/MusicVideoActivity;D)D

    .line 9
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/MusicVideoActivity$d;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/MusicVideoActivity;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/MusicVideoActivity;->mTextViewCount:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/MusicVideoActivity$d;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/MusicVideoActivity;

    invoke-static {v3}, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/MusicVideoActivity;->m0(Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/MusicVideoActivity;)D

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/guochao/faceshow/aaspring/utils/Formatter;->priceFormat(D)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "K "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/MusicVideoActivity$d;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/MusicVideoActivity;

    invoke-virtual {v3, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 10
    :cond_3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/MusicVideoActivity$d;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/MusicVideoActivity;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/MusicVideoActivity;->mTextViewCount:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p1, Lcom/guochao/faceshow/bean/FirstSixBean;->useNum:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/MusicVideoActivity$d;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/MusicVideoActivity;

    invoke-virtual {v3, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 11
    :goto_1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/MusicVideoActivity$d;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/MusicVideoActivity;

    iget p1, p1, Lcom/guochao/faceshow/bean/FirstSixBean;->collect:I

    invoke-static {v0, p1}, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/MusicVideoActivity;->p0(Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/MusicVideoActivity;I)I

    .line 12
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/MusicVideoActivity$d;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/MusicVideoActivity;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/MusicVideoActivity;->o0(Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/MusicVideoActivity;)I

    move-result v0

    invoke-static {p1, v0}, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/MusicVideoActivity;->q0(Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/MusicVideoActivity;I)V

    .line 13
    :cond_4
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 14
    :cond_5
    :goto_2
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/guochao/faceshow/aaspring/base/http/v2/Response;

    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/MusicVideoActivity$d;->a(Lcom/guochao/faceshow/aaspring/base/http/v2/Response;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
