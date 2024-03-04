.class Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DynamicVideoListActivity$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DynamicVideoListActivity;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DynamicVideoListActivity;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DynamicVideoListActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DynamicVideoListActivity$a;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DynamicVideoListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DynamicVideoListActivity$a;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DynamicVideoListActivity;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DynamicVideoListActivity;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DynamicVideoListActivity$DynamicVideoFragment;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/BaseShortVideoFragment;->q:Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder;

    check-cast p1, Lcom/guochao/faceshow/aaspring/modulars/ugc/viewholder/DynamicShortVideoViewHolder;

    if-eqz p1, :cond_1

    .line 2
    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/ugc/viewholder/DynamicShortVideoViewHolder;->J:Lcom/guochao/faceshow/aaspring/modulars/videomatch/VideoMatchHolder;

    if-nez p1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DynamicVideoListActivity$a$a;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DynamicVideoListActivity$a$a;-><init>(Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DynamicVideoListActivity$a;)V

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/modulars/videomatch/VideoMatchHolder;->share(Lcom/guochao/faceshow/aaspring/modulars/videomatch/OnListener;)V

    :cond_1
    :goto_0
    return-void
.end method
