.class Lcom/guochao/faceshow/aaspring/modulars/user/invalite/InviteUserActivity$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/user/invalite/InviteUserActivity;->initView()V
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

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/user/invalite/InviteUserActivity$a;->a:Lcom/guochao/faceshow/aaspring/modulars/user/invalite/InviteUserActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/user/invalite/InviteUserActivity$a;->a:Lcom/guochao/faceshow/aaspring/modulars/user/invalite/InviteUserActivity;

    invoke-virtual {p1}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    return-void
.end method
