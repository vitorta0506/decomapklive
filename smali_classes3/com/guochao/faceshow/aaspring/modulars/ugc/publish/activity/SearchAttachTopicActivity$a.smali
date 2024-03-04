.class Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/activity/SearchAttachTopicActivity$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/activity/SearchAttachTopicActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/activity/SearchAttachTopicActivity;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/activity/SearchAttachTopicActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/activity/SearchAttachTopicActivity$a;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/activity/SearchAttachTopicActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/activity/SearchAttachTopicActivity$a;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/activity/SearchAttachTopicActivity;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/activity/SearchAttachTopicActivity$a;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/activity/SearchAttachTopicActivity;

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/base/activity/BaseRecyclerViewActivity;->getDefaultPage()I

    move-result v1

    invoke-static {v0, p1, v1}, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/activity/SearchAttachTopicActivity;->b0(Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/activity/SearchAttachTopicActivity;Ljava/lang/String;I)V

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method
