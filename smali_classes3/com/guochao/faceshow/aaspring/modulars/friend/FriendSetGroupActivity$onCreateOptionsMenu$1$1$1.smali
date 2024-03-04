.class final Lcom/guochao/faceshow/aaspring/modulars/friend/FriendSetGroupActivity$onCreateOptionsMenu$1$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/friend/FriendSetGroupActivity;->onCreateOptionsMenu$lambda-4(Lcom/guochao/faceshow/aaspring/modulars/friend/FriendSetGroupActivity;Landroid/view/MenuItem;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Ljava/lang/Boolean;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $it1:Lcom/guochao/faceshow/aaspring/db/GroupInfo;

.field final synthetic this$0:Lcom/guochao/faceshow/aaspring/modulars/friend/FriendSetGroupActivity;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/friend/FriendSetGroupActivity;Lcom/guochao/faceshow/aaspring/db/GroupInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/friend/FriendSetGroupActivity$onCreateOptionsMenu$1$1$1;->this$0:Lcom/guochao/faceshow/aaspring/modulars/friend/FriendSetGroupActivity;

    iput-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/friend/FriendSetGroupActivity$onCreateOptionsMenu$1$1$1;->$it1:Lcom/guochao/faceshow/aaspring/db/GroupInfo;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/friend/FriendSetGroupActivity$onCreateOptionsMenu$1$1$1;->invoke(Z)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Z)V
    .locals 6

    if-eqz p1, :cond_3

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/friend/FriendSetGroupActivity$onCreateOptionsMenu$1$1$1;->this$0:Lcom/guochao/faceshow/aaspring/modulars/friend/FriendSetGroupActivity;

    const p1, 0x7f1201bc

    invoke-virtual {v0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string p1, "getString(R.string.common_do_success)"

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/16 v4, 0xc

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/guochao/faceshow/aaspring/utils/ToastUtils;->showToast$default(Landroid/content/Context;Ljava/lang/CharSequence;IIILjava/lang/Object;)Landroid/widget/Toast;

    .line 3
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/friend/FriendSetGroupActivity$onCreateOptionsMenu$1$1$1;->$it1:Lcom/guochao/faceshow/aaspring/db/GroupInfo;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/db/GroupInfo;->getId()I

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/friend/FriendSetGroupActivity$onCreateOptionsMenu$1$1$1;->$it1:Lcom/guochao/faceshow/aaspring/db/GroupInfo;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/db/GroupInfo;->getName()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-static {p1}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/friend/FriendSetGroupActivity$onCreateOptionsMenu$1$1$1;->this$0:Lcom/guochao/faceshow/aaspring/modulars/friend/FriendSetGroupActivity;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f12059a

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    .line 4
    :cond_2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/friend/FriendSetGroupActivity$onCreateOptionsMenu$1$1$1;->$it1:Lcom/guochao/faceshow/aaspring/db/GroupInfo;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/db/GroupInfo;->getName()Ljava/lang/String;

    move-result-object p1

    .line 5
    :goto_2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/friend/FriendSetGroupActivity$onCreateOptionsMenu$1$1$1;->this$0:Lcom/guochao/faceshow/aaspring/modulars/friend/FriendSetGroupActivity;

    const/4 v1, -0x1

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-string v3, "name"

    invoke-virtual {v2, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 6
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/friend/FriendSetGroupActivity$onCreateOptionsMenu$1$1$1;->this$0:Lcom/guochao/faceshow/aaspring/modulars/friend/FriendSetGroupActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    :cond_3
    return-void
.end method
