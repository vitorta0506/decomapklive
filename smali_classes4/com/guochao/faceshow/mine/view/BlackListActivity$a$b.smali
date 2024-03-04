.class Lcom/guochao/faceshow/mine/view/BlackListActivity$a$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/mine/view/BlackListActivity$a;->a(Lcom/guochao/faceshow/utils/AAViewHolder;Lcom/guochao/faceshow/mine/model/PeopleBean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/mine/model/PeopleBean;

.field final synthetic b:Lcom/guochao/faceshow/mine/view/BlackListActivity$a;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/mine/view/BlackListActivity$a;Lcom/guochao/faceshow/mine/model/PeopleBean;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/mine/view/BlackListActivity$a$b;->b:Lcom/guochao/faceshow/mine/view/BlackListActivity$a;

    iput-object p2, p0, Lcom/guochao/faceshow/mine/view/BlackListActivity$a$b;->a:Lcom/guochao/faceshow/mine/model/PeopleBean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lcom/guochao/faceshow/mine/view/BlackListActivity$a$b;->b:Lcom/guochao/faceshow/mine/view/BlackListActivity$a;

    iget-object p1, p1, Lcom/guochao/faceshow/mine/view/BlackListActivity$a;->a:Lcom/guochao/faceshow/mine/view/BlackListActivity;

    iget-object v0, p0, Lcom/guochao/faceshow/mine/view/BlackListActivity$a$b;->a:Lcom/guochao/faceshow/mine/model/PeopleBean;

    iget v0, v0, Lcom/guochao/faceshow/mine/model/PeopleBean;->account:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/guochao/faceshow/userhomepage/act/UserHomePageAct;->start(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method
