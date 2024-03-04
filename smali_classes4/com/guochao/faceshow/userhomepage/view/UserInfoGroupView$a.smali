.class Lcom/guochao/faceshow/userhomepage/view/UserInfoGroupView$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/userhomepage/view/UserInfoGroupView;->b(Lcom/guochao/faceshow/aaspring/beans/UserPageVideoFriendGroupData$GroupInfoItemData;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/beans/UserPageVideoFriendGroupData$GroupInfoItemData;

.field final synthetic b:Lcom/guochao/faceshow/userhomepage/view/UserInfoGroupView;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/userhomepage/view/UserInfoGroupView;Lcom/guochao/faceshow/aaspring/beans/UserPageVideoFriendGroupData$GroupInfoItemData;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/userhomepage/view/UserInfoGroupView$a;->b:Lcom/guochao/faceshow/userhomepage/view/UserInfoGroupView;

    iput-object p2, p0, Lcom/guochao/faceshow/userhomepage/view/UserInfoGroupView$a;->a:Lcom/guochao/faceshow/aaspring/beans/UserPageVideoFriendGroupData$GroupInfoItemData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/guochao/faceshow/userhomepage/view/UserInfoGroupView$a;->b:Lcom/guochao/faceshow/userhomepage/view/UserInfoGroupView;

    invoke-static {p1}, Lcom/guochao/faceshow/userhomepage/view/UserInfoGroupView;->a(Lcom/guochao/faceshow/userhomepage/view/UserInfoGroupView;)Lcom/guochao/faceshow/userhomepage/view/UserInfoGroupView$b;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/guochao/faceshow/userhomepage/view/UserInfoGroupView$a;->b:Lcom/guochao/faceshow/userhomepage/view/UserInfoGroupView;

    invoke-static {p1}, Lcom/guochao/faceshow/userhomepage/view/UserInfoGroupView;->a(Lcom/guochao/faceshow/userhomepage/view/UserInfoGroupView;)Lcom/guochao/faceshow/userhomepage/view/UserInfoGroupView$b;

    move-result-object p1

    iget-object v0, p0, Lcom/guochao/faceshow/userhomepage/view/UserInfoGroupView$a;->a:Lcom/guochao/faceshow/aaspring/beans/UserPageVideoFriendGroupData$GroupInfoItemData;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/beans/UserPageVideoFriendGroupData$GroupInfoItemData;->IM_ID:Ljava/lang/String;

    invoke-interface {p1, v0}, Lcom/guochao/faceshow/userhomepage/view/UserInfoGroupView$b;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
