.class final Lcom/guochao/faceshow/aaspring/modulars/friend/FriendGroupAddFriendActivity$onCreateOptionsMenu$1$callback$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/friend/FriendGroupAddFriendActivity;->onCreateOptionsMenu$lambda-8(Lcom/guochao/faceshow/aaspring/modulars/friend/FriendGroupAddFriendActivity;Landroid/view/MenuItem;)Z
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
.field final synthetic this$0:Lcom/guochao/faceshow/aaspring/modulars/friend/FriendGroupAddFriendActivity;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/friend/FriendGroupAddFriendActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/friend/FriendGroupAddFriendActivity$onCreateOptionsMenu$1$callback$1;->this$0:Lcom/guochao/faceshow/aaspring/modulars/friend/FriendGroupAddFriendActivity;

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

    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/friend/FriendGroupAddFriendActivity$onCreateOptionsMenu$1$callback$1;->invoke(Z)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/friend/FriendGroupAddFriendActivity$onCreateOptionsMenu$1$callback$1;->this$0:Lcom/guochao/faceshow/aaspring/modulars/friend/FriendGroupAddFriendActivity;

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Landroid/app/Activity;->setResult(I)V

    .line 3
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/friend/FriendGroupAddFriendActivity$onCreateOptionsMenu$1$callback$1;->this$0:Lcom/guochao/faceshow/aaspring/modulars/friend/FriendGroupAddFriendActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/friend/FriendGroupAddFriendActivity$onCreateOptionsMenu$1$callback$1;->this$0:Lcom/guochao/faceshow/aaspring/modulars/friend/FriendGroupAddFriendActivity;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/friend/FriendGroupAddFriendActivity;->getMenuItem()Landroid/view/MenuItem;

    move-result-object p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    :goto_0
    return-void
.end method