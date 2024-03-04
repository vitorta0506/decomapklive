.class Lcom/guochao/faceshow/aaspring/modulars/user/invalite/InviteUserActivity$g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/user/invalite/InviteUserActivity;->o0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/modulars/user/invalite/InviteUserActivity;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/user/invalite/InviteUserActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/user/invalite/InviteUserActivity$g;->a:Lcom/guochao/faceshow/aaspring/modulars/user/invalite/InviteUserActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/utils/DisableDoubleClickUtils;->canClick(Landroid/view/View;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {}, Lc8/a;->r()Lc8/a;

    move-result-object p1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/user/invalite/InviteUserActivity$g;->a:Lcom/guochao/faceshow/aaspring/modulars/user/invalite/InviteUserActivity;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->getActivity()Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;

    move-result-object v0

    invoke-virtual {p1, v0}, Lc8/a;->y(Landroid/app/Activity;)V

    return-void
.end method
