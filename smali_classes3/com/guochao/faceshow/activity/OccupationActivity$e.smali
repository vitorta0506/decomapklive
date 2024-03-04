.class Lcom/guochao/faceshow/activity/OccupationActivity$e;
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
        "Lcom/guochao/faceshow/bean/OccupationChildBean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/activity/OccupationActivity;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/activity/OccupationActivity;Landroid/content/Context;I)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/activity/OccupationActivity$e;->a:Lcom/guochao/faceshow/activity/OccupationActivity;

    invoke-direct {p0, p2, p3}, Lcom/guochao/faceshow/utils/AAComAdapter;-><init>(Landroid/content/Context;I)V

    return-void
.end method


# virtual methods
.method public a(Lcom/guochao/faceshow/utils/AAViewHolder;Lcom/guochao/faceshow/bean/OccupationChildBean;)V
    .locals 4

    .line 1
    iget-object v0, p2, Lcom/guochao/faceshow/bean/OccupationChildBean;->infoName:Ljava/lang/String;

    const v1, 0x7f0a0570

    invoke-virtual {p1, v1, v0}, Lcom/guochao/faceshow/utils/AAViewHolder;->setText(ILjava/lang/String;)Lcom/guochao/faceshow/utils/AAViewHolder;

    .line 2
    invoke-virtual {p1}, Lcom/guochao/faceshow/utils/AAViewHolder;->getPosition()I

    move-result v0

    .line 3
    invoke-virtual {p1, v1}, Lcom/guochao/faceshow/utils/AAViewHolder;->getView(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckedTextView;

    .line 4
    iget-object v3, p0, Lcom/guochao/faceshow/activity/OccupationActivity$e;->a:Lcom/guochao/faceshow/activity/OccupationActivity;

    invoke-static {v3}, Lcom/guochao/faceshow/activity/OccupationActivity;->c2(Lcom/guochao/faceshow/activity/OccupationActivity;)I

    move-result v3

    if-ne v3, v0, :cond_0

    const/4 v3, 0x1

    .line 5
    invoke-virtual {v2, v3}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    .line 6
    iget-object v3, p0, Lcom/guochao/faceshow/activity/OccupationActivity$e;->a:Lcom/guochao/faceshow/activity/OccupationActivity;

    invoke-static {v3, v2}, Lcom/guochao/faceshow/activity/OccupationActivity;->g2(Lcom/guochao/faceshow/activity/OccupationActivity;Landroid/widget/CheckedTextView;)Landroid/widget/CheckedTextView;

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 7
    invoke-virtual {v2, v3}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    .line 8
    :goto_0
    invoke-virtual {p1, v1}, Lcom/guochao/faceshow/utils/AAViewHolder;->getView(I)Landroid/view/View;

    move-result-object p1

    new-instance v1, Lcom/guochao/faceshow/activity/OccupationActivity$e$a;

    invoke-direct {v1, p0, v0, v2, p2}, Lcom/guochao/faceshow/activity/OccupationActivity$e$a;-><init>(Lcom/guochao/faceshow/activity/OccupationActivity$e;ILandroid/widget/CheckedTextView;Lcom/guochao/faceshow/bean/OccupationChildBean;)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public bridge synthetic convert(Lcom/guochao/faceshow/utils/AAViewHolder;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Lcom/guochao/faceshow/bean/OccupationChildBean;

    invoke-virtual {p0, p1, p2}, Lcom/guochao/faceshow/activity/OccupationActivity$e;->a(Lcom/guochao/faceshow/utils/AAViewHolder;Lcom/guochao/faceshow/bean/OccupationChildBean;)V

    return-void
.end method
