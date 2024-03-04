.class Lcom/guochao/faceshow/userhomepage/view/UserInfoLabelView$a;
.super Lcom/guochao/faceshow/views/flowlayout/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/userhomepage/view/UserInfoLabelView;->setData(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/guochao/faceshow/views/flowlayout/a<",
        "Lcom/guochao/faceshow/mine/model/HobbyBean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic e:Lcom/guochao/faceshow/userhomepage/view/UserInfoLabelView;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/userhomepage/view/UserInfoLabelView;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/userhomepage/view/UserInfoLabelView$a;->e:Lcom/guochao/faceshow/userhomepage/view/UserInfoLabelView;

    invoke-direct {p0, p2}, Lcom/guochao/faceshow/views/flowlayout/a;-><init>(Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic d(Lcom/guochao/faceshow/views/flowlayout/FlowLayout;ILjava/lang/Object;)Landroid/view/View;
    .locals 0

    check-cast p3, Lcom/guochao/faceshow/mine/model/HobbyBean;

    invoke-virtual {p0, p1, p2, p3}, Lcom/guochao/faceshow/userhomepage/view/UserInfoLabelView$a;->i(Lcom/guochao/faceshow/views/flowlayout/FlowLayout;ILcom/guochao/faceshow/mine/model/HobbyBean;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public i(Lcom/guochao/faceshow/views/flowlayout/FlowLayout;ILcom/guochao/faceshow/mine/model/HobbyBean;)Landroid/view/View;
    .locals 0

    iget-object p1, p0, Lcom/guochao/faceshow/userhomepage/view/UserInfoLabelView$a;->e:Lcom/guochao/faceshow/userhomepage/view/UserInfoLabelView;

    invoke-virtual {p3}, Lcom/guochao/faceshow/mine/model/HobbyBean;->getTags()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/guochao/faceshow/userhomepage/view/UserInfoLabelView;->a(Lcom/guochao/faceshow/userhomepage/view/UserInfoLabelView;Ljava/lang/String;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method
