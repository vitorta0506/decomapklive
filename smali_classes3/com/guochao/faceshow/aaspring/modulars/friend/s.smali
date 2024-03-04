.class public final synthetic Lcom/guochao/faceshow/aaspring/modulars/friend/s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/guochao/faceshow/aaspring/modulars/friend/FriendSetGroupActivity;

.field public final synthetic b:Lcom/guochao/faceshow/aaspring/modulars/friend/adapter/BaseViewHolder;

.field public final synthetic c:Lcom/guochao/faceshow/aaspring/modulars/friend/FriendSetGroupActivity$initAdapter$1;


# direct methods
.method public synthetic constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/friend/FriendSetGroupActivity;Lcom/guochao/faceshow/aaspring/modulars/friend/adapter/BaseViewHolder;Lcom/guochao/faceshow/aaspring/modulars/friend/FriendSetGroupActivity$initAdapter$1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/friend/s;->a:Lcom/guochao/faceshow/aaspring/modulars/friend/FriendSetGroupActivity;

    iput-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/friend/s;->b:Lcom/guochao/faceshow/aaspring/modulars/friend/adapter/BaseViewHolder;

    iput-object p3, p0, Lcom/guochao/faceshow/aaspring/modulars/friend/s;->c:Lcom/guochao/faceshow/aaspring/modulars/friend/FriendSetGroupActivity$initAdapter$1;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/friend/s;->a:Lcom/guochao/faceshow/aaspring/modulars/friend/FriendSetGroupActivity;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/friend/s;->b:Lcom/guochao/faceshow/aaspring/modulars/friend/adapter/BaseViewHolder;

    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/friend/s;->c:Lcom/guochao/faceshow/aaspring/modulars/friend/FriendSetGroupActivity$initAdapter$1;

    invoke-static {v0, v1, v2, p1}, Lcom/guochao/faceshow/aaspring/modulars/friend/FriendSetGroupActivity$initAdapter$1;->a(Lcom/guochao/faceshow/aaspring/modulars/friend/FriendSetGroupActivity;Lcom/guochao/faceshow/aaspring/modulars/friend/adapter/BaseViewHolder;Lcom/guochao/faceshow/aaspring/modulars/friend/FriendSetGroupActivity$initAdapter$1;Landroid/view/View;)V

    return-void
.end method
