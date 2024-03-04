.class public final synthetic Lcom/guochao/faceshow/aaspring/modulars/friend/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/guochao/faceshow/aaspring/modulars/friend/FriendGroupAddFriendActivity;

.field public final synthetic b:I

.field public final synthetic c:Lcom/guochao/faceshow/aaspring/modulars/friend/FriendGroupAddFriendActivity$initAdapter$1;


# direct methods
.method public synthetic constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/friend/FriendGroupAddFriendActivity;ILcom/guochao/faceshow/aaspring/modulars/friend/FriendGroupAddFriendActivity$initAdapter$1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/friend/f;->a:Lcom/guochao/faceshow/aaspring/modulars/friend/FriendGroupAddFriendActivity;

    iput p2, p0, Lcom/guochao/faceshow/aaspring/modulars/friend/f;->b:I

    iput-object p3, p0, Lcom/guochao/faceshow/aaspring/modulars/friend/f;->c:Lcom/guochao/faceshow/aaspring/modulars/friend/FriendGroupAddFriendActivity$initAdapter$1;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/friend/f;->a:Lcom/guochao/faceshow/aaspring/modulars/friend/FriendGroupAddFriendActivity;

    iget v1, p0, Lcom/guochao/faceshow/aaspring/modulars/friend/f;->b:I

    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/friend/f;->c:Lcom/guochao/faceshow/aaspring/modulars/friend/FriendGroupAddFriendActivity$initAdapter$1;

    invoke-static {v0, v1, v2, p1}, Lcom/guochao/faceshow/aaspring/modulars/friend/FriendGroupAddFriendActivity$initAdapter$1;->a(Lcom/guochao/faceshow/aaspring/modulars/friend/FriendGroupAddFriendActivity;ILcom/guochao/faceshow/aaspring/modulars/friend/FriendGroupAddFriendActivity$initAdapter$1;Landroid/view/View;)V

    return-void
.end method
