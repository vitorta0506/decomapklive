.class public final synthetic Lcom/guochao/faceshow/component/live/fragment/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/AuthorityViewHolder;

.field public final synthetic b:Lcom/guochao/faceshow/aaspring/beans/AuthorityNotifyBean;

.field public final synthetic c:Lcom/guochao/faceshow/component/live/fragment/LiveFloatOfficialFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/AuthorityViewHolder;Lcom/guochao/faceshow/aaspring/beans/AuthorityNotifyBean;Lcom/guochao/faceshow/component/live/fragment/LiveFloatOfficialFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/guochao/faceshow/component/live/fragment/i;->a:Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/AuthorityViewHolder;

    iput-object p2, p0, Lcom/guochao/faceshow/component/live/fragment/i;->b:Lcom/guochao/faceshow/aaspring/beans/AuthorityNotifyBean;

    iput-object p3, p0, Lcom/guochao/faceshow/component/live/fragment/i;->c:Lcom/guochao/faceshow/component/live/fragment/LiveFloatOfficialFragment;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/guochao/faceshow/component/live/fragment/i;->a:Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/AuthorityViewHolder;

    iget-object v1, p0, Lcom/guochao/faceshow/component/live/fragment/i;->b:Lcom/guochao/faceshow/aaspring/beans/AuthorityNotifyBean;

    iget-object v2, p0, Lcom/guochao/faceshow/component/live/fragment/i;->c:Lcom/guochao/faceshow/component/live/fragment/LiveFloatOfficialFragment;

    invoke-static {v0, v1, v2, p1}, Lcom/guochao/faceshow/component/live/fragment/LiveFloatOfficialFragment$initView$2;->a(Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/AuthorityViewHolder;Lcom/guochao/faceshow/aaspring/beans/AuthorityNotifyBean;Lcom/guochao/faceshow/component/live/fragment/LiveFloatOfficialFragment;Landroid/view/View;)V

    return-void
.end method
