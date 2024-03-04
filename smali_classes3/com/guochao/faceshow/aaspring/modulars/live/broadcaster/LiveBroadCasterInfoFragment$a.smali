.class Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LiveBroadCasterInfoFragment$a;
.super Lcom/guochao/faceshow/aaspring/base/http/callback/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LiveBroadCasterInfoFragment;->Q1(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/guochao/faceshow/aaspring/base/http/callback/c<",
        "Lcom/guochao/faceshow/aaspring/beans/LiveOverResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LiveBroadCasterInfoFragment;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LiveBroadCasterInfoFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LiveBroadCasterInfoFragment$a;->a:Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LiveBroadCasterInfoFragment;

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/base/http/callback/c;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lg7/a;)V
    .locals 0
    .param p1    # Lg7/a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lg7/a<",
            "Lcom/guochao/faceshow/aaspring/beans/LiveOverResult;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public onResponse(Lcom/guochao/faceshow/aaspring/beans/LiveOverResult;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V
    .locals 6
    .param p1    # Lcom/guochao/faceshow/aaspring/beans/LiveOverResult;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/guochao/faceshow/aaspring/beans/LiveOverResult;",
            "Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse<",
            "Lcom/guochao/faceshow/aaspring/beans/LiveOverResult;",
            ">;)V"
        }
    .end annotation

    .line 2
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LiveBroadCasterInfoFragment$a;->a:Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LiveBroadCasterInfoFragment;

    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    instance-of p2, p2, Lcom/guochao/faceshow/aaspring/modulars/live/activity/LiveBroadCastActivity;

    if-eqz p2, :cond_0

    .line 3
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LiveBroadCasterInfoFragment$a;->a:Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LiveBroadCasterInfoFragment;

    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    check-cast p2, Lcom/guochao/faceshow/aaspring/modulars/live/activity/LiveBroadCastActivity;

    invoke-virtual {p2, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/activity/LiveBroadCastActivity;->A0(Lcom/guochao/faceshow/aaspring/beans/LiveOverResult;)V

    :cond_0
    if-eqz p1, :cond_6

    .line 4
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LiveBroadCasterInfoFragment$a;->a:Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LiveBroadCasterInfoFragment;

    iget-object p2, p2, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LiveBroadCasterInfoFragment;->mTextViewFCoinAdded:Landroid/widget/TextView;

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/LiveOverResult;->getFcoin()Ljava/lang/String;

    move-result-object v2

    const-string v3, "0"

    if-nez v2, :cond_1

    move-object v2, v3

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/LiveOverResult;->getFcoin()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/guochao/faceshow/aaspring/utils/Formatter;->getFormat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_0
    const/4 v4, 0x0

    aput-object v2, v1, v4

    const-string v2, "+%s"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LiveBroadCasterInfoFragment$a;->a:Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LiveBroadCasterInfoFragment;

    iget-object p2, p2, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LiveBroadCasterInfoFragment;->mTextViewLiveTotalPeople:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/LiveOverResult;->getWatchNum()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    move-object v1, v3

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/LiveOverResult;->getWatchNum()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/guochao/faceshow/aaspring/utils/Formatter;->getFormat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_1
    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LiveBroadCasterInfoFragment$a;->a:Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LiveBroadCasterInfoFragment;

    iget-object p2, p2, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LiveBroadCasterInfoFragment;->mTextViewFansAdded:Landroid/widget/TextView;

    new-array v1, v0, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/LiveOverResult;->getFansNum()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_3

    goto :goto_2

    :cond_3
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/LiveOverResult;->getFansNum()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/guochao/faceshow/aaspring/utils/Formatter;->getFormat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :goto_2
    aput-object v3, v1, v4

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/LiveOverResult;->getLiveTime()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_4

    .line 8
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LiveBroadCasterInfoFragment$a;->a:Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LiveBroadCasterInfoFragment;

    iget-object p2, p2, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LiveBroadCasterInfoFragment;->mTextViewLiveDuration:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/LiveOverResult;->getLiveTime()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-static {v1, v2, v0}, Lcom/guochao/faceshow/utils/TimeUtil;->timeToString(JZ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 9
    :cond_4
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LiveBroadCasterInfoFragment$a;->a:Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LiveBroadCasterInfoFragment;

    iget-object p2, p2, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LiveBroadCasterInfoFragment;->mTextViewLiveCount:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/LiveOverResult;->getTimes()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_5

    const-string p1, "1"

    goto :goto_3

    :cond_5
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/LiveOverResult;->getTimes()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/utils/Formatter;->getFormat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :goto_3
    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_6
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    check-cast p1, Lcom/guochao/faceshow/aaspring/beans/LiveOverResult;

    invoke-virtual {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LiveBroadCasterInfoFragment$a;->onResponse(Lcom/guochao/faceshow/aaspring/beans/LiveOverResult;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V

    return-void
.end method
