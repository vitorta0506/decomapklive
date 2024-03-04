.class Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/PeopleCardViewHolder$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/imsdk/v2/V2TIMValueCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/PeopleCardViewHolder;->h()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/tencent/imsdk/v2/V2TIMValueCallback<",
        "Ljava/util/List<",
        "Lcom/tencent/imsdk/v2/V2TIMUserFullInfo;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/PeopleCardViewHolder;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/PeopleCardViewHolder;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/PeopleCardViewHolder$a;->a:Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/PeopleCardViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/tencent/imsdk/v2/V2TIMUserFullInfo;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3

    const/4 v0, 0x0

    .line 2
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/tencent/imsdk/v2/V2TIMUserFullInfo;

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/PeopleCardViewHolder$a;->a:Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/PeopleCardViewHolder;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/PeopleCardViewHolder;->d:Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;

    if-nez v0, :cond_0

    return-void

    .line 4
    :cond_0
    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;->getConversationInfoDetail()Lcom/guochao/faceshow/aaspring/beans/ConversationInfoDetail;

    move-result-object v0

    if-nez v0, :cond_1

    .line 5
    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/utils/ConversationUtils;->from(Lcom/tencent/imsdk/v2/V2TIMUserFullInfo;)Lcom/guochao/faceshow/aaspring/beans/ConversationInfoDetail;

    move-result-object v0

    .line 6
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/PeopleCardViewHolder$a;->a:Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/PeopleCardViewHolder;

    iget-object v1, v1, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/PeopleCardViewHolder;->d:Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;

    invoke-virtual {v1, v0}, Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;->setConversationInfoDetail(Lcom/guochao/faceshow/aaspring/beans/ConversationInfoDetail;)V

    .line 7
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/PeopleCardViewHolder$a;->a:Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/PeopleCardViewHolder;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/PeopleCardViewHolder;->f()V

    .line 8
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/PeopleCardViewHolder$a;->a:Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/PeopleCardViewHolder;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/PeopleCardViewHolder;->c(Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/PeopleCardViewHolder;)V

    .line 9
    :cond_1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/PeopleCardViewHolder$a;->a:Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/PeopleCardViewHolder;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/PeopleCardViewHolder;->b:Landroid/view/View;

    const v1, 0x7f0a0a8d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 10
    invoke-virtual {p1}, Lcom/tencent/imsdk/v2/V2TIMUserFullInfo;->getSelfSignature()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    const p1, 0x7f1209bc

    .line 11
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 12
    :cond_2
    invoke-virtual {p1}, Lcom/tencent/imsdk/v2/V2TIMUserFullInfo;->getSelfSignature()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public onError(ILjava/lang/String;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/PeopleCardViewHolder$a;->a(Ljava/util/List;)V

    return-void
.end method
