.class Lcom/guochao/faceshow/activity/PushVideoActivity$b;
.super Lcom/guochao/faceshow/aaspring/views/AtTopicUgcEditText$b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/activity/PushVideoActivity;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/activity/PushVideoActivity;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/activity/PushVideoActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/activity/PushVideoActivity$b;->a:Lcom/guochao/faceshow/activity/PushVideoActivity;

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/views/AtTopicUgcEditText$b;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/activity/PushVideoActivity$b;->a:Lcom/guochao/faceshow/activity/PushVideoActivity;

    invoke-static {v0}, Lcom/guochao/faceshow/activity/PushVideoActivity;->e0(Lcom/guochao/faceshow/activity/PushVideoActivity;)Lcom/guochao/faceshow/aaspring/views/AtTopicUgcEditText;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/activity/PushVideoActivity$b;->a:Lcom/guochao/faceshow/activity/PushVideoActivity;

    invoke-static {v0}, Lcom/guochao/faceshow/activity/PushVideoActivity;->m0(Lcom/guochao/faceshow/activity/PushVideoActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/activity/PushVideoActivity$b;->a:Lcom/guochao/faceshow/activity/PushVideoActivity;

    invoke-static {v0}, Lcom/guochao/faceshow/activity/PushVideoActivity;->m0(Lcom/guochao/faceshow/activity/PushVideoActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public b()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/activity/PushVideoActivity$b;->a:Lcom/guochao/faceshow/activity/PushVideoActivity;

    invoke-static {v0}, Lcom/guochao/faceshow/activity/PushVideoActivity;->m0(Lcom/guochao/faceshow/activity/PushVideoActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/activity/PushVideoActivity$b;->a:Lcom/guochao/faceshow/activity/PushVideoActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/guochao/faceshow/activity/PushVideoActivity;->n0(Lcom/guochao/faceshow/activity/PushVideoActivity;Z)V

    :cond_0
    return-void
.end method
