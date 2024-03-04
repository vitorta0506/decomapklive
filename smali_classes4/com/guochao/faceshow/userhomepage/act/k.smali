.class public final synthetic Lcom/guochao/faceshow/userhomepage/act/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/guochao/faceshow/userhomepage/act/UserHomePageAct;

.field public final synthetic b:Lcom/guochao/faceshow/aaspring/beans/UserPageBaseData;

.field public final synthetic c:Landroid/view/ViewGroup;

.field public final synthetic d:Landroid/widget/TextView;


# direct methods
.method public synthetic constructor <init>(Lcom/guochao/faceshow/userhomepage/act/UserHomePageAct;Lcom/guochao/faceshow/aaspring/beans/UserPageBaseData;Landroid/view/ViewGroup;Landroid/widget/TextView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/guochao/faceshow/userhomepage/act/k;->a:Lcom/guochao/faceshow/userhomepage/act/UserHomePageAct;

    iput-object p2, p0, Lcom/guochao/faceshow/userhomepage/act/k;->b:Lcom/guochao/faceshow/aaspring/beans/UserPageBaseData;

    iput-object p3, p0, Lcom/guochao/faceshow/userhomepage/act/k;->c:Landroid/view/ViewGroup;

    iput-object p4, p0, Lcom/guochao/faceshow/userhomepage/act/k;->d:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/guochao/faceshow/userhomepage/act/k;->a:Lcom/guochao/faceshow/userhomepage/act/UserHomePageAct;

    iget-object v1, p0, Lcom/guochao/faceshow/userhomepage/act/k;->b:Lcom/guochao/faceshow/aaspring/beans/UserPageBaseData;

    iget-object v2, p0, Lcom/guochao/faceshow/userhomepage/act/k;->c:Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/guochao/faceshow/userhomepage/act/k;->d:Landroid/widget/TextView;

    invoke-static {v0, v1, v2, v3}, Lcom/guochao/faceshow/userhomepage/act/UserHomePageAct;->y0(Lcom/guochao/faceshow/userhomepage/act/UserHomePageAct;Lcom/guochao/faceshow/aaspring/beans/UserPageBaseData;Landroid/view/ViewGroup;Landroid/widget/TextView;)V

    return-void
.end method
