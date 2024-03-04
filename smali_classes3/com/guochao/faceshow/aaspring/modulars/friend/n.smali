.class public final synthetic Lcom/guochao/faceshow/aaspring/modulars/friend/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/guochao/faceshow/aaspring/modulars/friend/FriendGroupMangerActivity;

.field public final synthetic b:Lcom/guochao/faceshow/aaspring/modulars/friend/adapter/BaseViewHolder;

.field public final synthetic c:Lcom/guochao/faceshow/aaspring/db/GroupInfo;


# direct methods
.method public synthetic constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/friend/FriendGroupMangerActivity;Lcom/guochao/faceshow/aaspring/modulars/friend/adapter/BaseViewHolder;Lcom/guochao/faceshow/aaspring/db/GroupInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/friend/n;->a:Lcom/guochao/faceshow/aaspring/modulars/friend/FriendGroupMangerActivity;

    iput-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/friend/n;->b:Lcom/guochao/faceshow/aaspring/modulars/friend/adapter/BaseViewHolder;

    iput-object p3, p0, Lcom/guochao/faceshow/aaspring/modulars/friend/n;->c:Lcom/guochao/faceshow/aaspring/db/GroupInfo;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/friend/n;->a:Lcom/guochao/faceshow/aaspring/modulars/friend/FriendGroupMangerActivity;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/friend/n;->b:Lcom/guochao/faceshow/aaspring/modulars/friend/adapter/BaseViewHolder;

    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/friend/n;->c:Lcom/guochao/faceshow/aaspring/db/GroupInfo;

    invoke-static {v0, v1, v2, p1}, Lcom/guochao/faceshow/aaspring/modulars/friend/FriendGroupMangerActivity$initAdapter$1;->a(Lcom/guochao/faceshow/aaspring/modulars/friend/FriendGroupMangerActivity;Lcom/guochao/faceshow/aaspring/modulars/friend/adapter/BaseViewHolder;Lcom/guochao/faceshow/aaspring/db/GroupInfo;Landroid/view/View;)V

    return-void
.end method
