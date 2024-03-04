.class Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DynamicVideoListActivity$DynamicVideoFragment$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DynamicVideoListActivity$DynamicVideoFragment;->N2(Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder;ILcom/guochao/faceshow/aaspring/beans/VideoItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DynamicVideoListActivity$DynamicVideoFragment;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DynamicVideoListActivity$DynamicVideoFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DynamicVideoListActivity$DynamicVideoFragment$c;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DynamicVideoListActivity$DynamicVideoFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DynamicVideoListActivity$DynamicVideoFragment$c;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DynamicVideoListActivity$DynamicVideoFragment;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DynamicVideoListActivity$DynamicVideoFragment;->O:Landroid/view/View;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 2
    invoke-static {}, Lja/a;->b()Lja/a;

    move-result-object p1

    const-string v0, "KEY_SLIDE_TO_SEE_MORE_UGC_VIDEO"

    invoke-virtual {p1, v0}, Lja/a;->e(Ljava/lang/String;)V

    return-void
.end method
