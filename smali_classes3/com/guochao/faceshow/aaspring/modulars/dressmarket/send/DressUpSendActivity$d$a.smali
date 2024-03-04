.class Lcom/guochao/faceshow/aaspring/modulars/dressmarket/send/DressUpSendActivity$d$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/guochao/faceshow/views/e$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/dressmarket/send/DressUpSendActivity$d;->onResponse()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/modulars/dressmarket/send/DressUpSendActivity$d;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/dressmarket/send/DressUpSendActivity$d;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/send/DressUpSendActivity$d$a;->a:Lcom/guochao/faceshow/aaspring/modulars/dressmarket/send/DressUpSendActivity$d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/app/Dialog;Z)V
    .locals 2

    if-eqz p2, :cond_0

    .line 1
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/send/DressUpSendActivity$d$a;->a:Lcom/guochao/faceshow/aaspring/modulars/dressmarket/send/DressUpSendActivity$d;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/send/DressUpSendActivity$d;->b:Lcom/guochao/faceshow/aaspring/modulars/dressmarket/send/DressUpSendActivity;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/send/DressUpSendActivity;->k0(Lcom/guochao/faceshow/aaspring/modulars/dressmarket/send/DressUpSendActivity;Z)Z

    .line 3
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/send/DressUpSendActivity$d$a;->a:Lcom/guochao/faceshow/aaspring/modulars/dressmarket/send/DressUpSendActivity$d;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/send/DressUpSendActivity$d;->b:Lcom/guochao/faceshow/aaspring/modulars/dressmarket/send/DressUpSendActivity;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/send/DressUpSendActivity;->l0(Lcom/guochao/faceshow/aaspring/modulars/dressmarket/send/DressUpSendActivity;)Landroid/widget/ImageView;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 4
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/send/DressUpSendActivity$d$a;->a:Lcom/guochao/faceshow/aaspring/modulars/dressmarket/send/DressUpSendActivity$d;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/send/DressUpSendActivity$d;->b:Lcom/guochao/faceshow/aaspring/modulars/dressmarket/send/DressUpSendActivity;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/send/DressUpSendActivity;->l0(Lcom/guochao/faceshow/aaspring/modulars/dressmarket/send/DressUpSendActivity;)Landroid/widget/ImageView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/AnimationDrawable;

    .line 5
    invoke-virtual {p1}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 6
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/send/DressUpSendActivity$d$a;->a:Lcom/guochao/faceshow/aaspring/modulars/dressmarket/send/DressUpSendActivity$d;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/send/DressUpSendActivity$d;->b:Lcom/guochao/faceshow/aaspring/modulars/dressmarket/send/DressUpSendActivity;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/send/DressUpSendActivity;->m0(Lcom/guochao/faceshow/aaspring/modulars/dressmarket/send/DressUpSendActivity;)Landroid/view/View;

    move-result-object p1

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 7
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/send/DressUpSendActivity$d$a;->a:Lcom/guochao/faceshow/aaspring/modulars/dressmarket/send/DressUpSendActivity$d;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/send/DressUpSendActivity$d;->b:Lcom/guochao/faceshow/aaspring/modulars/dressmarket/send/DressUpSendActivity;

    const-string p2, "tokens/mall/giveGood"

    invoke-virtual {p1, p2}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->post(Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    move-result-object p1

    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/send/DressUpSendActivity$d$a;->a:Lcom/guochao/faceshow/aaspring/modulars/dressmarket/send/DressUpSendActivity$d;

    iget-object p2, p2, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/send/DressUpSendActivity$d;->b:Lcom/guochao/faceshow/aaspring/modulars/dressmarket/send/DressUpSendActivity;

    invoke-static {p2}, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/send/DressUpSendActivity;->n0(Lcom/guochao/faceshow/aaspring/modulars/dressmarket/send/DressUpSendActivity;)Lcom/guochao/faceshow/aaspring/modulars/dressmarket/bean/DressResponse$DressBean;

    move-result-object p2

    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/bean/DressResponse$DressBean;->getMallId()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    const-string v0, "goodId"

    invoke-virtual {p1, v0, p2}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->y(Ljava/lang/String;Ljava/lang/Object;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/send/DressUpSendActivity$d$a;->a:Lcom/guochao/faceshow/aaspring/modulars/dressmarket/send/DressUpSendActivity$d;

    iget-object p2, p2, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/send/DressUpSendActivity$d;->b:Lcom/guochao/faceshow/aaspring/modulars/dressmarket/send/DressUpSendActivity;

    invoke-static {p2}, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/send/DressUpSendActivity;->g0(Lcom/guochao/faceshow/aaspring/modulars/dressmarket/send/DressUpSendActivity;)Lcom/guochao/faceshow/aaspring/modulars/dressmarket/bean/DressSpecBean;

    move-result-object p2

    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/bean/DressSpecBean;->getRuleId()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    const-string v0, "ruleId"

    invoke-virtual {p1, v0, p2}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->y(Ljava/lang/String;Ljava/lang/Object;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/send/DressUpSendActivity$d$a;->a:Lcom/guochao/faceshow/aaspring/modulars/dressmarket/send/DressUpSendActivity$d;

    iget-object p2, p2, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/send/DressUpSendActivity$d;->a:Ljava/util/ArrayList;

    const-string v0, "acceptId"

    .line 8
    invoke-virtual {p1, v0, p2}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->y(Ljava/lang/String;Ljava/lang/Object;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    new-instance p2, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/send/DressUpSendActivity$d$a$a;

    invoke-direct {p2, p0}, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/send/DressUpSendActivity$d$a$a;-><init>(Lcom/guochao/faceshow/aaspring/modulars/dressmarket/send/DressUpSendActivity$d$a;)V

    .line 9
    invoke-virtual {p1, p2}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->M(Lcom/guochao/faceshow/aaspring/base/http/callback/c;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    :cond_0
    return-void
.end method

.method public synthetic onCreate(Lcom/guochao/faceshow/views/e;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/guochao/faceshow/views/d;->a(Lcom/guochao/faceshow/views/e$a;Lcom/guochao/faceshow/views/e;)V

    return-void
.end method
