.class Lcom/guochao/faceshow/aaspring/modulars/personal/LabelActivity$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/personal/LabelActivity;->b0(Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;ILcom/guochao/faceshow/aaspring/modulars/personal/d$b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/modulars/personal/d$b;

.field final synthetic b:Lcom/guochao/faceshow/aaspring/modulars/personal/LabelActivity;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/personal/LabelActivity;Lcom/guochao/faceshow/aaspring/modulars/personal/d$b;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/LabelActivity$c;->b:Lcom/guochao/faceshow/aaspring/modulars/personal/LabelActivity;

    iput-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/LabelActivity$c;->a:Lcom/guochao/faceshow/aaspring/modulars/personal/d$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/LabelActivity$c;->b:Lcom/guochao/faceshow/aaspring/modulars/personal/LabelActivity;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->getActivity()Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;

    move-result-object p1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/LabelActivity$c;->a:Lcom/guochao/faceshow/aaspring/modulars/personal/d$b;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/personal/d$b;->f()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/guochao/faceshow/userhomepage/act/UserHomePageAct;->start(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method
