.class Lcom/guochao/faceshow/aaspring/modulars/personal/LabelActivity$b;
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
.field final synthetic a:Lcom/guochao/faceshow/aaspring/modulars/personal/d$a;

.field final synthetic b:Lcom/guochao/faceshow/aaspring/modulars/personal/LabelActivity;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/personal/LabelActivity;Lcom/guochao/faceshow/aaspring/modulars/personal/d$a;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/LabelActivity$b;->b:Lcom/guochao/faceshow/aaspring/modulars/personal/LabelActivity;

    iput-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/LabelActivity$b;->a:Lcom/guochao/faceshow/aaspring/modulars/personal/d$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    new-instance p1, Lcom/guochao/faceshow/mine/model/HobbyBean;

    invoke-direct {p1}, Lcom/guochao/faceshow/mine/model/HobbyBean;-><init>()V

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/LabelActivity$b;->a:Lcom/guochao/faceshow/aaspring/modulars/personal/d$a;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/personal/d$a;->a()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/mine/model/HobbyBean;->setHobbyId(I)V

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/LabelActivity$b;->a:Lcom/guochao/faceshow/aaspring/modulars/personal/d$a;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/personal/d$a;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/mine/model/HobbyBean;->setTags(Ljava/lang/String;)V

    .line 4
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/LabelActivity$b;->a:Lcom/guochao/faceshow/aaspring/modulars/personal/d$a;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/personal/d$a;->c()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/mine/model/HobbyBean;->setType(I)V

    .line 5
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/LabelActivity$b;->b:Lcom/guochao/faceshow/aaspring/modulars/personal/LabelActivity;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->getActivity()Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/guochao/faceshow/aaspring/modulars/personal/LabelActivity;->e0(Landroid/content/Context;Lcom/guochao/faceshow/mine/model/HobbyBean;)V

    return-void
.end method
