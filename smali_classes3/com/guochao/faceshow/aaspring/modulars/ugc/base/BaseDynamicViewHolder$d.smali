.class Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/guochao/faceshow/aaspring/base/fragment/BottomMenuFragment$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder;->P()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder$d;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/guochao/faceshow/aaspring/beans/BottomMenuBean;Landroid/app/Dialog;Landroidx/fragment/app/DialogFragment;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/BottomMenuBean;->getItemId()I

    move-result p1

    sparse-switch p1, :sswitch_data_0

    goto :goto_0

    .line 2
    :sswitch_0
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder$d;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder;->i(Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder;)V

    goto :goto_0

    .line 3
    :sswitch_1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder$d;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder;

    iget-object p2, p1, Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder;->a:Landroid/content/Context;

    check-cast p2, Landroid/app/Activity;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder;->g:Lcom/guochao/faceshow/aaspring/beans/DynamicBean;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/DynamicBean;->getUserId()Ljava/lang/String;

    move-result-object p1

    iget-object p3, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder$d;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder;

    iget-object p3, p3, Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder;->g:Lcom/guochao/faceshow/aaspring/beans/DynamicBean;

    invoke-virtual {p3}, Lcom/guochao/faceshow/aaspring/beans/DynamicBean;->getFriendId()I

    move-result p3

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p3

    const-string v0, "12"

    invoke-static {p2, p1, p3, v0}, Lcom/guochao/faceshow/utils/ReportController;->report(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 4
    :sswitch_2
    sget-object p1, Lcom/guochao/faceshow/utils/AppContentFilter;->INSTANCE:Lcom/guochao/faceshow/utils/AppContentFilter;

    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder$d;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder;

    iget-object p2, p2, Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder;->g:Lcom/guochao/faceshow/aaspring/beans/DynamicBean;

    invoke-virtual {p1, p2}, Lcom/guochao/faceshow/utils/AppContentFilter;->doNotWantToSee(Lcom/guochao/faceshow/aaspring/beans/DynamicBean;)V

    .line 5
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder$d;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder;

    iget-object p2, p1, Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder;->b:Laa/e;

    if-eqz p2, :cond_0

    .line 6
    iget-object p3, p1, Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder;->g:Lcom/guochao/faceshow/aaspring/beans/DynamicBean;

    invoke-interface {p2, p1, p3}, Laa/e;->onDeleteDynamic(Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder;Lcom/guochao/faceshow/aaspring/beans/DynamicBean;)V

    goto :goto_0

    .line 7
    :sswitch_3
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder$d;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder;->j(Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder;)V

    goto :goto_0

    .line 8
    :sswitch_4
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder$d;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder;->k(Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder;)V

    :cond_0
    :goto_0
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f12000c -> :sswitch_4
        0x7f120117 -> :sswitch_3
        0x7f120686 -> :sswitch_2
        0x7f1207a7 -> :sswitch_1
        0x7f12098c -> :sswitch_0
    .end sparse-switch
.end method

.method public onCancel(Landroid/app/Dialog;Landroidx/fragment/app/DialogFragment;)V
    .locals 0

    return-void
.end method
