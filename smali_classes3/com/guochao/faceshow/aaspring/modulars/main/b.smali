.class public final synthetic Lcom/guochao/faceshow/aaspring/modulars/main/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/guochao/faceshow/aaspring/beans/AuthorityNotifyBean;

.field public final synthetic b:Landroid/widget/TextView;


# direct methods
.method public synthetic constructor <init>(Lcom/guochao/faceshow/aaspring/beans/AuthorityNotifyBean;Landroid/widget/TextView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/main/b;->a:Lcom/guochao/faceshow/aaspring/beans/AuthorityNotifyBean;

    iput-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/main/b;->b:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/main/b;->a:Lcom/guochao/faceshow/aaspring/beans/AuthorityNotifyBean;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/main/b;->b:Landroid/widget/TextView;

    invoke-static {v0, v1, p1}, Lcom/guochao/faceshow/aaspring/modulars/main/SystemNotificationListActivity$initView$1;->a(Lcom/guochao/faceshow/aaspring/beans/AuthorityNotifyBean;Landroid/widget/TextView;Landroid/view/View;)V

    return-void
.end method
