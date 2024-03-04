.class Lcom/guochao/faceshow/aaspring/modulars/login/fragment/SelectUploadVideoFragment$b$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/login/fragment/SelectUploadVideoFragment$b$a;->onBindViewHolder(Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/guochao/faceshow/aaspring/modulars/login/fragment/SelectUploadVideoFragment$b$a;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/login/fragment/SelectUploadVideoFragment$b$a;I)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/SelectUploadVideoFragment$b$a$a;->b:Lcom/guochao/faceshow/aaspring/modulars/login/fragment/SelectUploadVideoFragment$b$a;

    iput p2, p0, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/SelectUploadVideoFragment$b$a$a;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    .line 1
    iget p1, p0, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/SelectUploadVideoFragment$b$a$a;->a:I

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/SelectUploadVideoFragment$b$a$a;->b:Lcom/guochao/faceshow/aaspring/modulars/login/fragment/SelectUploadVideoFragment$b$a;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/SelectUploadVideoFragment$b$a;->a:Lcom/guochao/faceshow/aaspring/modulars/login/fragment/SelectUploadVideoFragment$b;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/SelectUploadVideoFragment$b;->a:Lcom/guochao/faceshow/aaspring/modulars/login/fragment/SelectUploadVideoFragment;

    iget-boolean v1, v0, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/SelectUploadVideoFragment;->c:Z

    if-eqz v1, :cond_1

    if-nez p1, :cond_0

    .line 3
    iget-object p1, v0, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/SelectUploadVideoFragment;->d:Lcom/guochao/faceshow/aaspring/modulars/login/fragment/SelectUploadVideoFragment$d;

    invoke-interface {p1, v0}, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/SelectUploadVideoFragment$d;->A(Lcom/guochao/faceshow/aaspring/modulars/login/fragment/SelectUploadVideoFragment;)V

    .line 4
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/SelectUploadVideoFragment$b$a$a;->b:Lcom/guochao/faceshow/aaspring/modulars/login/fragment/SelectUploadVideoFragment$b$a;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/SelectUploadVideoFragment$b$a;->a:Lcom/guochao/faceshow/aaspring/modulars/login/fragment/SelectUploadVideoFragment$b;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/SelectUploadVideoFragment$b;->a:Lcom/guochao/faceshow/aaspring/modulars/login/fragment/SelectUploadVideoFragment;

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/SelectUploadVideoFragment$b$a$a;->b:Lcom/guochao/faceshow/aaspring/modulars/login/fragment/SelectUploadVideoFragment$b$a;

    iget-object v1, v1, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/SelectUploadVideoFragment$b$a;->a:Lcom/guochao/faceshow/aaspring/modulars/login/fragment/SelectUploadVideoFragment$b;

    iget-object v1, v1, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/SelectUploadVideoFragment$b;->a:Lcom/guochao/faceshow/aaspring/modulars/login/fragment/SelectUploadVideoFragment;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/guochao/faceshow/activity/TCVideoRecordActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/SelectUploadVideoFragment$b$a$a;->b:Lcom/guochao/faceshow/aaspring/modulars/login/fragment/SelectUploadVideoFragment$b$a;

    iget-object v1, v1, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/SelectUploadVideoFragment$b$a;->a:Lcom/guochao/faceshow/aaspring/modulars/login/fragment/SelectUploadVideoFragment$b;

    iget-object v1, v1, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/SelectUploadVideoFragment$b;->a:Lcom/guochao/faceshow/aaspring/modulars/login/fragment/SelectUploadVideoFragment;

    invoke-static {v1}, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/SelectUploadVideoFragment;->P1(Lcom/guochao/faceshow/aaspring/modulars/login/fragment/SelectUploadVideoFragment;)I

    move-result v1

    const-string v2, "from"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    return-void

    :cond_0
    add-int/lit8 p1, p1, -0x1

    .line 5
    :cond_1
    invoke-static {}, Lcom/guochao/faceshow/utils/BaseConfig;->isChinese()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 6
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/SelectUploadVideoFragment$b$a$a;->b:Lcom/guochao/faceshow/aaspring/modulars/login/fragment/SelectUploadVideoFragment$b$a;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/SelectUploadVideoFragment$b$a;->a:Lcom/guochao/faceshow/aaspring/modulars/login/fragment/SelectUploadVideoFragment$b;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/SelectUploadVideoFragment$b;->a:Lcom/guochao/faceshow/aaspring/modulars/login/fragment/SelectUploadVideoFragment;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/SelectUploadVideoFragment;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/beans/LocalImageOrVideoBean;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/beans/LocalImageOrVideoBean;->getDuration()J

    move-result-wide v0

    const-wide/16 v2, 0xbb8

    cmp-long v4, v0, v2

    if-ltz v4, :cond_2

    const-wide/16 v2, 0x3e80

    cmp-long v4, v0, v2

    if-lez v4, :cond_3

    .line 7
    :cond_2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/SelectUploadVideoFragment$b$a$a;->b:Lcom/guochao/faceshow/aaspring/modulars/login/fragment/SelectUploadVideoFragment$b$a;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/SelectUploadVideoFragment$b$a;->a:Lcom/guochao/faceshow/aaspring/modulars/login/fragment/SelectUploadVideoFragment$b;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/SelectUploadVideoFragment$b;->a:Lcom/guochao/faceshow/aaspring/modulars/login/fragment/SelectUploadVideoFragment;

    const v0, 0x7f1209d6

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/base/mvvm/fragment/GCCoreFragment;->showToast(I)V

    return-void

    .line 8
    :cond_3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/SelectUploadVideoFragment$b$a$a;->b:Lcom/guochao/faceshow/aaspring/modulars/login/fragment/SelectUploadVideoFragment$b$a;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/SelectUploadVideoFragment$b$a;->a:Lcom/guochao/faceshow/aaspring/modulars/login/fragment/SelectUploadVideoFragment$b;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/SelectUploadVideoFragment$b;->a:Lcom/guochao/faceshow/aaspring/modulars/login/fragment/SelectUploadVideoFragment;

    iget v1, p0, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/SelectUploadVideoFragment$b$a$a;->a:I

    iput v1, v0, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/SelectUploadVideoFragment;->b:I

    .line 9
    iget-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/SelectUploadVideoFragment;->d:Lcom/guochao/faceshow/aaspring/modulars/login/fragment/SelectUploadVideoFragment$d;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/SelectUploadVideoFragment;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/beans/LocalImageOrVideoBean;

    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/SelectUploadVideoFragment$b$a$a;->b:Lcom/guochao/faceshow/aaspring/modulars/login/fragment/SelectUploadVideoFragment$b$a;

    iget-object v2, v2, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/SelectUploadVideoFragment$b$a;->a:Lcom/guochao/faceshow/aaspring/modulars/login/fragment/SelectUploadVideoFragment$b;

    iget-object v2, v2, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/SelectUploadVideoFragment$b;->a:Lcom/guochao/faceshow/aaspring/modulars/login/fragment/SelectUploadVideoFragment;

    invoke-interface {v1, v0, p1, v2}, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/SelectUploadVideoFragment$d;->P0(Lcom/guochao/faceshow/aaspring/beans/LocalImageOrVideoBean;ILcom/guochao/faceshow/aaspring/modulars/login/fragment/SelectUploadVideoFragment;)V

    .line 10
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/SelectUploadVideoFragment$b$a$a;->b:Lcom/guochao/faceshow/aaspring/modulars/login/fragment/SelectUploadVideoFragment$b$a;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method
