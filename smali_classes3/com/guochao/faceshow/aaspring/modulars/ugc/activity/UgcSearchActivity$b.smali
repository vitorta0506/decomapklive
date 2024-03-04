.class Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/UgcSearchActivity$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/UgcSearchActivity;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/UgcSearchActivity;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/UgcSearchActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/UgcSearchActivity$b;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/UgcSearchActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 1

    .line 1
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result p1

    if-lez p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/UgcSearchActivity$b;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/UgcSearchActivity;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/UgcSearchActivity;->deleteDdit:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/UgcSearchActivity$b;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/UgcSearchActivity;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/UgcSearchActivity;->deleteDdit:Landroid/widget/ImageView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/UgcSearchActivity$b;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/UgcSearchActivity;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/UgcSearchActivity;->l0(Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/UgcSearchActivity;)I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    .line 2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/UgcSearchActivity$b;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/UgcSearchActivity;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/UgcSearchActivity;->m0(Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/UgcSearchActivity;I)I

    return-void

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/UgcSearchActivity$b;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/UgcSearchActivity;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/utils/FileUtils;->isNetworkConnected(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 4
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/UgcSearchActivity$b;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/UgcSearchActivity;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/UgcSearchActivity;->n0(Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/UgcSearchActivity;)J

    move-result-wide p1

    const-wide/16 p3, 0x0

    cmp-long v0, p1, p3

    if-nez v0, :cond_1

    .line 5
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/UgcSearchActivity$b;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/UgcSearchActivity;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p2

    invoke-static {p1, p2, p3}, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/UgcSearchActivity;->o0(Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/UgcSearchActivity;J)J

    .line 6
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    .line 7
    iget-object p3, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/UgcSearchActivity$b;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/UgcSearchActivity;

    invoke-static {p3}, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/UgcSearchActivity;->n0(Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/UgcSearchActivity;)J

    move-result-wide p3

    sub-long/2addr p1, p3

    const-wide/16 p3, 0x2bc

    cmp-long v0, p1, p3

    if-gtz v0, :cond_2

    .line 8
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/UgcSearchActivity$b;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/UgcSearchActivity;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/UgcSearchActivity;->q0(Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/UgcSearchActivity;)Landroid/os/Handler;

    move-result-object p1

    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/UgcSearchActivity$b;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/UgcSearchActivity;

    invoke-static {p2}, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/UgcSearchActivity;->p0(Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/UgcSearchActivity;)Ljava/lang/Runnable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 9
    :cond_2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/UgcSearchActivity$b;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/UgcSearchActivity;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {p1, v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/UgcSearchActivity;->o0(Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/UgcSearchActivity;J)J

    .line 10
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/UgcSearchActivity$b;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/UgcSearchActivity;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/UgcSearchActivity;->q0(Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/UgcSearchActivity;)Landroid/os/Handler;

    move-result-object p1

    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/UgcSearchActivity$b;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/UgcSearchActivity;

    invoke-static {p2}, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/UgcSearchActivity;->p0(Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/UgcSearchActivity;)Ljava/lang/Runnable;

    move-result-object p2

    invoke-virtual {p1, p2, p3, p4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_3
    return-void
.end method
