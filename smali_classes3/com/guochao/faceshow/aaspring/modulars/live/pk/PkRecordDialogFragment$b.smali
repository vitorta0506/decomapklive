.class Lcom/guochao/faceshow/aaspring/modulars/live/pk/PkRecordDialogFragment$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/live/pk/PkRecordDialogFragment;->P1(Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;ILcom/guochao/faceshow/aaspring/beans/PkRecord;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/beans/PkRecord;

.field final synthetic b:Lcom/guochao/faceshow/aaspring/modulars/live/pk/PkRecordDialogFragment;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/live/pk/PkRecordDialogFragment;Lcom/guochao/faceshow/aaspring/beans/PkRecord;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/pk/PkRecordDialogFragment$b;->b:Lcom/guochao/faceshow/aaspring/modulars/live/pk/PkRecordDialogFragment;

    iput-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/pk/PkRecordDialogFragment$b;->a:Lcom/guochao/faceshow/aaspring/beans/PkRecord;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/pk/PkRecordDialogFragment$b;->b:Lcom/guochao/faceshow/aaspring/modulars/live/pk/PkRecordDialogFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/pk/PkRecordDialogFragment$b;->a:Lcom/guochao/faceshow/aaspring/beans/PkRecord;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/beans/PkRecord;->getRightUserId()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Lcom/guochao/faceshow/userhomepage/act/UserHomePageAct;->start(Landroid/content/Context;Ljava/lang/String;I)V

    return-void
.end method
