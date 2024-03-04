.class Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DynamicVideoListActivity$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/guochao/faceshow/aaspring/modulars/videomatch/OnListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DynamicVideoListActivity$a;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DynamicVideoListActivity$a;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DynamicVideoListActivity$a;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DynamicVideoListActivity$a$a;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DynamicVideoListActivity$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDelete()V
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DynamicVideoListActivity$a$a;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DynamicVideoListActivity$a;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DynamicVideoListActivity$a;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DynamicVideoListActivity;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DynamicVideoListActivity;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DynamicVideoListActivity$DynamicVideoFragment;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DynamicVideoListActivity$DynamicVideoFragment;->R2()V

    return-void
.end method

.method public onPrivateAndPublic()V
    .locals 0

    return-void
.end method

.method public onSendDynamic()V
    .locals 0

    return-void
.end method
