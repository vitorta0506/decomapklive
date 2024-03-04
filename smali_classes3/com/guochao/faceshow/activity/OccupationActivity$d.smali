.class Lcom/guochao/faceshow/activity/OccupationActivity$d;
.super Lcom/guochao/faceshow/utils/AAComAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/activity/OccupationActivity;->initView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/guochao/faceshow/utils/AAComAdapter<",
        "Lcom/guochao/faceshow/bean/OccupationBean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/activity/OccupationActivity;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/activity/OccupationActivity;Landroid/content/Context;I)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/activity/OccupationActivity$d;->a:Lcom/guochao/faceshow/activity/OccupationActivity;

    invoke-direct {p0, p2, p3}, Lcom/guochao/faceshow/utils/AAComAdapter;-><init>(Landroid/content/Context;I)V

    return-void
.end method


# virtual methods
.method public a(Lcom/guochao/faceshow/utils/AAViewHolder;Lcom/guochao/faceshow/bean/OccupationBean;)V
    .locals 3

    .line 1
    iget-object p2, p2, Lcom/guochao/faceshow/bean/OccupationBean;->infoName:Ljava/lang/String;

    const v0, 0x7f0a0570

    invoke-virtual {p1, v0, p2}, Lcom/guochao/faceshow/utils/AAViewHolder;->setText(ILjava/lang/String;)Lcom/guochao/faceshow/utils/AAViewHolder;

    .line 2
    invoke-virtual {p1}, Lcom/guochao/faceshow/utils/AAViewHolder;->getPosition()I

    move-result p2

    .line 3
    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/utils/AAViewHolder;->getView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckedTextView;

    .line 4
    iget-object v1, p0, Lcom/guochao/faceshow/activity/OccupationActivity$d;->a:Lcom/guochao/faceshow/activity/OccupationActivity;

    invoke-static {v1}, Lcom/guochao/faceshow/activity/OccupationActivity;->X1(Lcom/guochao/faceshow/activity/OccupationActivity;)I

    move-result v1

    if-ne v1, p2, :cond_0

    const/4 v1, 0x1

    .line 5
    invoke-virtual {v0, v1}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    .line 6
    iget-object v1, p0, Lcom/guochao/faceshow/activity/OccupationActivity$d;->a:Lcom/guochao/faceshow/activity/OccupationActivity;

    invoke-static {v1, v0}, Lcom/guochao/faceshow/activity/OccupationActivity;->a2(Lcom/guochao/faceshow/activity/OccupationActivity;Landroid/widget/CheckedTextView;)Landroid/widget/CheckedTextView;

    .line 7
    iget-object v1, p0, Lcom/guochao/faceshow/activity/OccupationActivity$d;->a:Lcom/guochao/faceshow/activity/OccupationActivity;

    invoke-static {v1}, Lcom/guochao/faceshow/activity/OccupationActivity;->b2(Lcom/guochao/faceshow/activity/OccupationActivity;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/guochao/faceshow/activity/OccupationActivity$d;->a:Lcom/guochao/faceshow/activity/OccupationActivity;

    invoke-static {v2}, Lcom/guochao/faceshow/activity/OccupationActivity;->X1(Lcom/guochao/faceshow/activity/OccupationActivity;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 8
    invoke-virtual {v0, v1}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    :goto_0
    const v1, 0x7f0a056a

    .line 9
    invoke-virtual {p1, v1}, Lcom/guochao/faceshow/utils/AAViewHolder;->getView(I)Landroid/view/View;

    move-result-object p1

    new-instance v1, Lcom/guochao/faceshow/activity/OccupationActivity$d$a;

    invoke-direct {v1, p0, p2, v0}, Lcom/guochao/faceshow/activity/OccupationActivity$d$a;-><init>(Lcom/guochao/faceshow/activity/OccupationActivity$d;ILandroid/widget/CheckedTextView;)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public bridge synthetic convert(Lcom/guochao/faceshow/utils/AAViewHolder;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Lcom/guochao/faceshow/bean/OccupationBean;

    invoke-virtual {p0, p1, p2}, Lcom/guochao/faceshow/activity/OccupationActivity$d;->a(Lcom/guochao/faceshow/utils/AAViewHolder;Lcom/guochao/faceshow/bean/OccupationBean;)V

    return-void
.end method
