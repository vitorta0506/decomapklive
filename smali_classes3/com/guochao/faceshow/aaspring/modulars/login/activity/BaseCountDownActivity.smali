.class public abstract Lcom/guochao/faceshow/aaspring/modulars/login/activity/BaseCountDownActivity;
.super Lcom/guochao/faceshow/aaspring/modulars/login/activity/BaseLoginActivity;
.source "SourceFile"

# interfaces
.implements Lcom/guochao/faceshow/aaspring/modulars/login/utils/q$b;


# instance fields
.field i:Lcom/guochao/faceshow/aaspring/modulars/login/utils/q;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/login/activity/BaseLoginActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract m0()I
.end method

.method protected abstract n0(Z)V
.end method

.method public o0()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/BaseCountDownActivity;->i:Lcom/guochao/faceshow/aaspring/modulars/login/utils/q;

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/login/activity/BaseCountDownActivity;->m0()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/login/utils/q;->g(I)V

    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, v0}, Lcom/guochao/faceshow/aaspring/modulars/login/activity/BaseCountDownActivity;->n0(Z)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/login/activity/BaseLoginActivity;->onCreate(Landroid/os/Bundle;)V

    .line 2
    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/login/utils/q;->d()Lcom/guochao/faceshow/aaspring/modulars/login/utils/q;

    move-result-object p1

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/BaseCountDownActivity;->i:Lcom/guochao/faceshow/aaspring/modulars/login/utils/q;

    .line 3
    invoke-virtual {p1, p0}, Lcom/guochao/faceshow/aaspring/modulars/login/utils/q;->setOnCountDownListener(Lcom/guochao/faceshow/aaspring/modulars/login/utils/q$b;)V

    .line 4
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/BaseCountDownActivity;->i:Lcom/guochao/faceshow/aaspring/modulars/login/utils/q;

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/login/activity/BaseCountDownActivity;->m0()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/modulars/login/utils/q;->f(I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 5
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/BaseCountDownActivity;->i:Lcom/guochao/faceshow/aaspring/modulars/login/utils/q;

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/login/activity/BaseCountDownActivity;->m0()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/modulars/login/utils/q;->g(I)V

    .line 6
    :cond_0
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/BaseCountDownActivity;->i:Lcom/guochao/faceshow/aaspring/modulars/login/utils/q;

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/login/activity/BaseCountDownActivity;->m0()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/modulars/login/utils/q;->f(I)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/login/activity/BaseCountDownActivity;->n0(Z)V

    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/guochao/faceshow/aaspring/modulars/login/activity/BaseLoginActivity;->onDestroy()V

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/BaseCountDownActivity;->i:Lcom/guochao/faceshow/aaspring/modulars/login/utils/q;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/login/utils/q;->setOnCountDownListener(Lcom/guochao/faceshow/aaspring/modulars/login/utils/q$b;)V

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/BaseCountDownActivity;->i:Lcom/guochao/faceshow/aaspring/modulars/login/utils/q;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/login/utils/q;->h()V

    return-void
.end method

.method public onFinish()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/guochao/faceshow/aaspring/modulars/login/activity/BaseCountDownActivity;->n0(Z)V

    return-void
.end method
