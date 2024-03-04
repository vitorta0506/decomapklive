.class Lcom/guochao/faceshow/mine/view/MyFollowActivity$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/mine/view/MyFollowActivity;->b0(Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;ILcom/guochao/faceshow/bean/FollowBean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/bean/FollowBean;

.field final synthetic b:Lcom/guochao/faceshow/mine/view/MyFollowActivity;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/mine/view/MyFollowActivity;Lcom/guochao/faceshow/bean/FollowBean;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/mine/view/MyFollowActivity$a;->b:Lcom/guochao/faceshow/mine/view/MyFollowActivity;

    iput-object p2, p0, Lcom/guochao/faceshow/mine/view/MyFollowActivity$a;->a:Lcom/guochao/faceshow/bean/FollowBean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lcom/guochao/faceshow/mine/view/MyFollowActivity$a;->b:Lcom/guochao/faceshow/mine/view/MyFollowActivity;

    iget-object v0, p0, Lcom/guochao/faceshow/mine/view/MyFollowActivity$a;->a:Lcom/guochao/faceshow/bean/FollowBean;

    invoke-virtual {v0}, Lcom/guochao/faceshow/bean/FollowBean;->getAccount()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/guochao/faceshow/userhomepage/act/UserHomePageAct;->start(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method
