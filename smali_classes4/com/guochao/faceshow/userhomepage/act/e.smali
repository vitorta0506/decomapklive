.class public final synthetic Lcom/guochao/faceshow/userhomepage/act/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/guochao/faceshow/userhomepage/act/UserHomePageAct;

.field public final synthetic b:Landroid/widget/PopupWindow;


# direct methods
.method public synthetic constructor <init>(Lcom/guochao/faceshow/userhomepage/act/UserHomePageAct;Landroid/widget/PopupWindow;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/guochao/faceshow/userhomepage/act/e;->a:Lcom/guochao/faceshow/userhomepage/act/UserHomePageAct;

    iput-object p2, p0, Lcom/guochao/faceshow/userhomepage/act/e;->b:Landroid/widget/PopupWindow;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/guochao/faceshow/userhomepage/act/e;->a:Lcom/guochao/faceshow/userhomepage/act/UserHomePageAct;

    iget-object v1, p0, Lcom/guochao/faceshow/userhomepage/act/e;->b:Landroid/widget/PopupWindow;

    invoke-static {v0, v1, p1}, Lcom/guochao/faceshow/userhomepage/act/UserHomePageAct;->v0(Lcom/guochao/faceshow/userhomepage/act/UserHomePageAct;Landroid/widget/PopupWindow;Landroid/view/View;)V

    return-void
.end method
