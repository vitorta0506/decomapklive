.class Lcom/guochao/faceshow/aaspring/modulars/dressmarket/send/DressUpSendActivity$d$a$a;
.super Lcom/guochao/faceshow/aaspring/base/http/callback/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/dressmarket/send/DressUpSendActivity$d$a;->onClick(Landroid/app/Dialog;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/guochao/faceshow/aaspring/base/http/callback/c<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/modulars/dressmarket/send/DressUpSendActivity$d$a;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/dressmarket/send/DressUpSendActivity$d$a;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/send/DressUpSendActivity$d$a$a;->a:Lcom/guochao/faceshow/aaspring/modulars/dressmarket/send/DressUpSendActivity$d$a;

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/base/http/callback/c;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Integer;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V
    .locals 5
    .param p1    # Ljava/lang/Integer;
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
            "Ljava/lang/Integer;",
            "Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance p1, Lcom/guochao/faceshow/aaspring/beans/ChatStatusBean;

    invoke-direct {p1}, Lcom/guochao/faceshow/aaspring/beans/ChatStatusBean;-><init>()V

    const/4 p2, 0x1

    .line 2
    invoke-virtual {p1, p2}, Lcom/guochao/faceshow/aaspring/beans/ChatStatusBean;->setChat_switch(I)V

    .line 3
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/send/DressUpSendActivity$d$a$a;->a:Lcom/guochao/faceshow/aaspring/modulars/dressmarket/send/DressUpSendActivity$d$a;

    iget-object p2, p2, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/send/DressUpSendActivity$d$a;->a:Lcom/guochao/faceshow/aaspring/modulars/dressmarket/send/DressUpSendActivity$d;

    iget-object p2, p2, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/send/DressUpSendActivity$d;->b:Lcom/guochao/faceshow/aaspring/modulars/dressmarket/send/DressUpSendActivity;

    invoke-static {p2}, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/send/DressUpSendActivity;->n0(Lcom/guochao/faceshow/aaspring/modulars/dressmarket/send/DressUpSendActivity;)Lcom/guochao/faceshow/aaspring/modulars/dressmarket/bean/DressResponse$DressBean;

    move-result-object p2

    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/bean/DressResponse$DressBean;->getType()I

    move-result p2

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/send/DressUpSendActivity$d$a$a;->a:Lcom/guochao/faceshow/aaspring/modulars/dressmarket/send/DressUpSendActivity$d$a;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/send/DressUpSendActivity$d$a;->a:Lcom/guochao/faceshow/aaspring/modulars/dressmarket/send/DressUpSendActivity$d;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/send/DressUpSendActivity$d;->b:Lcom/guochao/faceshow/aaspring/modulars/dressmarket/send/DressUpSendActivity;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/send/DressUpSendActivity;->n0(Lcom/guochao/faceshow/aaspring/modulars/dressmarket/send/DressUpSendActivity;)Lcom/guochao/faceshow/aaspring/modulars/dressmarket/bean/DressResponse$DressBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/bean/DressResponse$DressBean;->getMallId()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/send/DressUpSendActivity$d$a$a;->a:Lcom/guochao/faceshow/aaspring/modulars/dressmarket/send/DressUpSendActivity$d$a;

    iget-object v1, v1, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/send/DressUpSendActivity$d$a;->a:Lcom/guochao/faceshow/aaspring/modulars/dressmarket/send/DressUpSendActivity$d;

    iget-object v1, v1, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/send/DressUpSendActivity$d;->b:Lcom/guochao/faceshow/aaspring/modulars/dressmarket/send/DressUpSendActivity;

    invoke-static {v1}, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/send/DressUpSendActivity;->n0(Lcom/guochao/faceshow/aaspring/modulars/dressmarket/send/DressUpSendActivity;)Lcom/guochao/faceshow/aaspring/modulars/dressmarket/bean/DressResponse$DressBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/bean/DressResponse$DressBean;->getThumbnailImage()Ljava/lang/String;

    move-result-object v1

    .line 4
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/send/DressUpSendActivity$d$a$a;->a:Lcom/guochao/faceshow/aaspring/modulars/dressmarket/send/DressUpSendActivity$d$a;

    iget-object v2, v2, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/send/DressUpSendActivity$d$a;->a:Lcom/guochao/faceshow/aaspring/modulars/dressmarket/send/DressUpSendActivity$d;

    iget-object v2, v2, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/send/DressUpSendActivity$d;->b:Lcom/guochao/faceshow/aaspring/modulars/dressmarket/send/DressUpSendActivity;

    invoke-static {v2}, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/send/DressUpSendActivity;->n0(Lcom/guochao/faceshow/aaspring/modulars/dressmarket/send/DressUpSendActivity;)Lcom/guochao/faceshow/aaspring/modulars/dressmarket/bean/DressResponse$DressBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/bean/DressResponse$DressBean;->getArThumbnailImage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/send/DressUpSendActivity$d$a$a;->a:Lcom/guochao/faceshow/aaspring/modulars/dressmarket/send/DressUpSendActivity$d$a;

    iget-object v2, v2, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/send/DressUpSendActivity$d$a;->a:Lcom/guochao/faceshow/aaspring/modulars/dressmarket/send/DressUpSendActivity$d;

    iget-object v2, v2, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/send/DressUpSendActivity$d;->b:Lcom/guochao/faceshow/aaspring/modulars/dressmarket/send/DressUpSendActivity;

    invoke-static {v2}, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/send/DressUpSendActivity;->n0(Lcom/guochao/faceshow/aaspring/modulars/dressmarket/send/DressUpSendActivity;)Lcom/guochao/faceshow/aaspring/modulars/dressmarket/bean/DressResponse$DressBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/bean/DressResponse$DressBean;->getThumbnailImage()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/send/DressUpSendActivity$d$a$a;->a:Lcom/guochao/faceshow/aaspring/modulars/dressmarket/send/DressUpSendActivity$d$a;

    iget-object v2, v2, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/send/DressUpSendActivity$d$a;->a:Lcom/guochao/faceshow/aaspring/modulars/dressmarket/send/DressUpSendActivity$d;

    iget-object v2, v2, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/send/DressUpSendActivity$d;->b:Lcom/guochao/faceshow/aaspring/modulars/dressmarket/send/DressUpSendActivity;

    invoke-static {v2}, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/send/DressUpSendActivity;->n0(Lcom/guochao/faceshow/aaspring/modulars/dressmarket/send/DressUpSendActivity;)Lcom/guochao/faceshow/aaspring/modulars/dressmarket/bean/DressResponse$DressBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/bean/DressResponse$DressBean;->getArThumbnailImage()Ljava/lang/String;

    move-result-object v2

    .line 5
    :goto_0
    invoke-static {p2, v0, v1, v2}, Lcom/guochao/faceshow/aaspring/modulars/chat/models/DressPresentMessage;->from(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/modulars/chat/models/DressPresentMessage;

    move-result-object p2

    .line 6
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/send/DressUpSendActivity$d$a$a;->a:Lcom/guochao/faceshow/aaspring/modulars/dressmarket/send/DressUpSendActivity$d$a;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/send/DressUpSendActivity$d$a;->a:Lcom/guochao/faceshow/aaspring/modulars/dressmarket/send/DressUpSendActivity$d;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/send/DressUpSendActivity$d;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 7
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;->getMessage()Lcom/tencent/imsdk/v2/V2TIMMessage;

    move-result-object v3

    invoke-static {}, Lo9/b;->d()Lo9/a;

    move-result-object v4

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, p1, v1, p2}, Lo9/a;->a(Lcom/guochao/faceshow/aaspring/beans/ChatStatusBean;Ljava/lang/String;Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;)Lcom/tencent/imsdk/v2/V2TIMOfflinePushInfo;

    move-result-object v1

    const/4 v4, 0x0

    invoke-static {v2, v3, v1, v4}, Lcom/guochao/faceshow/aaspring/utils/SendMessageHandle;->sendC2CMessage(Ljava/lang/String;Lcom/tencent/imsdk/v2/V2TIMMessage;Lcom/tencent/imsdk/v2/V2TIMOfflinePushInfo;Lcom/tencent/imsdk/v2/V2TIMSendCallback;)V

    goto :goto_1

    .line 8
    :cond_1
    invoke-static {}, Lp9/a;->g()Lp9/a;

    move-result-object p1

    invoke-static {}, Lp9/a;->g()Lp9/a;

    move-result-object p2

    invoke-virtual {p2}, Lp9/a;->f()I

    move-result p2

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/send/DressUpSendActivity$d$a$a;->a:Lcom/guochao/faceshow/aaspring/modulars/dressmarket/send/DressUpSendActivity$d$a;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/send/DressUpSendActivity$d$a;->a:Lcom/guochao/faceshow/aaspring/modulars/dressmarket/send/DressUpSendActivity$d;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/send/DressUpSendActivity$d;->b:Lcom/guochao/faceshow/aaspring/modulars/dressmarket/send/DressUpSendActivity;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/send/DressUpSendActivity;->g0(Lcom/guochao/faceshow/aaspring/modulars/dressmarket/send/DressUpSendActivity;)Lcom/guochao/faceshow/aaspring/modulars/dressmarket/bean/DressSpecBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/bean/DressSpecBean;->getLastPrice()I

    move-result v0

    sub-int/2addr p2, v0

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Lp9/a;->C(IZ)V

    .line 9
    new-instance p1, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/marquee/FloatMarqueeFragment$d;

    invoke-direct {p1}, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/marquee/FloatMarqueeFragment$d;-><init>()V

    .line 10
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/send/DressUpSendActivity$d$a$a;->a:Lcom/guochao/faceshow/aaspring/modulars/dressmarket/send/DressUpSendActivity$d$a;

    iget-object p2, p2, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/send/DressUpSendActivity$d$a;->a:Lcom/guochao/faceshow/aaspring/modulars/dressmarket/send/DressUpSendActivity$d;

    iget-object p2, p2, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/send/DressUpSendActivity$d;->b:Lcom/guochao/faceshow/aaspring/modulars/dressmarket/send/DressUpSendActivity;

    invoke-static {p2}, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/send/DressUpSendActivity;->n0(Lcom/guochao/faceshow/aaspring/modulars/dressmarket/send/DressUpSendActivity;)Lcom/guochao/faceshow/aaspring/modulars/dressmarket/bean/DressResponse$DressBean;

    move-result-object p2

    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/bean/DressResponse$DressBean;->getName()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/marquee/FloatMarqueeFragment$d;->a:Ljava/lang/String;

    .line 11
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/send/DressUpSendActivity$d$a$a;->a:Lcom/guochao/faceshow/aaspring/modulars/dressmarket/send/DressUpSendActivity$d$a;

    iget-object p2, p2, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/send/DressUpSendActivity$d$a;->a:Lcom/guochao/faceshow/aaspring/modulars/dressmarket/send/DressUpSendActivity$d;

    iget-object p2, p2, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/send/DressUpSendActivity$d;->b:Lcom/guochao/faceshow/aaspring/modulars/dressmarket/send/DressUpSendActivity;

    invoke-static {p2}, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/send/DressUpSendActivity;->n0(Lcom/guochao/faceshow/aaspring/modulars/dressmarket/send/DressUpSendActivity;)Lcom/guochao/faceshow/aaspring/modulars/dressmarket/bean/DressResponse$DressBean;

    move-result-object p2

    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/bean/DressResponse$DressBean;->getType()I

    move-result p2

    iput p2, p1, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/marquee/FloatMarqueeFragment$d;->b:I

    .line 12
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p2

    invoke-virtual {p2, p1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 13
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/send/DressUpSendActivity$d$a$a;->a:Lcom/guochao/faceshow/aaspring/modulars/dressmarket/send/DressUpSendActivity$d$a;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/send/DressUpSendActivity$d$a;->a:Lcom/guochao/faceshow/aaspring/modulars/dressmarket/send/DressUpSendActivity$d;

    iget-object p2, p1, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/send/DressUpSendActivity$d;->b:Lcom/guochao/faceshow/aaspring/modulars/dressmarket/send/DressUpSendActivity;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/send/DressUpSendActivity$d;->a:Ljava/util/ArrayList;

    invoke-static {p2, p1}, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/send/DressUpSendActivity;->o0(Lcom/guochao/faceshow/aaspring/modulars/dressmarket/send/DressUpSendActivity;Ljava/util/ArrayList;)V

    return-void
.end method

.method public onCompleted()V
    .locals 3

    .line 1
    invoke-super {p0}, Lcom/guochao/faceshow/aaspring/base/http/callback/c;->onCompleted()V

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/send/DressUpSendActivity$d$a$a;->a:Lcom/guochao/faceshow/aaspring/modulars/dressmarket/send/DressUpSendActivity$d$a;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/send/DressUpSendActivity$d$a;->a:Lcom/guochao/faceshow/aaspring/modulars/dressmarket/send/DressUpSendActivity$d;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/send/DressUpSendActivity$d;->b:Lcom/guochao/faceshow/aaspring/modulars/dressmarket/send/DressUpSendActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/send/DressUpSendActivity;->k0(Lcom/guochao/faceshow/aaspring/modulars/dressmarket/send/DressUpSendActivity;Z)Z

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/send/DressUpSendActivity$d$a$a;->a:Lcom/guochao/faceshow/aaspring/modulars/dressmarket/send/DressUpSendActivity$d$a;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/send/DressUpSendActivity$d$a;->a:Lcom/guochao/faceshow/aaspring/modulars/dressmarket/send/DressUpSendActivity$d;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/send/DressUpSendActivity$d;->b:Lcom/guochao/faceshow/aaspring/modulars/dressmarket/send/DressUpSendActivity;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/send/DressUpSendActivity;->l0(Lcom/guochao/faceshow/aaspring/modulars/dressmarket/send/DressUpSendActivity;)Landroid/widget/ImageView;

    move-result-object v0

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 4
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/send/DressUpSendActivity$d$a$a;->a:Lcom/guochao/faceshow/aaspring/modulars/dressmarket/send/DressUpSendActivity$d$a;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/send/DressUpSendActivity$d$a;->a:Lcom/guochao/faceshow/aaspring/modulars/dressmarket/send/DressUpSendActivity$d;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/send/DressUpSendActivity$d;->b:Lcom/guochao/faceshow/aaspring/modulars/dressmarket/send/DressUpSendActivity;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/send/DressUpSendActivity;->m0(Lcom/guochao/faceshow/aaspring/modulars/dressmarket/send/DressUpSendActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public onFailure(Lg7/a;)V
    .locals 1
    .param p1    # Lg7/a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lg7/a<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lg7/a;->a()I

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lg7/a;->d()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lg7/a;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lg7/a;->d()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/send/DressUpSendActivity$d$a$a;->a:Lcom/guochao/faceshow/aaspring/modulars/dressmarket/send/DressUpSendActivity$d$a;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/send/DressUpSendActivity$d$a;->a:Lcom/guochao/faceshow/aaspring/modulars/dressmarket/send/DressUpSendActivity$d;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/send/DressUpSendActivity$d;->b:Lcom/guochao/faceshow/aaspring/modulars/dressmarket/send/DressUpSendActivity;

    const v0, 0x7f1202e4

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;->showToast(I)V

    :cond_1
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

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/send/DressUpSendActivity$d$a$a;->a(Ljava/lang/Integer;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V

    return-void
.end method
