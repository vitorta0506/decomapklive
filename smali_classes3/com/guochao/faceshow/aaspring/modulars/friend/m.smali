.class public final synthetic Lcom/guochao/faceshow/aaspring/modulars/friend/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/guochao/faceshow/aaspring/modulars/friend/FriendGroupMangerActivity;

.field public final synthetic b:Lcom/guochao/faceshow/aaspring/db/GroupInfo;


# direct methods
.method public synthetic constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/friend/FriendGroupMangerActivity;Lcom/guochao/faceshow/aaspring/db/GroupInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/friend/m;->a:Lcom/guochao/faceshow/aaspring/modulars/friend/FriendGroupMangerActivity;

    iput-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/friend/m;->b:Lcom/guochao/faceshow/aaspring/db/GroupInfo;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/friend/m;->a:Lcom/guochao/faceshow/aaspring/modulars/friend/FriendGroupMangerActivity;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/friend/m;->b:Lcom/guochao/faceshow/aaspring/db/GroupInfo;

    invoke-static {v0, v1, p1}, Lcom/guochao/faceshow/aaspring/modulars/friend/FriendGroupMangerActivity$initAdapter$1;->b(Lcom/guochao/faceshow/aaspring/modulars/friend/FriendGroupMangerActivity;Lcom/guochao/faceshow/aaspring/db/GroupInfo;Landroid/view/View;)V

    return-void
.end method
