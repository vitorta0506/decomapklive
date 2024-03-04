.class Lcom/guochao/faceshow/aaspring/modulars/share/fragment/ShareFragment$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/guochao/faceshow/utils/TailWaterMark$WaterMarkProcessListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/share/fragment/ShareFragment;->l2(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/modulars/share/fragment/ShareFragment;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/share/fragment/ShareFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/share/fragment/ShareFragment$a;->a:Lcom/guochao/faceshow/aaspring/modulars/share/fragment/ShareFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onNetWorkError()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/share/fragment/ShareFragment$a;->a:Lcom/guochao/faceshow/aaspring/modulars/share/fragment/ShareFragment;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/share/fragment/ShareFragment;->U1(Lcom/guochao/faceshow/aaspring/modulars/share/fragment/ShareFragment;)Lcom/guochao/faceshow/views/m;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/share/fragment/ShareFragment$a;->a:Lcom/guochao/faceshow/aaspring/modulars/share/fragment/ShareFragment;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/share/fragment/ShareFragment;->U1(Lcom/guochao/faceshow/aaspring/modulars/share/fragment/ShareFragment;)Lcom/guochao/faceshow/views/m;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/views/m;->c()V

    :cond_0
    return-void
.end method

.method public onWaterMarkFinish(Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_5

    .line 2
    sget-object p2, Lcom/guochao/faceshow/aaspring/beans/SharePlatformBean$WhatsApp;->NAME:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 3
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/share/fragment/ShareFragment$a;->a:Lcom/guochao/faceshow/aaspring/modulars/share/fragment/ShareFragment;

    invoke-static {p2}, Lcom/guochao/faceshow/aaspring/modulars/share/fragment/ShareFragment;->S1(Lcom/guochao/faceshow/aaspring/modulars/share/fragment/ShareFragment;)Lcom/guochao/faceshow/aaspring/beans/ShareContentBean;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Download BuzzCast to meet amazing people\uff01"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/share/fragment/ShareFragment$a;->a:Lcom/guochao/faceshow/aaspring/modulars/share/fragment/ShareFragment;

    invoke-static {v1}, Lcom/guochao/faceshow/aaspring/modulars/share/fragment/ShareFragment;->R1(Lcom/guochao/faceshow/aaspring/modulars/share/fragment/ShareFragment;)Lcom/guochao/faceshow/aaspring/beans/VideoItem;

    move-result-object v1

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/beans/VideoItem;->getShortUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/guochao/faceshow/aaspring/beans/ShareContentBean;->setContent(Ljava/lang/String;)V

    .line 4
    :cond_0
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/share/fragment/ShareFragment$a;->a:Lcom/guochao/faceshow/aaspring/modulars/share/fragment/ShareFragment;

    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 5
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/share/fragment/ShareFragment$a;->a:Lcom/guochao/faceshow/aaspring/modulars/share/fragment/ShareFragment;

    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/share/fragment/ShareFragment$a;->a:Lcom/guochao/faceshow/aaspring/modulars/share/fragment/ShareFragment;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/share/fragment/ShareFragment;->S1(Lcom/guochao/faceshow/aaspring/modulars/share/fragment/ShareFragment;)Lcom/guochao/faceshow/aaspring/beans/ShareContentBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/beans/ShareContentBean;->getContent()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/share/fragment/ShareFragment$a;->a:Lcom/guochao/faceshow/aaspring/modulars/share/fragment/ShareFragment;

    invoke-static {v1}, Lcom/guochao/faceshow/aaspring/modulars/share/fragment/ShareFragment;->T1(Lcom/guochao/faceshow/aaspring/modulars/share/fragment/ShareFragment;)Lu9/a;

    move-result-object v1

    invoke-static {p2, p1, v0, p3, v1}, Lv9/c;->f(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lu9/a;)V

    .line 6
    :cond_1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/share/fragment/ShareFragment$a;->a:Lcom/guochao/faceshow/aaspring/modulars/share/fragment/ShareFragment;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/share/fragment/ShareFragment;->U1(Lcom/guochao/faceshow/aaspring/modulars/share/fragment/ShareFragment;)Lcom/guochao/faceshow/views/m;

    move-result-object p1

    const p2, 0x7f1207b6

    if-eqz p1, :cond_3

    .line 7
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/share/fragment/ShareFragment$a;->a:Lcom/guochao/faceshow/aaspring/modulars/share/fragment/ShareFragment;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/share/fragment/ShareFragment;->W1(Lcom/guochao/faceshow/aaspring/modulars/share/fragment/ShareFragment;)I

    move-result p1

    const/4 p3, -0x1

    if-ne p1, p3, :cond_2

    .line 8
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/share/fragment/ShareFragment$a;->a:Lcom/guochao/faceshow/aaspring/modulars/share/fragment/ShareFragment;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/share/fragment/ShareFragment;->U1(Lcom/guochao/faceshow/aaspring/modulars/share/fragment/ShareFragment;)Lcom/guochao/faceshow/views/m;

    move-result-object p1

    invoke-virtual {p1}, Lcom/guochao/faceshow/views/m;->d()V

    goto :goto_0

    .line 9
    :cond_2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/share/fragment/ShareFragment$a;->a:Lcom/guochao/faceshow/aaspring/modulars/share/fragment/ShareFragment;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/share/fragment/ShareFragment;->U1(Lcom/guochao/faceshow/aaspring/modulars/share/fragment/ShareFragment;)Lcom/guochao/faceshow/views/m;

    move-result-object p1

    const/16 p3, 0x64

    invoke-virtual {p1, p3}, Lcom/guochao/faceshow/views/m;->i(I)V

    .line 10
    :goto_0
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/share/fragment/ShareFragment$a;->a:Lcom/guochao/faceshow/aaspring/modulars/share/fragment/ShareFragment;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/share/fragment/ShareFragment;->U1(Lcom/guochao/faceshow/aaspring/modulars/share/fragment/ShareFragment;)Lcom/guochao/faceshow/views/m;

    move-result-object p1

    iget-object p3, p0, Lcom/guochao/faceshow/aaspring/modulars/share/fragment/ShareFragment$a;->a:Lcom/guochao/faceshow/aaspring/modulars/share/fragment/ShareFragment;

    invoke-virtual {p3}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    invoke-virtual {p3, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Lcom/guochao/faceshow/views/m;->k(Ljava/lang/String;)V

    .line 11
    :cond_3
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/share/fragment/ShareFragment$a;->a:Lcom/guochao/faceshow/aaspring/modulars/share/fragment/ShareFragment;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/share/fragment/ShareFragment;->U1(Lcom/guochao/faceshow/aaspring/modulars/share/fragment/ShareFragment;)Lcom/guochao/faceshow/views/m;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 12
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/share/fragment/ShareFragment$a;->a:Lcom/guochao/faceshow/aaspring/modulars/share/fragment/ShareFragment;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/share/fragment/ShareFragment;->U1(Lcom/guochao/faceshow/aaspring/modulars/share/fragment/ShareFragment;)Lcom/guochao/faceshow/views/m;

    move-result-object p1

    invoke-virtual {p1}, Lcom/guochao/faceshow/views/m;->c()V

    .line 13
    :cond_4
    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object p1

    iget-object p3, p0, Lcom/guochao/faceshow/aaspring/modulars/share/fragment/ShareFragment$a;->a:Lcom/guochao/faceshow/aaspring/modulars/share/fragment/ShareFragment;

    invoke-virtual {p3}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    invoke-virtual {p3, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/guochao/faceshow/aaspring/utils/ToastUtils;->showToast(Landroid/content/Context;Ljava/lang/CharSequence;)Landroid/widget/Toast;

    goto :goto_1

    .line 14
    :cond_5
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/share/fragment/ShareFragment$a;->a:Lcom/guochao/faceshow/aaspring/modulars/share/fragment/ShareFragment;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/share/fragment/ShareFragment;->U1(Lcom/guochao/faceshow/aaspring/modulars/share/fragment/ShareFragment;)Lcom/guochao/faceshow/views/m;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 15
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/share/fragment/ShareFragment$a;->a:Lcom/guochao/faceshow/aaspring/modulars/share/fragment/ShareFragment;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/share/fragment/ShareFragment;->U1(Lcom/guochao/faceshow/aaspring/modulars/share/fragment/ShareFragment;)Lcom/guochao/faceshow/views/m;

    move-result-object p1

    invoke-virtual {p1}, Lcom/guochao/faceshow/views/m;->c()V

    .line 16
    :cond_6
    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object p1

    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/share/fragment/ShareFragment$a;->a:Lcom/guochao/faceshow/aaspring/modulars/share/fragment/ShareFragment;

    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f1207b8

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/guochao/faceshow/aaspring/utils/ToastUtils;->showToast(Landroid/content/Context;Ljava/lang/CharSequence;)Landroid/widget/Toast;

    :goto_1
    return-void
.end method

.method public onWaterMarkProgress(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/share/fragment/ShareFragment$a;->a:Lcom/guochao/faceshow/aaspring/modulars/share/fragment/ShareFragment;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/share/fragment/ShareFragment;->U1(Lcom/guochao/faceshow/aaspring/modulars/share/fragment/ShareFragment;)Lcom/guochao/faceshow/views/m;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/share/fragment/ShareFragment$a;->a:Lcom/guochao/faceshow/aaspring/modulars/share/fragment/ShareFragment;

    new-instance v1, Lcom/guochao/faceshow/views/m;

    invoke-direct {v1}, Lcom/guochao/faceshow/views/m;-><init>()V

    invoke-static {v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/share/fragment/ShareFragment;->V1(Lcom/guochao/faceshow/aaspring/modulars/share/fragment/ShareFragment;Lcom/guochao/faceshow/views/m;)Lcom/guochao/faceshow/views/m;

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/share/fragment/ShareFragment$a;->a:Lcom/guochao/faceshow/aaspring/modulars/share/fragment/ShareFragment;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/share/fragment/ShareFragment;->U1(Lcom/guochao/faceshow/aaspring/modulars/share/fragment/ShareFragment;)Lcom/guochao/faceshow/views/m;

    move-result-object v0

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/share/fragment/ShareFragment$a;->a:Lcom/guochao/faceshow/aaspring/modulars/share/fragment/ShareFragment;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/views/m;->b(Landroid/content/Context;)V

    .line 4
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/share/fragment/ShareFragment$a;->a:Lcom/guochao/faceshow/aaspring/modulars/share/fragment/ShareFragment;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/share/fragment/ShareFragment;->U1(Lcom/guochao/faceshow/aaspring/modulars/share/fragment/ShareFragment;)Lcom/guochao/faceshow/views/m;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/views/m;->g(Z)V

    .line 5
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/share/fragment/ShareFragment$a;->a:Lcom/guochao/faceshow/aaspring/modulars/share/fragment/ShareFragment;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/share/fragment/ShareFragment;->U1(Lcom/guochao/faceshow/aaspring/modulars/share/fragment/ShareFragment;)Lcom/guochao/faceshow/views/m;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/views/m;->h(Z)V

    .line 6
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/share/fragment/ShareFragment$a;->a:Lcom/guochao/faceshow/aaspring/modulars/share/fragment/ShareFragment;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/share/fragment/ShareFragment;->U1(Lcom/guochao/faceshow/aaspring/modulars/share/fragment/ShareFragment;)Lcom/guochao/faceshow/views/m;

    move-result-object v0

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/share/fragment/ShareFragment$a;->a:Lcom/guochao/faceshow/aaspring/modulars/share/fragment/ShareFragment;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1209d9

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/views/m;->j(Ljava/lang/String;)V

    .line 7
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/share/fragment/ShareFragment$a;->a:Lcom/guochao/faceshow/aaspring/modulars/share/fragment/ShareFragment;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/share/fragment/ShareFragment;->U1(Lcom/guochao/faceshow/aaspring/modulars/share/fragment/ShareFragment;)Lcom/guochao/faceshow/views/m;

    move-result-object v0

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/share/fragment/ShareFragment$a;->a:Lcom/guochao/faceshow/aaspring/modulars/share/fragment/ShareFragment;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1208a3

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/guochao/faceshow/aaspring/modulars/share/fragment/ShareFragment$a$a;

    invoke-direct {v2, p0}, Lcom/guochao/faceshow/aaspring/modulars/share/fragment/ShareFragment$a$a;-><init>(Lcom/guochao/faceshow/aaspring/modulars/share/fragment/ShareFragment$a;)V

    invoke-virtual {v0, v1, v2}, Lcom/guochao/faceshow/views/m;->f(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/share/fragment/ShareFragment$a;->a:Lcom/guochao/faceshow/aaspring/modulars/share/fragment/ShareFragment;

    invoke-static {v0, p1}, Lcom/guochao/faceshow/aaspring/modulars/share/fragment/ShareFragment;->X1(Lcom/guochao/faceshow/aaspring/modulars/share/fragment/ShareFragment;I)I

    const/4 v0, -0x1

    const v1, 0x7f12007b

    if-ne p1, v0, :cond_1

    .line 9
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/share/fragment/ShareFragment$a;->a:Lcom/guochao/faceshow/aaspring/modulars/share/fragment/ShareFragment;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/share/fragment/ShareFragment;->U1(Lcom/guochao/faceshow/aaspring/modulars/share/fragment/ShareFragment;)Lcom/guochao/faceshow/views/m;

    move-result-object p1

    invoke-virtual {p1}, Lcom/guochao/faceshow/views/m;->d()V

    .line 10
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/share/fragment/ShareFragment$a;->a:Lcom/guochao/faceshow/aaspring/modulars/share/fragment/ShareFragment;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/share/fragment/ShareFragment;->U1(Lcom/guochao/faceshow/aaspring/modulars/share/fragment/ShareFragment;)Lcom/guochao/faceshow/views/m;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/share/fragment/ShareFragment$a;->a:Lcom/guochao/faceshow/aaspring/modulars/share/fragment/ShareFragment;

    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\u2026"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/views/m;->k(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const/16 v0, 0x64

    if-lt p1, v0, :cond_2

    const/16 p1, 0x63

    .line 11
    :cond_2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/share/fragment/ShareFragment$a;->a:Lcom/guochao/faceshow/aaspring/modulars/share/fragment/ShareFragment;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/share/fragment/ShareFragment;->U1(Lcom/guochao/faceshow/aaspring/modulars/share/fragment/ShareFragment;)Lcom/guochao/faceshow/views/m;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/guochao/faceshow/views/m;->i(I)V

    .line 12
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/share/fragment/ShareFragment$a;->a:Lcom/guochao/faceshow/aaspring/modulars/share/fragment/ShareFragment;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/share/fragment/ShareFragment;->U1(Lcom/guochao/faceshow/aaspring/modulars/share/fragment/ShareFragment;)Lcom/guochao/faceshow/views/m;

    move-result-object p1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/share/fragment/ShareFragment$a;->a:Lcom/guochao/faceshow/aaspring/modulars/share/fragment/ShareFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/views/m;->k(Ljava/lang/String;)V

    .line 13
    :goto_0
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/share/fragment/ShareFragment$a;->a:Lcom/guochao/faceshow/aaspring/modulars/share/fragment/ShareFragment;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/share/fragment/ShareFragment;->U1(Lcom/guochao/faceshow/aaspring/modulars/share/fragment/ShareFragment;)Lcom/guochao/faceshow/views/m;

    move-result-object p1

    invoke-virtual {p1}, Lcom/guochao/faceshow/views/m;->e()Z

    move-result p1

    if-nez p1, :cond_3

    .line 14
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/share/fragment/ShareFragment$a;->a:Lcom/guochao/faceshow/aaspring/modulars/share/fragment/ShareFragment;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/share/fragment/ShareFragment;->U1(Lcom/guochao/faceshow/aaspring/modulars/share/fragment/ShareFragment;)Lcom/guochao/faceshow/views/m;

    move-result-object p1

    invoke-virtual {p1}, Lcom/guochao/faceshow/views/m;->l()V

    :cond_3
    return-void
.end method
