.class Lcom/guochao/faceshow/userhomepage/view/UserInfoLabelView$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/guochao/faceshow/views/flowlayout/TagFlowLayout$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/userhomepage/view/UserInfoLabelView;->setData(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lcom/guochao/faceshow/userhomepage/view/UserInfoLabelView;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/userhomepage/view/UserInfoLabelView;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/userhomepage/view/UserInfoLabelView$b;->b:Lcom/guochao/faceshow/userhomepage/view/UserInfoLabelView;

    iput-object p2, p0, Lcom/guochao/faceshow/userhomepage/view/UserInfoLabelView$b;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;ILcom/guochao/faceshow/views/flowlayout/FlowLayout;)Z
    .locals 0

    iget-object p1, p0, Lcom/guochao/faceshow/userhomepage/view/UserInfoLabelView$b;->b:Lcom/guochao/faceshow/userhomepage/view/UserInfoLabelView;

    invoke-static {p1}, Lcom/guochao/faceshow/userhomepage/view/UserInfoLabelView;->b(Lcom/guochao/faceshow/userhomepage/view/UserInfoLabelView;)Landroid/content/Context;

    move-result-object p1

    iget-object p3, p0, Lcom/guochao/faceshow/userhomepage/view/UserInfoLabelView$b;->a:Ljava/util/List;

    invoke-interface {p3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/guochao/faceshow/mine/model/HobbyBean;

    invoke-static {p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/personal/LabelActivity;->e0(Landroid/content/Context;Lcom/guochao/faceshow/mine/model/HobbyBean;)V

    const/4 p1, 0x0

    return p1
.end method
