.class public final synthetic Lcom/guochao/faceshow/aaspring/modulars/friend/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/activity/result/ActivityResultCallback;


# instance fields
.field public final synthetic a:Lcom/guochao/faceshow/aaspring/modulars/friend/FriendGroupAddFriendActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/friend/FriendGroupAddFriendActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/friend/e;->a:Lcom/guochao/faceshow/aaspring/modulars/friend/FriendGroupAddFriendActivity;

    return-void
.end method


# virtual methods
.method public final onActivityResult(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/friend/e;->a:Lcom/guochao/faceshow/aaspring/modulars/friend/FriendGroupAddFriendActivity;

    check-cast p1, Landroidx/activity/result/ActivityResult;

    invoke-static {v0, p1}, Lcom/guochao/faceshow/aaspring/modulars/friend/FriendGroupAddFriendActivity;->i0(Lcom/guochao/faceshow/aaspring/modulars/friend/FriendGroupAddFriendActivity;Landroidx/activity/result/ActivityResult;)V

    return-void
.end method
