.class Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatControllerFragment$f;
.super Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatControllerFragment$j;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatControllerFragment;->Z1(Lcom/guochao/faceshow/aaspring/beans/ChatStatusBean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatControllerFragment;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatControllerFragment;Lcom/guochao/faceshow/aaspring/beans/ChatStatusBean;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatControllerFragment$f;->b:Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatControllerFragment;

    invoke-direct {p0, p2}, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatControllerFragment$j;-><init>(Lcom/guochao/faceshow/aaspring/beans/ChatStatusBean;)V

    return-void
.end method


# virtual methods
.method b(ZLcom/guochao/faceshow/aaspring/beans/ChatStatusBean;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatControllerFragment$f;->b:Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatControllerFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isDetached()Z

    move-result v0

    if-nez v0, :cond_c

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatControllerFragment$f;->b:Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatControllerFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatControllerFragment$f;->b:Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatControllerFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_c

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatControllerFragment$f;->b:Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatControllerFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_4

    :cond_0
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p2, :cond_4

    .line 2
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatControllerFragment$f;->b:Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatControllerFragment;

    invoke-static {v2}, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatControllerFragment;->R1(Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatControllerFragment;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IsChatFirst"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatControllerFragment$f;->b:Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatControllerFragment;

    invoke-virtual {v3}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseFragment;->getCurrentUser()Lcom/guochao/faceshow/bean/UserBean;

    move-result-object v3

    invoke-virtual {v3}, Lcom/guochao/faceshow/bean/UserBean;->getUserId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatControllerFragment$f$a;

    invoke-direct {v3, p0}, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatControllerFragment$f$a;-><init>(Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatControllerFragment$f;)V

    .line 4
    invoke-virtual {v3}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v3

    const-string v4, "firstMeet"

    .line 5
    invoke-static {v4, v2, v3}, Lcom/guochao/faceshow/aaspring/manager/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Set;

    if-nez v2, :cond_1

    .line 6
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 7
    :cond_1
    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatControllerFragment$f;->b:Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatControllerFragment;

    invoke-static {v3}, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatControllerFragment;->R1(Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatControllerFragment;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 p1, 0x1

    goto :goto_1

    :cond_3
    :goto_0
    const/4 p1, 0x0

    :goto_1
    iput p1, v3, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatControllerFragment;->n:I

    :cond_4
    if-eqz p2, :cond_5

    .line 8
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatControllerFragment$f;->b:Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatControllerFragment;

    invoke-static {p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatControllerFragment;->S1(Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatControllerFragment;Lcom/guochao/faceshow/aaspring/beans/ChatStatusBean;)Lcom/guochao/faceshow/aaspring/beans/ChatStatusBean;

    :cond_5
    if-nez p2, :cond_6

    .line 9
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatControllerFragment$f;->b:Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatControllerFragment;

    invoke-static {p1, v1}, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatControllerFragment;->T1(Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatControllerFragment;Z)Z

    goto :goto_2

    .line 10
    :cond_6
    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/beans/ChatStatusBean;->getIsChat()I

    move-result p1

    if-nez p1, :cond_7

    .line 11
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatControllerFragment$f;->b:Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatControllerFragment;

    invoke-static {p1, v0}, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatControllerFragment;->T1(Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatControllerFragment;Z)Z

    goto :goto_2

    .line 12
    :cond_7
    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/beans/ChatStatusBean;->getIsChat()I

    move-result p1

    if-ne p1, v0, :cond_8

    .line 13
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatControllerFragment$f;->b:Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatControllerFragment;

    invoke-static {p1, v1}, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatControllerFragment;->T1(Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatControllerFragment;Z)Z

    goto :goto_2

    .line 14
    :cond_8
    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/beans/ChatStatusBean;->getIsChat()I

    move-result p1

    const/4 v2, 0x2

    if-ne p1, v2, :cond_9

    .line 15
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatControllerFragment$f;->b:Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatControllerFragment;

    invoke-static {p1, v0}, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatControllerFragment;->T1(Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatControllerFragment;Z)Z

    goto :goto_2

    .line 16
    :cond_9
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatControllerFragment$f;->b:Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatControllerFragment;

    invoke-static {p1, v1}, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatControllerFragment;->T1(Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatControllerFragment;Z)Z

    :goto_2
    if-eqz p2, :cond_b

    .line 17
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatControllerFragment$f;->b:Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatControllerFragment;

    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/beans/ChatStatusBean;->getAttentStatus()I

    move-result p2

    const/4 v2, 0x4

    if-ne p2, v2, :cond_a

    goto :goto_3

    :cond_a
    const/4 v0, 0x0

    :goto_3
    invoke-static {p1, v0}, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatControllerFragment;->U1(Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatControllerFragment;Z)Z

    .line 18
    :cond_b
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatControllerFragment$f;->b:Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatControllerFragment;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatControllerFragment;->V1(Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatControllerFragment;)V

    :cond_c
    :goto_4
    return-void
.end method
